/*
 * Translator.cpp
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#include <iostream>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/IntrinsicInst.h>
#include "llvm/IR/Constants.h"
// #include "llvm/IR/ConstantsContext.h"
#include "llvm/Support/FileSystem.h"
#include "Translator.h"
#include "Utils.h"

using namespace llvm;
using namespace std;
using namespace cryptoline;
using namespace llvm2cryptoline;

typedef cryptoline::Argument Arg;
typedef cryptoline::Variable Var;

ProgramCounter Translator::evaluate(ProgramCounter pc) {
    BasicBlock::iterator inst = pc.i;

    if (DbgInfoIntrinsic* di = dyn_cast<DbgInfoIntrinsic>(inst)) {
        // if it is debug info, it is omitted directly
        inst++;
        return {pc.b, inst};
    }

    this->result.push_back(Statement::Comment(toString(&(*inst))));

    if (LoadInst* li = dyn_cast<LoadInst>(inst)) {
        // load
        evalLoad(li);
    } else if (StoreInst* si = dyn_cast<StoreInst>(inst)) {
        // store
        evalStore(si);
    } else if (BinaryOperator* bo = dyn_cast<BinaryOperator>(inst)) {
        // binary operators, e.g. add, sub, etc.
        evalBinaryOp(bo);
    } else if (GetElementPtrInst* gepi = dyn_cast<GetElementPtrInst>(inst)) {
        // getelementptr
        evalGetElementPtr(gepi);
    } else if (InsertElementInst* iei = dyn_cast<InsertElementInst>(inst)) {
        // insertelement
        evalInsertElement(iei);
    } else if (ExtractElementInst* eei = dyn_cast<ExtractElementInst>(inst)) {
        // extractelement
        evalExtractElement(eei);
    } else if (ZExtInst* zei = dyn_cast<ZExtInst>(inst)) {
        // zext
        evalZExt(zei);
    } else if (SExtInst* sei = dyn_cast<SExtInst>(inst)) {
        // sext
        evalSExt(sei);
    } else if (TruncInst* ti = dyn_cast<TruncInst>(inst)) {
        // trunc
        evalTrunc(ti);
    } else if (BitCastInst* bci = dyn_cast<BitCastInst>(inst)) {
        // bitcast
        evalBitCast(bci);
    } else if (CallInst* ci = dyn_cast<CallInst>(inst)) {
        // call
        evalCall(ci);
    } else if (ReturnInst* ri = dyn_cast<ReturnInst>(inst)) {
        // return
        // do nothing
    } else {
        errs() << "No translation:" << *inst
               << "(instruction non-supported!)\n";
    }

    inst++;
    return {pc.b, inst};
}

bool Translator::tranlate(ProgramCounter pc, std::string outputName, bool inBlock) {
    std::error_code ec;
    raw_fd_ostream out(outputName + ".cl", ec, sys::fs::OpenFlags::F_None);

    //if (out.is_open()) {
        BasicBlock *entry = pc.b;
        BasicBlock *block = pc.b;
        BasicBlock::iterator inst = pc.i;

        if (inBlock == true) {
            while ((block == entry) && (inst != block->end())) {
                pc = this->evaluate(pc);
                block = pc.b;
                inst = pc.i;
            }
        } else {
            while (inst != block->end()) {
                pc = this->evaluate(pc);
                block = pc.b;
                inst = pc.i;
            }
        }

        // compute the head

        // compute input vars
        VariableOrderedSet inputVars;
        for (auto i = this->undefVars.begin(); i != this->undefVars.end(); i++) {
            inputVars.insert(*i);
        }

        // compute (possible) output vars
        VariableOrderedSet outputVars;
        for (auto i = this->unusedVars.begin(); i != this->unusedVars.end(); i++) {
            outputVars.insert(*i);
        }

        string head = "proc main (";
        if (!inputVars.empty()) {
            auto i = inputVars.begin();
            head += (*i).toDecl();
            for (i++; i != inputVars.end(); i++) {
                head += ", " + (*i).toDecl();
            }
        }

        /*
        if (!outputVars.empty()) {
            auto i = outputVars.begin();
            cout << "output vars: " << (*i).val;
            for (i++; i != outputVars.end(); i++) {
                cout << ", " << (*i).val;
            }
        }
        */

        head += ") =\n";
        head += "{\n";
        if (this->legacy) {
            head += "  bveTrue\n";
            head += "  |\n";
            head += "  bvrTrue\n";
        } else {
            head += "  true\n";
            head += "  &&\n";
            head += "  true\n";
        }
        head += "}\n\n\n";

        // compute the tail
        string tail = "\n\n";
        tail += "{\n";
        if (this->legacy) {
            tail += "  bveTrue\n";
            tail += "  |\n";
            tail += "  bvrTrue\n";
        } else {
            tail += "  true\n";
            tail += "  &&\n";
            tail += "  true\n";
        }
        tail += "}\n";

        out << head << "\n";

        for (auto j = this->result.begin(); j != this->result.end(); j++) {
            out << (*j).toStr() << "\n";
        }

        // output the possible output vars
        if (!outputVars.empty()) {
            string output = "\n\n";
            output += "(* Outputs *)\n";
            out << output << "\n";
            for (auto i = outputVars.begin(); i != outputVars.end(); i++) {
                out << "mov _ "<< (*i).val << "@" << (*i).getType() << ";\n";
            }
        }


        /*
        if (this->legacy) {
            for (auto j = this->result.begin(); j != this->result.end(); j++) {
                out << (*j).toStr_legacy() << "\n";
            }
        } else {
            for (auto j = this->result.begin(); j != this->result.end(); j++) {
                out << (*j).toStr() << "\n";
            }
        }
        */

        out << tail << "\n";
        out.close();
        return true;
    //} else {
        //return false;
    //}
}
/*
std::string Translator::replaceChar(std::string str, char target, char c) {
  for (int i = 0; i < str.length(); i++) {
    if (str[i] == target)
      str[i] = c;
  }
  return str;
}
*/
std::string Translator::getName(llvm::Value* v) {
    if (v->hasName()) {
        if (this->legacy) {
            return Utils::replaceChar(v->getName(), '.', '_');
        } else {
            return "v_" + Utils::replaceChar(v->getName(), '.', '_');
        }
    } else {
        std::string s;
        llvm::raw_string_ostream os(s);
        v->printAsOperand(os, false, NULL);
        return "v" + os.str().substr(1);
    }
}

std::string Translator::toLower(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(), ::tolower);
    return s;
}

unsigned int Translator::sizeOf(Type* ty) {
    if (ty->isIntegerTy(8)) {
        return 1;
    } else if (ty->isIntegerTy(16)) {
        return 2;
    } else if (ty->isIntegerTy(32)) {
        return 4;
    } else if (ty->isIntegerTy(64)) {
        return 8;
    } else if (ty->isIntegerTy(128)) {
        return 16;
    } else if (ty->isVectorTy()) {
        int num = ty->getVectorNumElements();
        Type *eleType = ty->getVectorElementType();
        return num * sizeOf(eleType);
    } else if (ty->isArrayTy()) {
        int num = ty->getArrayNumElements();
        Type *eleType = ty->getArrayElementType();
        return num * sizeOf(eleType);
    } else if (ty->isStructTy()) {
        int num = ty->getStructNumElements();
        unsigned s = 0;
        for (unsigned i = 0; i < num; i++) {
            s += sizeOf(ty->getStructElementType(i));
        }
        return s;
    } else {
        return 0;
    }
}

unsigned int Translator::offsetAt(llvm::Type* ty, unsigned i) {
    unsigned o = 0;
    for (unsigned j = 0; j < i; j++) {
        o += sizeOf(ty->getStructElementType(j));
    }
    return o;
}

bool Translator::isDefined(Variable var) {
    return (this->defVars.count(var) > 0);
}

void Translator::use(Variable var) {
    if (!this->isDefined(var)) {
        this->undefVars.insert(var);
    }
    this->unusedVars.erase(var);
}

void Translator::define(Variable var) {
    this->defVars.insert(var);
    this->unusedVars.insert(var);
}

string Translator::toString(llvm::Instruction* inst) {
    std::string s;
    llvm::raw_string_ostream os(s);
    inst->print(os);
    return os.str();
}

void Translator::evalLoad(LoadInst* li) {
    Statement s;
    Value* ad = li->getPointerOperand();
    Type *type = li->getType();
    unsigned width;

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        Var dst = Var(this->defaultType, width, getName(li));

        // probably, ad is a getelementptr expr
        if (ConstantExpr* gepe = dyn_cast<ConstantExpr>(ad)) {
            if (gepe->isGEPWithNoNotionalOverIndexing()) {
                if (GEPOperator* gepo = dyn_cast<GEPOperator>(gepe)) {
                    if (!evalGEPOperator(gepo)) {
                        errs() << "No translation:" << *li << "\n";
                        return;
                    }
                }
            }
        }

        Var src = this->pointerTable.getSymAddr(ad).toVariable(this->defaultType, width);
        // Var src = this->pointerTable.getSymAddr(ad).toUVar(width);

        s = Statement::Mov(dst, src);

        this->result.push_back(s);

        // compute defined/undefined variables
        this->use(src);
        this->define(dst);

    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        width = eleType->getIntegerBitWidth(); // assume the element type is integer
        Var dst, src;
        for (int i = 0; i < eleNum; i++) {
            // dst = Var::UVar(width, getName(li), i);
            dst = Var(this->defaultType, width, getName(li), i);
            // src = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toUVar(width);
            src = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toVariable(this->defaultType, width);

            s = Statement::Mov(dst, src);
            this->result.push_back(s);

            // compute defined/undefined variables
            this->use(src);
            this->define(dst);
        }
    }

}

void Translator::evalStore(StoreInst* si) {
    Statement s;
    Value* ad = si->getPointerOperand();
    Value* v = si->getValueOperand();
    Type *type = v->getType();
    unsigned width;

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        //Var dst = this->pointerTable.getSymAddr(ad).toUVar(width);
        Var dst = this->pointerTable.getSymAddr(ad).toVariable(this->defaultType, width);
        //Var src = Var::UVar(width, getName(v));
        Var src = Var(this->defaultType, width, getName(v));

        s = Statement::Mov(dst, src);

        this->result.push_back(s);

        // compute defined/undefined variables
        this->use(src);
        this->define(dst);

    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        width = eleType->getIntegerBitWidth();
        Var dst, src;

        for (int i = 0; i < eleNum; i++) {
            //dst = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toUVar(width);
            dst = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toVariable(this->defaultType, width);
            // src = Var::UVar(width, getName(v), i);
            src = Var(this->defaultType, width, getName(v), i);

            s = Statement::Mov(dst, src);
            this->result.push_back(s);

            // compute defined/undefined variables
            this->use(src);
            this->define(dst);
        }
    }

}

void Translator::evalBinaryOpArithmetic(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        //Var dst = Var::UVar(width, getName(bo));
        Var dst = Var(this->defaultType, width, getName(bo));
        Arg src1,src2;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src1 = Arg::SConst(width, c1->getValue().toString(10, true));
            } else {
                src1 = Arg::UConst(width, c1->getValue().toString(10, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t1));
            src1 = v;
            this->use(v);
        }

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            if (this->defaultType == CryptoLineType::sint) {
                src2 = Arg::SConst(width, c2->getValue().toString(10, true));
            } else {
                src2 = Arg::UConst(width, c2->getValue().toString(10, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t2));
            src2 = v;
            this->use(v);
        }

        switch (bo->getOpcode()) {
        case Instruction::BinaryOps::Add:
            if (safety) {
                s = Statement::Add(dst, src1, src2);
                this->result.push_back(s);
            } else {
                Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                discardCount++;
                s = Statement::Adds(dis, dst, src1, src2);
                this->result.push_back(s);

                // heuristic for P434
                if (this->heuristcs) {
                //if (false) {
                if (BinaryOperator* t1c = dyn_cast<BinaryOperator>(t1)) {
                    if (BinaryOperator* t2c = dyn_cast<BinaryOperator>(t2)) {
                        if ((t1c->getOpcode() == Instruction::BinaryOps::Add
                                || t1c->getOpcode() == Instruction::BinaryOps::And
                                || t1c->getOpcode() == Instruction::BinaryOps::LShr)
                            && (t2c->getOpcode() != Instruction::BinaryOps::Add
                               || t2c->getOpcode() != Instruction::BinaryOps::And
                               || t2c->getOpcode() != Instruction::BinaryOps::LShr)) {
                            s = Statement::Comment("Heuristics applied.");
                            this->result.push_back(s);
                            s = Statement::Assert(Predicate::True(),
                                                  Predicate::Eq(Arg::Flag("discard_" + to_string(discardCount-1)),
                                                                Arg::Flag("0@1")));
                            this->result.push_back(s);
                            s = Statement::Assume(Predicate::Eq(Arg::Flag("discard_" + to_string(discardCount-1)),
                                                                Arg::Flag("0")),
                                                  Predicate::True());
                            this->result.push_back(s);
                        }
                    }
                }
                }
            }
            break;
        case Instruction::BinaryOps::Sub:
            if (safety)
                s = Statement::Sub(dst, src1, src2);
            else {
                Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                discardCount++;
                s = Statement::Subb(dis, dst, src1, src2);
            }
            this->result.push_back(s);
            break;
        case Instruction::BinaryOps::Mul:
            if (mulSafety)
                s = Statement::Mul(dst, src1, src2);
            else {
                Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                discardCount++;
                s = Statement::Muls(dis, dst, src1, src2);
            }
            this->result.push_back(s);
            break;
        default:    // which will not happen
            break;
        }

        this->define(dst);

    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        width = eleType->getIntegerBitWidth();

        Var dst;
        Arg src1, src2;
        bool t1isConstant = false;
        bool t2isConstant = false;
        Constant *c1, *c2;
        Var v1, v2;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }
        if ((c2 = llvm::dyn_cast<llvm::Constant>(t2))) {
            t2isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            // dst = Var::UVar(width, getName(bo), i);
            dst = Var(this->defaultType, width, getName(bo), i);

            if (t1isConstant) {
                if (this->defaultType == CryptoLineType::sint) {
                    src1 = Arg::SConst(width,
                                       ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, true));
                } else {
                    src1 = Arg::UConst(width,
                                       ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, false));
                }
            } else {
                v1 = Var(this->defaultType, width, getName(t1), i);
                src1 = v1;
                this->use(v1);
            }

            if (t2isConstant) {
                if (this->defaultType == CryptoLineType::sint) {
                    src2 = Arg::SConst(width,
                                       ((ConstantInt*)(c2->getAggregateElement(i)))->getValue().toString(10, true));
                } else {
                    src2 = Arg::UConst(width,
                                       ((ConstantInt*)(c2->getAggregateElement(i)))->getValue().toString(10, false));
                }
            } else {
                v2 = Var(this->defaultType, width, getName(t2), i);
                src2 = v2;
                this->use(v2);
            }

            switch (bo->getOpcode()) {
            case Instruction::BinaryOps::Add:
                if (safety)
                    s = Statement::Add(dst, src1, src2);
                else {
                    Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                    discardCount++;
                    s = Statement::Adds(dis, dst, src1, src2);
                }
                break;
            case Instruction::BinaryOps::Sub:
                if (safety)
                    s = Statement::Sub(dst, src1, src2);
                else {
                    Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                    discardCount++;
                    s = Statement::Subb(dis, dst, src1, src2);
                }
                break;
            case Instruction::BinaryOps::Mul:
                if (mulSafety)
                    s = Statement::Mul(dst, src1, src2);
                else {
                    Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                    discardCount++;
                    s = Statement::Muls(dis, dst, src1, src2);
                }
                break;
            default:    // which will not happen
                break;
            }
            this->result.push_back(s);
            this->define(dst);
        }
    }

}

void Translator::evalBinaryOpShl(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    // TODO: now assume t1 is not constant, t2 is constant
    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
        unsigned n = c2->getZExtValue();

        if (type->isIntegerTy()) {
            width = type->getIntegerBitWidth();
            // Var dst = Var::UVar(width, getName(bo));
            Var dst = Var(this->defaultType, width, getName(bo));
            // Var src = Var::UVar(width, getName(t1));
            Var src = Var(this->defaultType, width, getName(t1));

            if (safety) {
                s = Statement::Shl(dst, src, Arg::Num(n));
                this->result.push_back(s);
            } else {
                Arg dis = Arg::Flag("discard_" + to_string(discardCount));
                discardCount++;
                s = Statement::Shls(dis, dst, src, Arg::Num(n));
                this->result.push_back(s);

                // heuristic for P434
                if (this->heuristcs) {
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);
                s = Statement::Assert(Predicate::True(),
                                      Predicate::Eq(dst,
                                                    Arg::Flag("tmp_to_be_used * const 64 (2**32)")));
                this->result.push_back(s);
                s = Statement::Assume(Predicate::Eq(dst,
                                                    Arg::Flag("tmp_to_be_used * (2**32)")),
                                      Predicate::True());
                this->result.push_back(s);
                }
            }

            // compute defined/undefined variables
            this->use(src);
            this->define(dst);
        } else if (type->isVectorTy()) {
            errs() << "No translation:" << *bo
                   << "(shl argument error!)\n";
        } else { // which will not happen
            errs() << "No translation:" << *bo
                   << "(shl argument error!)\n";
        }
    } else {
        errs() << "No translation:" << *bo
               << "(shl argument error!)\n";
    }

    /*
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();

    if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
        // let's assume that t1 cannot be a constant!
        errs() << "No translation:" << *bo << "\n";
    } else {
        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {

            unsigned n = c2->getZExtValue();

            if (type->isIntegerTy(128)) {
            // 128-bit shift-left

                if (n >= 128) {
                    errs() << "No translation:" << *bo
                           << "(shl argument error!)\n";
                    return;
                }

                string dstL = getName(bo) + "_L";
                string dstH = getName(bo) + "_H";
                string srcL = getName(t1) + "_L";
                string srcH = getName(t1) + "_H";

                bool rule_shl_0bit = false;
                bool rule_shl_64bit = false;
                if (this->heuristcs_equiv) {
                    if (n == 64) {
                        rule_shl_64bit = true;
                    } else if (n == 0) {
                        rule_shl_0bit = true;
                    }
                }

                if (rule_shl_0bit) {
                    // heuristcs
                    s = Statement::Comment("Heuristics applied.");
                    this->result.push_back(s);

                    s = Statement::Mov(Arg::Var(dstL),
                                       Arg::Var(srcL));
                    this->result.push_back(s);

                    s = Statement::Mov(Arg::Var(dstH),
                                       Arg::Var(srcH));
                    this->result.push_back(s);

                } else if (rule_shl_64bit) {
                    // heuristcs
                    s = Statement::Comment("Heuristics applied.");
                    this->result.push_back(s);

                    s = Statement::Mov(Arg::Var(dstL),
                                       Arg::Const("0"));
                    this->result.push_back(s);

                    s = Statement::Mov(Arg::Var(dstH),
                                       Arg::Var(srcL));
                    this->result.push_back(s);

                } else if (n < 64) {
                    s = Statement::ConcatShl(Arg::Var(dstH),
                                             Arg::Var("tmp"),
                                             Arg::Var(srcH),
                                             Arg::Var(srcL),
                                             Arg::Num(n));
                    this->result.push_back(s);

                    s = Statement::Shl(Arg::Var(dstL),
                                       Arg::Var("tmp"),
                                       Arg::Num(n));
                    this->result.push_back(s);

                } else { // 64 < n < 128
                    s = Statement::Mov(Arg::Var(dstL),
                                       Arg::Const("0"));
                    this->result.push_back(s);

                    s = Statement::Shl(Arg::Var(dstH),
                                       Arg::Var(srcL),
                                       Arg::Num(n - 64));
                    this->result.push_back(s);

                }

                // compute defined/undefined variables
                this->checkDefinedness(srcL);
                this->checkDefinedness(srcH);
                this->defVars.insert(dstL);
                this->defVars.insert(dstH);

            } else if (type->isIntegerTy(64)) {

                if (n >= 64) {
                    errs() << "No translation:" << *bo
                           << "(shl argument error!)\n";
                    return;
                }

                string dst = getName(bo);
                string src = getName(t1);

                bool rule_shl_0bit = false;
                if (this->heuristcs_equiv && n == 0) {
                    rule_shl_0bit = true;
                }

                if (rule_shl_0bit) {
                    // heuristcs
                    s = Statement::Comment("Heuristics applied.");
                    this->result.push_back(s);

                    s = Statement::Mov(Arg::Var(dst),
                                       Arg::Var(src));
                    this->result.push_back(s);

                } else {
                    s = Statement::Shl(Arg::Var(dst),
                                       Arg::Var(src),
                                       Arg::Num(n));
                    this->result.push_back(s);

                }

                // compute defined/undefined variables
                this->checkDefinedness(src);
                this->defVars.insert(dst);
            }
        } else if (type->isVectorTy()) {
            if (Constant* c2 = llvm::dyn_cast<llvm::Constant>(t2)) {
                int eleNum = type->getVectorNumElements();
                Type *eleType = type->getVectorElementType();
                string dst, src;
                unsigned n;

                for (int i = 0; i < eleNum; i++) {
                    dst = getName(bo) + "_" + to_string(i);
                    src = getName(t1) + "_" + to_string(i);
                    n = ((ConstantInt*)(c2->getAggregateElement(i)))->getZExtValue();

                    // Assume that the element type is i64
                    // (otherwise the variables should be divided into xx_H_0, xx_L_0, xx_H_1 etc.)

                    s = Statement::Shl(Arg::Var(dst),
                                       Arg::Var(src),
                                       Arg::Num(n));
                    this->result.push_back(s);

                    this->checkDefinedness(src);
                    this->defVars.insert(dst);
                }
            } else {
                // t1, t2 are both variables, which we cannot handle!
                errs() << "No translation:" << *bo << "\n";
            }
        } else {
            // t1, t2 are both variables, which we cannot handle!
            errs() << "No translation:" << *bo << "\n";
        }
    }
*/
}

void Translator::evalBinaryOpLShr(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
        width = type->getIntegerBitWidth();
        unsigned n = c2->getZExtValue();

        s = Statement::Comment("You may need to modify here");
        this->result.push_back(s);

        // Var dst = Var::UVar(width, getName(bo));
        Var dst = Var(this->defaultType, width, getName(bo));
        Arg src1;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src1 = Arg::SConst(width, "0x" + c1->getValue().toString(16, false));
            } else {
                src1 = Arg::UConst(width, "0x" + c1->getValue().toString(16, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t1));
            src1 = v;
            this->use(v);
        }

        s = Statement::Split(dst,
                             Var(this->defaultType, width, "tmp_to_be_used"),
                             src1,
                             Arg::Num(n));
        this->result.push_back(s);
        this->define(dst);

        // heurisitc
        if (n == 32 && this->lowerPart.count(src1) != 0) {
            s = Statement::Comment("Heuristics applied.");
            this->result.push_back(s);
            s = Statement::Assert(Predicate::True(),
                                  Predicate::Eq(Var(this->defaultType, width, "tmp_to_be_used"),
                                                this->lowerPart[src1]));
            this->result.push_back(s);
            s = Statement::Assume(Predicate::Eq(Var(this->defaultType, width, "tmp_to_be_used"),
                                                this->lowerPart[src1]),
                                  Predicate::True());
            this->result.push_back(s);
            this->lowerPart.erase(src1);
        }

    } else { // the second argument is a variable!
        // the shifted number cannot be a variable
        errs() << "No translation:" << *bo
               << "(non-supported argument!) \n";
    }

    /*
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();

    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {

        unsigned n = c2->getZExtValue();

        if (type->isIntegerTy(128)) {

            if (n >= 128) {
                errs() << "No translation:" << *bo
                       << "(lshr argument error!)\n";
                return;
            }

            string dstL = getName(bo) + "_L";
            string dstH = getName(bo) + "_H";
            string srcL = getName(t1) + "_L";
            string srcH = getName(t1) + "_H";

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            bool rule_lshr_0bit = false;
            bool rule_lshr_64bit = false;
            if (this->heuristcs_equiv) {
                if (n == 64) {
                    rule_lshr_64bit = true;
                } else if (n == 0) {
                    rule_lshr_0bit = true;
                }
            }

            if (rule_lshr_0bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstL),
                                   Arg::Var(srcL));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Var(srcH));
                this->result.push_back(s);

            } else if (rule_lshr_64bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstL),
                                   Arg::Var(srcH));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Const("0"));
                this->result.push_back(s);

            } else if (n < 64) {
                s = Statement::Split(Arg::Var("tmpL_h"),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(srcL),
                                     Arg::Num(n));
                this->result.push_back(s);

                s = Statement::Split(Arg::Var("tmpH_h"),
                                     Arg::Var("tmpH_l"),
                                     Arg::Var(srcH),
                                     Arg::Num(n));
                this->result.push_back(s);

                s = Statement::Shl(Arg::Var("tmp"),
                                   Arg::Var("tmpH_l"),
                                   Arg::Num(64 - n));
                this->result.push_back(s);

                s = Statement::Add(Arg::Var(dstL),
                                   Arg::Var("tmp"),
                                   Arg::Var("tmpL_h"));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Var("tmpH_h"));
                this->result.push_back(s);

            } else { // 64 < n < 128
                s = Statement::Split(Arg::Var(dstL),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(srcH),
                                     Arg::Num(n - 64));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Const("0"));
                this->result.push_back(s);

            }

            // compute defined/undefined variables
            this->checkDefinedness(srcL);
            this->checkDefinedness(srcH);
            this->defVars.insert(dstL);
            this->defVars.insert(dstH);

        } else if (type->isIntegerTy(64)) {

            if (n >= 64) {
                errs() << "No translation:" << *bo
                       << "(lshr argument error!)\n";
                return;
            }

            string dst = getName(bo);
            string src = getName(t1);

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            bool rule_lshr_0bit = false;
            if (this->heuristcs_equiv && n == 0) {
                rule_lshr_0bit = true;
            }

            if (rule_lshr_0bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var(src));
                this->result.push_back(s);

            } else {
                s = Statement::Split(Arg::Var(dst),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(src),
                                     Arg::Num(n));
                this->result.push_back(s);
            }

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    } else {
        // the shifted number cannot be a variable
        errs() << "No translation:" << *bo << "\n";
    }
*/
}

void Translator::evalBinaryOpAShr(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
        width = type->getIntegerBitWidth();
        unsigned n = c2->getZExtValue();

        s = Statement::Comment("You may need to modify here");
        this->result.push_back(s);

        // Var dst = Var::UVar(width, getName(bo));
        Var dst = Var::SVar(width, getName(bo));
        Arg src1;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            src1 = Arg::SConst(width, "0x" + c1->getValue().toString(16, false));
        } else {
            Var v = Var::SVar(width, getName(t1));
            src1 = v;
            this->use(v);
        }

        s = Statement::Split(dst,
                             Var::UVar(width, "tmp_to_be_used"),
                             src1,
                             Arg::Num(n));
        this->result.push_back(s);
        this->define(dst);

    } else { // the second argument is a variable!
        // the shifted number cannot be a variable
        errs() << "No translation:" << *bo
               << "(non-supported argument!) \n";
    }

    /*
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();

    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {

        unsigned n = c2->getZExtValue();

        if (type->isIntegerTy(128)) {

            if (n >= 128) {
                errs() << "No translation:" << *bo
                       << "(lshr argument error!)\n";
                return;
            }

            string dstL = getName(bo) + "_L";
            string dstH = getName(bo) + "_H";
            string srcL = getName(t1) + "_L";
            string srcH = getName(t1) + "_H";

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            bool rule_lshr_0bit = false;
            bool rule_lshr_64bit = false;
            if (this->heuristcs_equiv) {
                if (n == 64) {
                    rule_lshr_64bit = true;
                } else if (n == 0) {
                    rule_lshr_0bit = true;
                }
            }

            if (rule_lshr_0bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstL),
                                   Arg::Var(srcL));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Var(srcH));
                this->result.push_back(s);

            } else if (rule_lshr_64bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstL),
                                   Arg::Var(srcH));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Const("0"));
                this->result.push_back(s);

            } else if (n < 64) {
                s = Statement::Split(Arg::Var("tmpL_h"),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(srcL),
                                     Arg::Num(n));
                this->result.push_back(s);

                s = Statement::Split(Arg::Var("tmpH_h"),
                                     Arg::Var("tmpH_l"),
                                     Arg::Var(srcH),
                                     Arg::Num(n));
                this->result.push_back(s);

                s = Statement::Shl(Arg::Var("tmp"),
                                   Arg::Var("tmpH_l"),
                                   Arg::Num(64 - n));
                this->result.push_back(s);

                s = Statement::Add(Arg::Var(dstL),
                                   Arg::Var("tmp"),
                                   Arg::Var("tmpL_h"));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Var("tmpH_h"));
                this->result.push_back(s);

            } else { // 64 < n < 128
                s = Statement::Split(Arg::Var(dstL),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(srcH),
                                     Arg::Num(n - 64));
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dstH),
                                   Arg::Const("0"));
                this->result.push_back(s);

            }

            // compute defined/undefined variables
            this->checkDefinedness(srcL);
            this->checkDefinedness(srcH);
            this->defVars.insert(dstL);
            this->defVars.insert(dstH);

        } else if (type->isIntegerTy(64)) {

            if (n >= 64) {
                errs() << "No translation:" << *bo
                       << "(lshr argument error!)\n";
                return;
            }

            string dst = getName(bo);
            string src = getName(t1);

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            bool rule_lshr_0bit = false;
            if (this->heuristcs_equiv && n == 0) {
                rule_lshr_0bit = true;
            }

            if (rule_lshr_0bit) {
                // heuristcs
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);

                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var(src));
                this->result.push_back(s);

            } else {
                s = Statement::Split(Arg::Var(dst),
                                     Arg::Var("tmp_to_be_used"),
                                     Arg::Var(src),
                                     Arg::Num(n));
                this->result.push_back(s);
            }

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    } else {
        // the shifted number cannot be a variable
        errs() << "No translation:" << *bo << "\n";
    }
*/
}

void Translator::evalBinaryOpAnd(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    s = Statement::Comment("You may need to modify here");
    this->result.push_back(s);

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        // Var dst = Var::UVar(width, getName(bo));
        Var dst = Var(this->defaultType, width, getName(bo));
        Arg src1,src2;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src1 = Arg::SConst(width, "0x" + c1->getValue().toString(16, false));
            } else {
                src1 = Arg::UConst(width, "0x" + c1->getValue().toString(16, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t1));
            src1 = v;
            this->use(v);
        }

        bool h_low64 = false; // heuristic: get low 64 bits
        bool h_low32 = false; // heuristic for P434: get low 32 bits
        bool h_high = false; // heuristic for P434: clear low 32 bits

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            if (this->defaultType == CryptoLineType::sint) {
                src2 = Arg::SConst(width, "0x" + c2->getValue().toString(16, false));
            } else {
                src2 = Arg::UConst(width, "0x" + c2->getValue().toString(16, false));
            }

            if (width == 128 && c2->getValue().countTrailingOnes() == 64
                    && c2->getValue().countLeadingZeros() == 64) {
                h_low64 = true;
            } else if (width == 64 && c2->getValue().countTrailingOnes() == 32
                    && c2->getValue().countLeadingZeros() == 32) {
                h_low32 = true;
            } else if (width == 64 && c2->getValue().countTrailingZeros() == 32) {
                h_high = true;
            }
        } else {
            // Var v = Var::UVar(width, getName(t2));
            Var v = Var(this->defaultType, width, getName(t2));
            src2 = v;
            this->use(v);
        }

        s = Statement::And(dst, src1, src2);
        this->result.push_back(s);
        this->define(dst);

        // apply heuristic
        if (h_low64) {
            s = Statement::Comment("Heuristics applied.");
            this->result.push_back(s);
            s = Statement::Assert(Predicate::True(),
                                  Predicate::Eq(dst, src1));
            this->result.push_back(s);
            s = Statement::Assume(Predicate::Eq(dst, src1),
                                  Predicate::True());
            this->result.push_back(s);
        } else if (h_low32) {
            this->lowerPart[src1] = dst;
        } else if (h_high && this->lowerPart.count(src1) != 0) {
            s = Statement::Comment("Heuristics applied.");
            this->result.push_back(s);
            s = Statement::Assert(Predicate::True(),
                                  Predicate::Eq(src1,
                                                Arg::Flag(dst.toRangeArg() +
                                                          " + " + this->lowerPart[src1].toAlgArg())));
            this->result.push_back(s);
            s = Statement::Assume(Predicate::Eq(src1,
                                                Arg::Flag(dst.toRangeArg() +
                                                          " + " + this->lowerPart[src1].toAlgArg())),
                                  Predicate::True());
            this->result.push_back(s);
            this->lowerPart.erase(src1);
        }

    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        width = eleType->getIntegerBitWidth();

        Var dst;
        Arg src1, src2;
        bool t1isConstant = false;
        bool t2isConstant = false;
        Constant *c1, *c2;
        Var v1, v2;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }
        if ((c2 = llvm::dyn_cast<llvm::Constant>(t2))) {
            t2isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            // dst = Var::UVar(width, getName(bo), i);
            dst = Var(this->defaultType, width, getName(bo), i);

            if (t1isConstant) {
                if (this->defaultType == CryptoLineType::sint) {
                    src1 = Arg::SConst(width, "0x" +
                                       ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(16, false));
                } else {
                    src1 = Arg::UConst(width, "0x" +
                                       ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(16, false));
                }
            } else {
                // v1 = Var::UVar(width, getName(t1), i);
                v1 = Var(this->defaultType, width, getName(t1), i);
                src1 = v1;
                this->use(v1);
            }

            if (t2isConstant) {
                src2 = Arg::UConst(width, "0x" +
                                   ((ConstantInt*)(c2->getAggregateElement(i)))->getValue().toString(16, false));
            } else {
                v2 = Var::UVar(width, getName(t2), i);
                src2 = v2;
                this->use(v2);
            }

            s = Statement::And(dst, src1, src2);
            this->result.push_back(s);
            this->define(dst);
        }

    } else {
        errs() << "No translation:" << *bo << " (Unknown type!)\n";
    }

    /*
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();

    // Assume that the 1st operand t1 is a variable.
    // otherwise, the translation is trivial.
    if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
        if (type->isIntegerTy(64)) {
            string dst = getName(bo);
            string src = getName(t1);

            // heuristics
            bool rule_and_after_lshr = false;
            if (this->heuristcs_sound) {
                if (c2->getValue().countTrailingOnes()
                    + c2->getValue().countLeadingZeros() == 64) {
                    rule_and_after_lshr = true;
                }
            }

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            if (rule_and_after_lshr) {
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);
            }

            s = Statement::And(Arg::Var(dst),
                               Arg::Var(src),
                               Arg::Const("0x" + c2->getValue().toString(16, false)));
            this->result.push_back(s);

            if (rule_and_after_lshr) {
                s = Statement::Assert(Predicate::True(),
                                      Predicate::Eq(Arg::Var(dst),
                                                    Arg::Var("tmp_to_be_used")));
                this->result.push_back(s);

                s = Statement::Assume(Predicate::Eq(Arg::Var(dst),
                                                    Arg::Var("tmp_to_be_used")),
                                      Predicate::True());
                this->result.push_back(s);
            }

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);

        } else if (type->isIntegerTy(128)) {
            string dstL = getName(bo) + "_L";
            string dstH = getName(bo) + "_H";
            string srcL = getName(t1) + "_L";
            string srcH = getName(t1) + "_H";

            // heuristcs
            bool rule_all_ones = false;
            bool rule_all_zeros = false;
            if (this->heuristcs_equiv) {
                if (c2->getValue().getLoBits(64).countPopulation() == 64) {
                    rule_all_ones = true;
                }
                if (c2->getValue().getHiBits(64).countPopulation() == 0) {
                    rule_all_zeros = true;
                }
            }

            s = Statement::Comment("You may need to modify here");
            this->result.push_back(s);

            if (rule_all_ones || rule_all_zeros) {
                s = Statement::Comment("Heuristics applied.");
                this->result.push_back(s);
            }

            s = Statement::And(Arg::Var(dstL),
                               Arg::Var(srcL),
                               Arg::Const("0x" + c2->getValue().getLoBits(64).toString(16, false)));
            this->result.push_back(s);

            if (rule_all_ones) {
                s = Statement::Assert(Predicate::True(),
                                      Predicate::Eq(Arg::Var(dstL),
                                                    Arg::Var(srcL)));
                this->result.push_back(s);

                s = Statement::Assume(Predicate::Eq(Arg::Var(dstL),
                                                    Arg::Var(srcL)),
                                      Predicate::True());
                this->result.push_back(s);
            }

            s = Statement::And(Arg::Var(dstH),
                               Arg::Var(srcH),
                               Arg::Const("0x" + c2->getValue().getHiBits(64).toString(16, false)));
            this->result.push_back(s);

            if (rule_all_zeros) {
                s = Statement::Assert(Predicate::True(),
                                      Predicate::Eq(Arg::Var(dstH),
                                                    Arg::Const("0")));
                this->result.push_back(s);

                s = Statement::Assume(Predicate::Eq(Arg::Var(dstH),
                                                    Arg::Const("0")),
                                      Predicate::True());
                this->result.push_back(s);
            }

            // compute defined/undefined variables
            this->checkDefinedness(srcL);
            this->checkDefinedness(srcH);
            this->defVars.insert(dstL);
            this->defVars.insert(dstH);
        }
    } else {
        // the mask cannot be a variable
        errs() << "No translation:" << *bo << "\n";
    }
*/
}

void Translator::evalBinaryOpOr(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    s = Statement::Comment("You may need to modify here");
    this->result.push_back(s);

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        // Var dst = Var::UVar(width, getName(bo));
        Var dst = Var(this->defaultType, width, getName(bo));
        Arg src1,src2;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src1 = Arg::SConst(width, "0x" + c1->getValue().toString(16, false));
            } else {
                src1 = Arg::UConst(width, "0x" + c1->getValue().toString(16, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t1));
            src1 = v;
            this->use(v);
        }

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            if (this->defaultType == CryptoLineType::sint) {
                src2 = Arg::SConst(width, "0x" + c2->getValue().toString(16, false));
            } else {
                src2 = Arg::UConst(width, "0x" + c2->getValue().toString(16, false));
            }

        } else {
            // Var v = Var::UVar(width, getName(t2));
            Var v = Var(this->defaultType, width, getName(t2));
            src2 = v;
            this->use(v);
        }

        s = Statement::Or(dst, src1, src2);
        this->result.push_back(s);
        this->define(dst);

        // heuristic for P434
        if (this->heuristcs) {
        if (BinaryOperator* t1c = dyn_cast<BinaryOperator>(t1)) {
            if (BinaryOperator* t2c = dyn_cast<BinaryOperator>(t2)) {
                if (t1c->getOpcode() != Instruction::BinaryOps::Xor
                        && t2c->getOpcode() != Instruction::BinaryOps::Xor) {
                    s = Statement::Comment("Heuristics applied.");
                    this->result.push_back(s);
                    s = Statement::Assert(Predicate::True(),
                                          Predicate::Eq(dst,
                                                        Arg::Flag(src1.toRangeArg() +
                                                                  " + " + src2.toRangeArg())));
                    this->result.push_back(s);
                    s = Statement::Assume(Predicate::Eq(dst,
                                                        Arg::Flag(src1.toAlgArg() +
                                                                  " + " + src2.toAlgArg())),
                                          Predicate::True());
                    this->result.push_back(s);
                }
            }
        }
        }


    } else {
        errs() << "No translation:" << *bo << " (Unknown type!)\n";
    }

}

void Translator::evalBinaryOpXor(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();
    unsigned width;

    s = Statement::Comment("You may need to modify here");
    this->result.push_back(s);

    if (type->isIntegerTy()) {
        width = type->getIntegerBitWidth();
        // Var dst = Var::UVar(width, getName(bo));
        Var dst = Var(this->defaultType, width, getName(bo));
        Arg src1,src2;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src1 = Arg::SConst(width, "0x" + c1->getValue().toString(16, false));
            } else {
                src1 = Arg::UConst(width, "0x" + c1->getValue().toString(16, false));
            }
        } else {
            Var v = Var(this->defaultType, width, getName(t1));
            src1 = v;
            this->use(v);
        }

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            if (this->defaultType == CryptoLineType::sint) {
                src2 = Arg::SConst(width, "0x" + c2->getValue().toString(16, false));
            } else {
                src2 = Arg::UConst(width, "0x" + c2->getValue().toString(16, false));
            }

        } else {
            // Var v = Var::UVar(width, getName(t2));
            Var v = Var(this->defaultType, width, getName(t2));
            src2 = v;
            this->use(v);
        }

        s = Statement::Xor(dst, src1, src2);
        this->result.push_back(s);
        this->define(dst);

    } else {
        errs() << "No translation:" << *bo << " (Unknown type!)\n";
    }

}

void Translator::evalBinaryOp(BinaryOperator* bo) {
    switch (bo->getOpcode()) {
        case Instruction::BinaryOps::Add:
        case Instruction::BinaryOps::Sub:
        case Instruction::BinaryOps::Mul:
            evalBinaryOpArithmetic(bo);
            break;

        case Instruction::BinaryOps::Shl:
            evalBinaryOpShl(bo);
            break;

        case Instruction::BinaryOps::LShr:
            evalBinaryOpLShr(bo);
            break;

        case Instruction::BinaryOps::AShr:
            evalBinaryOpAShr(bo);
            break;

        case Instruction::BinaryOps::And:
            evalBinaryOpAnd(bo);
            break;

        case Instruction::BinaryOps::Or:
            evalBinaryOpOr(bo);
            break;

        case Instruction::BinaryOps::Xor:
            evalBinaryOpXor(bo);
            break;

        // case Instruction::BinaryOps::SDiv:
        //     // TODO
        //     break;

        default:
            // non-supported binary operator
            errs() << "No translation:" << *bo << " (non-supported binary operator)\n";
            //return {pc.b, pc.b->end()};
    }

}

// return true if translation succeeds, false otherwise
bool Translator::evalGEPOperator(GEPOperator* gepo) {
    Type *eTy =	gepo->getSourceElementType();
    auto i = gepo->idx_begin();
    if (ConstantInt* ci = llvm::dyn_cast<llvm::ConstantInt>(*i)) {
        int index = ci->getSExtValue();

        SymbolicAddress baseAddr = this->pointerTable.getSymAddr(gepo->getPointerOperand());
        SymbolicAddress newAddr = baseAddr.add(index * sizeOf(eTy));

        i++;
        while (i != gepo->idx_end()) {
            if (ConstantInt* ci2 = llvm::dyn_cast<llvm::ConstantInt>(*i)) {
                index = ci2->getSExtValue();

                if (eTy->isArrayTy()) {
                    eTy = eTy->getArrayElementType();
                    newAddr = newAddr.add(index * sizeOf(eTy));
                } else if (eTy->isStructTy()) {
                    newAddr = newAddr.add(offsetAt(eTy, index));
                    eTy = eTy->getStructElementType(index);
                } else { // error indexing or does not support
                    // errs() << "No translation:" << *li << "\n";
                    return false;
                }

                i++;
            } else {
                // errs() << "No translation:" << *li << "\n";
                return false;
            }
        }

        this->pointerTable.add(gepo, newAddr);

    } else {
        // errs() << "No translation:" << *li << "\n";
        return false;
    }

    return true;
}

void Translator::evalGetElementPtr(GetElementPtrInst* gepi) {
    if (GEPOperator* gepo = dyn_cast<GEPOperator>(gepi)) {
        if (!evalGEPOperator(gepo))
            errs() << "No translation:" << *gepi << "\n";
    } else {
        errs() << "No translation:" << *gepi << "\n";
    }

    /*
    Type *eTy = gepi->getSourceElementType();
    auto i = gepi->idx_begin();
    if (ConstantInt* ci = llvm::dyn_cast<llvm::ConstantInt>(*i)) {
        int index = ci->getSExtValue();

        SymbolicAddress baseAddr = this->pointerTable.getSymAddr(gepi->getPointerOperand());
        SymbolicAddress newAddr = baseAddr.add(index * sizeOf(eTy));

        i++;
        while (i != gepi->idx_end()) {
            if (ConstantInt* ci2 = llvm::dyn_cast<llvm::ConstantInt>(*i)) {
                index = ci2->getSExtValue();

                if (eTy->isArrayTy()) {
                    eTy = eTy->getArrayElementType();
                    newAddr = newAddr.add(index * sizeOf(eTy));
                } else if (eTy->isStructTy()) {
                    newAddr = newAddr.add(offsetAt(eTy, index));
                    eTy = eTy->getStructElementType(index);
                } else { // error indexing or does not support
                    errs() << "No translation:" << *gepi << "\n";
                    return;
                }
                i++;
            } else {
                errs() << "No translation:" << *gepi << "\n";
                return;
            }
        }

        this->pointerTable.add(gepi, newAddr);

    } else {
        errs() << "No translation:" << *gepi << "\n";
    }
    */
}

void Translator::evalInsertElement(InsertElementInst* iei) {
    Statement s;
    Value* t1 = iei->getOperand(0);
    Value* t2 = iei->getOperand(1);
    Value* t3 = iei->getOperand(2);
    int index = dyn_cast<ConstantInt>(t3)->getSExtValue();
    int eleNum = iei->getType()->getVectorNumElements();
    Type *eleType = t2->getType();
    unsigned width = eleType->getIntegerBitWidth();

    if (UndefValue* uv = dyn_cast<UndefValue>(t1)) {
        Var dst;
        Arg src;
        for (int i = 0; i < eleNum; i++) {
            // dst = Var::UVar(width, getName(iei), i);
            dst = Var(this->defaultType, width, getName(iei), i);
            if (i == index) {
                if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
                    if (this->defaultType == CryptoLineType::sint) {
                        src = Arg::SConst(width, c2->getValue().toString(10, true));
                    } else {
                        src = Arg::UConst(width, c2->getValue().toString(10, false));
                    }
                } else {
                    // Var v = Var::UVar(width, getName(t2));
                    Var v = Var(this->defaultType, width, getName(t2));
                    src = v;
                    this->use(v);
                }
                s = Statement::Mov(dst, src);
            } else {
                src = Var(this->defaultType, width, "undef", i);
                s = Statement::Nondet(src);
                this->result.push_back(s);
                s = Statement::Mov(dst, src);
            }
            this->result.push_back(s);
            this->define(dst);
        }
    } else {
        Var dst;
        Arg src;
        for (int i = 0; i < eleNum; i++) {
            // dst = Var::UVar(width, getName(iei), i);
            dst = Var(this->defaultType, width, getName(iei), i);
            if (i == index) {
                if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
                    if (this->defaultType == CryptoLineType::sint) {
                        src = Arg::SConst(width, c2->getValue().toString(10, true));
                    } else {
                        src = Arg::UConst(width, c2->getValue().toString(10, false));
                    }
                } else {
                    Var v = Var(this->defaultType, width, getName(t2));
                    src = v;
                    this->use(v);
                }
                s = Statement::Mov(dst, src);
            } else {
                Var v = Var(this->defaultType, width, getName(t1), i);
                src = v;
                this->use(v);
                s = Statement::Mov(dst, src);
            }
            this->result.push_back(s);
            this->define(dst);
        }
    }

    /*
    Statement s;
    Value* t1 = iei->getOperand(0);
    Value* t2 = iei->getOperand(1);
    Value* t3 = iei->getOperand(2);
    int index = dyn_cast<ConstantInt>(t3)->getSExtValue();
    int eleNum = iei->getType()->getVectorNumElements();

    if (UndefValue* uv = dyn_cast<UndefValue>(t1)) {
        string dst, src;
        for (int i = 0; i < eleNum; i++) {
            s = Statement::Nondet(Arg::Var("undef_" + to_string(i)));
            this->result.push_back(s);

            dst = getName(iei) + "_" + to_string(i);
            if (i == index) {
                src = getName(t2);

                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var(src));

                this->checkDefinedness(src);
            } else {
                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var("undef_" + to_string(i)));

            }
            this->result.push_back(s);

            this->defVars.insert(dst);
        }
    } else {
        string dst, src;
        for (int i = 0; i < eleNum; i++) {
            dst = getName(iei) + "_" + to_string(i);
            if (i == index) {
                src = getName(t2);

                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var(src));
            } else {
                src = getName(t1) + "_" + to_string(i);

                s = Statement::Mov(Arg::Var(dst),
                                   Arg::Var(src));
            }

            this->result.push_back(s);

            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    }
*/
}

void Translator::evalExtractElement(ExtractElementInst* eei) {
    Statement s;
    Value* t1 = eei->getOperand(0);
    Value* t2 = eei->getOperand(1);
    int index = dyn_cast<ConstantInt>(t2)->getSExtValue();
    //int eleNum = t1->getType()->getVectorNumElements();
    Type *eleType = eei->getType();
    unsigned width = eleType->getIntegerBitWidth();

    // Var dst = Var::UVar(width, getName(eei));
    Var dst = Var(this->defaultType, width, getName(eei));
    // Var src = Var::UVar(width, getName(t1), index);
    Var src = Var(this->defaultType, width, getName(t1), index);
    s = Statement::Mov(dst, src);
    this->result.push_back(s);
    this->use(src);
    this->define(dst);
}

void Translator::evalZExt(ZExtInst* zei) {
    Type *dstType = zei->getDestTy();
    Value* t1 = zei->getOperand(0);

    if (dstType->isIntegerTy()) {
        unsigned srcWidth = t1->getType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getIntegerBitWidth();

        Arg src;
        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            src = Arg::UConst(srcWidth, c1->getValue().toString(10, false));
        } else {
            Var v = Var::UVar(srcWidth, getName(t1));
            src = v;
            this->use(v);
        }

        Var dst = Var::UVar(dstWidth, getName(zei));
        Statement s = Statement::Cast(dst, src);
        this->result.push_back(s);
        this->define(dst);
    } else if (dstType->isVectorTy()) {
        int eleNum = dstType->getVectorNumElements();
        unsigned srcWidth = t1->getType()->getVectorElementType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getVectorElementType()->getIntegerBitWidth();

        Arg src;
        bool t1isConstant = false;
        Constant *c1;
        Var dst, v;
        Statement s;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            dst = Var::UVar(dstWidth, getName(zei), i);

            if (t1isConstant) {
                src = Arg::UConst(srcWidth,
                                  ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, false));
            } else {
                v = Var::UVar(srcWidth, getName(t1), i);
                src = v;
                this->use(v);
            }

            s = Statement::Cast(dst, src);
            this->result.push_back(s);
            this->define(dst);
        }
    } else { // which will not happen
        errs() << "No translation:" << *zei
               << " (Unknown type!)" << "\n";
    }
}

void Translator::evalSExt(SExtInst* sei) {
    Type *dstType = sei->getDestTy();
    Value* t1 = sei->getOperand(0);

    if (dstType->isIntegerTy()) {
        unsigned srcWidth = t1->getType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getIntegerBitWidth();

        Arg src;
        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            src = Arg::SConst(srcWidth, c1->getValue().toString(10, true));
        } else {
            Var v = Var::SVar(srcWidth, getName(t1));
            src = v;
            this->use(v);
        }

        Var dst = Var::SVar(dstWidth, getName(sei));
        Statement s = Statement::Cast(dst, src);
        this->result.push_back(s);
        this->define(dst);
    } else if (dstType->isVectorTy()) {
        int eleNum = dstType->getVectorNumElements();
        unsigned srcWidth = t1->getType()->getVectorElementType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getVectorElementType()->getIntegerBitWidth();

        Arg src;
        bool t1isConstant = false;
        Constant *c1;
        Var dst, v;
        Statement s;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            dst = Var::SVar(dstWidth, getName(sei), i);

            if (t1isConstant) {
                src = Arg::SConst(srcWidth,
                                  ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, true));
            } else {
                v = Var::SVar(srcWidth, getName(t1), i);
                src = v;
                this->use(v);
            }

            s = Statement::Cast(dst, src);
            this->result.push_back(s);
            this->define(dst);
        }
    } else { // which will not happen
        errs() << "No translation:" << *sei
               << " (Unknown type!)" << "\n";
    }
}

void Translator::evalTrunc(TruncInst* ti) {
    // TODO: sometimes need cast, sometimes vpc
    // This implementation converts Trunc in a way like vpc, but keeps the higher part explicit.
    Type *dstType = ti->getDestTy();
    Value* t1 = ti->getOperand(0);

    if (dstType->isIntegerTy()) {
        unsigned srcWidth = t1->getType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getIntegerBitWidth();

        Arg src;
        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            if (this->defaultType == CryptoLineType::sint) {
                src = Arg::SConst(srcWidth, c1->getValue().toString(10, true));
            } else {
                src = Arg::UConst(srcWidth, c1->getValue().toString(10, false));
            }
        } else {
            Var v = Var(this->defaultType, srcWidth, getName(t1));
            src = v;
            this->use(v);
        }

        Var dstTmp = Var::UVar(srcWidth, getName(ti));
        Statement s = Statement::Split(Var(this->defaultType, srcWidth, "tmp_" + getName(t1)),
                                       dstTmp, src, Arg::Num(dstWidth));
        this->result.push_back(s);
        Var dst = Var(this->defaultType, dstWidth, getName(ti));
        s = Statement::Vpc(dst, dstTmp);
        this->result.push_back(s);
        this->define(dst);
    } else if (dstType->isVectorTy()) {
        int eleNum = dstType->getVectorNumElements();
        unsigned srcWidth = t1->getType()->getVectorElementType()->getIntegerBitWidth();
        unsigned dstWidth = dstType->getVectorElementType()->getIntegerBitWidth();

        Arg src;
        bool t1isConstant = false;
        Constant *c1;
        Var dstTmp, dst, v;
        Statement s;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            dstTmp = Var::UVar(srcWidth, getName(ti), i);
            dst = Var(this->defaultType, dstWidth, getName(ti), i);

            if (t1isConstant) {
                if (this->defaultType == CryptoLineType::sint) {
                    src = Arg::SConst(srcWidth,
                                      ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, true));
                } else {
                    src = Arg::UConst(srcWidth,
                                      ((ConstantInt*)(c1->getAggregateElement(i)))->getValue().toString(10, false));
                }
            } else {
                v = Var(this->defaultType, srcWidth, getName(t1), i);
                src = v;
                this->use(v);
            }

            s = Statement::Split(Var(this->defaultType, srcWidth, "tmp_" + getName(t1), i),
                                 dstTmp, src, Arg::Num(dstWidth));
            this->result.push_back(s);
            s = Statement::Vpc(dst, src);
            this->result.push_back(s);
            this->define(dst);
        }
    } else { // which will not happen
        errs() << "No translation:" << *ti
               << " (Unknown type!)" << "\n";
    }

    /*
    Statement s;
    if (ti->getSrcTy()->isIntegerTy(128) && ti->getDestTy()->isIntegerTy(64)) {
        Value* t1 = ti->getOperand(0);
        string dst = getName(ti);
        string src = getName(t1) + "_L";

        s = Statement::Mov(Arg::Var(dst),
                           Arg::Var(src));
        this->result.push_back(s);

        // compute defined/undefined variables
        this->checkDefinedness(src);
        this->defVars.insert(dst);
    } else {
        errs() << "No translation:" << *ti << "\n";
    }
*/
}

void Translator::evalBitCast(BitCastInst* bci) {
    if (bci->getSrcTy()->isPointerTy()) {
        this->pointerTable.add(bci, this->pointerTable.getSymAddr(bci->getOperand(0)));
    } else {
        errs() << "No translation:" << *bci << "\n";
    }
}

void Translator::evalCall(CallInst* ci) {
    // Currently only tail call is converted
    if (ci->isTailCall()) {
        Type *retType = ci->getFunctionType()->getReturnType();
        if (retType->isIntegerTy()) { // only deal with returned integer for now
            Var dst;
            unsigned dstWidth = retType->getIntegerBitWidth();
            if (ci->hasRetAttr(Attribute::AttrKind::SExt)) {
                dst = Var::SVar(dstWidth, getName(ci));
            } else {
                dst = Var::UVar(dstWidth, getName(ci));
            }

            Statement s = Statement::Call(ci->getCalledFunction()->getName());
            s.args.push_back(dst);
            this->define(dst);

            Value* t;
            Var arg;
            for (int i = 0; i < ci->getNumArgOperands(); i++) {
                t = ci->getArgOperand(i);
                arg = Var(this->defaultType, t->getType()->getIntegerBitWidth(), getName(t));
                s.args.push_back(arg);
                this->use(arg);
            }

            this->result.push_back(s);
        } else {
            errs() << "No translation:" << *ci << "\n";
        }

    } else { // Calls other than tail call are ignored.
        errs() << "No translation:" << *ci << "\n";
    }
}
