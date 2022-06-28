/*
 * Translator.cpp
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#include "LegacyTranslator.h"
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/IntrinsicInst.h>
#include "llvm/IR/Constants.h"
#include "llvm/Support/FileSystem.h"

using namespace llvm;
using namespace std;
using namespace legacy;

typedef legacy::Argument Arg;

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
    } else if (ZExtInst* zei = dyn_cast<ZExtInst>(inst)) {
        // zext
        evalZExt(zei);
    } else if (TruncInst* ti = dyn_cast<TruncInst>(inst)) {
        // trunc
        evalTrunc(ti);
    } else if (BitCastInst* bci = dyn_cast<BitCastInst>(inst)) {
        // bitcast
        evalBitCast(bci);
    } else if (ReturnInst* ri = dyn_cast<ReturnInst>(inst)) {

    } else {

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
        string head = "proc main (";
        if (!this->undefVars.empty()) {
            auto i = this->undefVars.begin();
            head += *i;
            for (i++; i != this->undefVars.end(); i++) {
                head += ", " + *i;
            }
        }
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
        if (this->legacy) {
            for (auto j = this->result.begin(); j != this->result.end(); j++) {
                out << (*j).toStr_legacy() << "\n";
            }
        } else {
            for (auto j = this->result.begin(); j != this->result.end(); j++) {
                out << (*j).toStr() << "\n";
            }
        }

        out << tail << "\n";
        out.close();
        return true;
    //} else {
        //return false;
    //}
}

std::string Translator::replaceChar(std::string str, char target, char c) {
  for (int i = 0; i < str.length(); i++) {
    if (str[i] == target)
      str[i] = c;
  }
  return str;
}

std::string Translator::getName(llvm::Value* v) {
    if (v->hasName()) {
        if (this->legacy) {
            return replaceChar(v->getName(), '.', '_');
        } else {
            return "v_" + replaceChar(v->getName(), '.', '_');
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

bool Translator::isDefined(std::string var) {
    if (this->defVars.count(var) == 0) {
        return false;
    } else {
        return true;
    }
}

void Translator::checkDefinedness(std::string var) {
    if (!this->isDefined(var)) {
        this->undefVars.insert(var);
    }
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

    if (type->isIntegerTy()) {
        if (type->isIntegerTy(64)) {
            string dst = getName(li);
            string src = this->pointerTable.getSymAddr(ad).toStr();

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        } else if (type->isIntegerTy(128)) {
            // lower part
            string dst = getName(li) + "_L";
            string src = this->pointerTable.getSymAddr(ad).toStr();

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            this->checkDefinedness(src);
            this->defVars.insert(dst);

            // higher part
            dst = getName(li) + "_H";
            src = this->pointerTable.getSymAddr(ad).add(8).toStr();

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        string dst, src;
        for (int i = 0; i < eleNum; i++) {
            dst = getName(li) + "_" + to_string(i);
            src = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toStr();

            // Assume that the element type is i64
            // (otherwise the variables should be divided into xx_H_0, xx_L_0, xx_H_1 etc.)
            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    }

}

void Translator::evalStore(StoreInst* si) {
    Statement s;
    Value* ad = si->getPointerOperand();
    Value* v = si->getValueOperand();
    Type *type = v->getType();

    if (type->isIntegerTy()) {
        if (type->isIntegerTy(64)) {
            string dst = this->pointerTable.getSymAddr(ad).toStr();
            string src = getName(v);

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        } else if (type->isIntegerTy(128)) {
            // lower part
            string dst = this->pointerTable.getSymAddr(ad).toStr();
            string src = getName(v) + "_L";

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            this->checkDefinedness(src);
            this->defVars.insert(dst);

            // higher part
            dst = this->pointerTable.getSymAddr(ad).add(8).toStr();
            src = getName(v) + "_H";

            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        string dst, src;
        for (int i = 0; i < eleNum; i++) {
            dst = this->pointerTable.getSymAddr(ad).add(i*sizeOf(eleType)).toStr();
            src = getName(v) + "_" + to_string(i);

            // Assume that the element type is i64
            // (otherwise the variables should be divided into xx_H_0, xx_L_0, xx_H_1 etc.)
            s = Statement::Mov(Arg::Var(dst),
                                     Arg::Var(src));
            this->result.push_back(s);

            // compute defined/undefined variables
            this->checkDefinedness(src);
            this->defVars.insert(dst);
        }
    }

}

void Translator::evalBinaryOpArithmetic(BinaryOperator* bo) {
    Statement s;
    Value* t1 = bo->getOperand(0);
    Value* t2 = bo->getOperand(1);
    Type *type = bo->getType();

    if (type->isIntegerTy(128)) {
    // 128-bit addition
        string dstL = getName(bo) + "_L";
        string dstH = getName(bo) + "_H";
        string src1L, src1H, src2L, src2H;
        Arg a1L, a1H, a2L, a2H;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            src1L = c1->getValue().getLoBits(64).toString(10, false);
            src1H = c1->getValue().getHiBits(64).toString(10, false);
            a1L = Arg::Const(src1L);
            a1H = Arg::Const(src1H);
        } else {
            src1L = getName(t1) + "_L";
            src1H = getName(t1) + "_H";
            a1L = Arg::Var(src1L);
            a1H = Arg::Var(src1H);
            this->checkDefinedness(src1L);
            this->checkDefinedness(src1H);
        }

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            src2L = c2->getValue().getLoBits(64).toString(10, false);
            src2H = c2->getValue().getHiBits(64).toString(10, false);
            a2L = Arg::Const(src2L);
            a2H = Arg::Const(src2H);
        } else {
            src2L = getName(t2) + "_L";
            src2H = getName(t2) + "_H";
            a2L = Arg::Var(src2L);
            a2H = Arg::Var(src2H);
            this->checkDefinedness(src2L);
            this->checkDefinedness(src2H);
        }

        switch (bo->getOpcode()) {
        case Instruction::BinaryOps::Add:
            s = Statement::Adds(Arg::Flag("carry"),
                                Arg::Var(dstL),
                                a1L, a2L);
            this->result.push_back(s);
            s = Statement::Adc(Arg::Var(dstH),
                               a1H, a2H,
                               Arg::Flag("carry"));
            this->result.push_back(s);
            break;
        case Instruction::BinaryOps::Sub:
            s = Statement::Subb(Arg::Flag("carry"),
                                Arg::Var(dstL),
                                a1L, a2L);
            this->result.push_back(s);
            s = Statement::Sbb(Arg::Var(dstH),
                               a1H, a2H,
                               Arg::Flag("carry"));
            this->result.push_back(s);
            break;
        case Instruction::BinaryOps::Mul:
            s = Statement::Mulf(Arg::Var("tmpLL_H"),
                                Arg::Var("tmpLL_L"),
                                a1L, a2L);
            this->result.push_back(s);
            s = Statement::Mul(Arg::Var("tmpHL_L"),
                               a1H, a2L);
            this->result.push_back(s);
            s = Statement::Mul(Arg::Var("tmpLH_L"),
                               a1L, a2H);
            this->result.push_back(s);
            s = Statement::Mov(Arg::Var(dstL),
                               Arg::Var("tmpLL_L"));
            this->result.push_back(s);
            s = Statement::Add(Arg::Var("tmp"),
                               Arg::Var("tmpHL_L"),
                               Arg::Var("tmpLH_L"));
            this->result.push_back(s);
            s = Statement::Add(Arg::Var(dstH),
                               Arg::Var("tmp"),
                               Arg::Var("tmpLL_H"));
            this->result.push_back(s);
            break;
        default:   // which will not happen
            break;
        }

        this->defVars.insert(dstL);
        this->defVars.insert(dstH);

    } else if (type->isIntegerTy(64)) {
        string dst = getName(bo);
        Arg a1, a2;

        if (ConstantInt* c1 = llvm::dyn_cast<llvm::ConstantInt>(t1)) {
            a1 = Arg::Const(to_string(c1->getSExtValue()));
        } else {
            string src1 = getName(t1);
            a1 = Arg::Var(src1);
            this->checkDefinedness(src1);
        }

        if (ConstantInt* c2 = llvm::dyn_cast<llvm::ConstantInt>(t2)) {
            a2 = Arg::Const(to_string(c2->getSExtValue()));
        } else {
            string src2 = getName(t2);
            a2 = Arg::Var(src2);
            this->checkDefinedness(src2);
        }

        switch (bo->getOpcode()) {
        case Instruction::BinaryOps::Add:
            s = Statement::Add(Arg::Var(dst),
                                     a1, a2);
            break;
        case Instruction::BinaryOps::Sub:
            s = Statement::Sub(Arg::Var(dst),
                                     a1, a2);
            break;
        case Instruction::BinaryOps::Mul:
            s = Statement::Mul(Arg::Var(dst),
                               a1, a2);
            break;
        default:    // which will not happen
            break;
        }
        this->result.push_back(s);

        this->defVars.insert(dst);

    } else if (type->isVectorTy()) {
        int eleNum = type->getVectorNumElements();
        Type *eleType = type->getVectorElementType();
        string dst, src1, src2;
        bool t1isConstant = false;
        bool t2isConstant = false;
        Constant *c1, *c2;
        Arg a1, a2;

        if ((c1 = llvm::dyn_cast<llvm::Constant>(t1))) {
            t1isConstant = true;
        }
        if ((c2 = llvm::dyn_cast<llvm::Constant>(t2))) {
            t2isConstant = true;
        }

        for (int i = 0; i < eleNum; i++) {
            dst = getName(bo) + "_" + to_string(i);

            // Assume that the element type is i64
            // (otherwise the variables should be divided into xx_H_0, xx_L_0, xx_H_1 etc.)

            if (t1isConstant) {
                a1 = Arg::Const(to_string(((ConstantInt*)(c1->getAggregateElement(i)))->getSExtValue()));
            } else {
                src1 = getName(t1) + "_" + to_string(i);
                a1 = Arg::Var(src1);
                this->checkDefinedness(src1);
            }

            if (t2isConstant) {
                a2 = Arg::Const(to_string(((ConstantInt*)(c2->getAggregateElement(i)))->getSExtValue()));
            } else {
                src2 = getName(t2) + "_" + to_string(i);
                a2 = Arg::Var(src2);
                this->checkDefinedness(src2);
            }

            switch (bo->getOpcode()) {
            case Instruction::BinaryOps::Add:
                s = Statement::Add(Arg::Var(dst),
                                         a1, a2);
                break;
            case Instruction::BinaryOps::Sub:
                s = Statement::Sub(Arg::Var(dst),
                                         a1, a2);
                break;
            case Instruction::BinaryOps::Mul:
                s = Statement::Mul(Arg::Var(dst),
                                   a1, a2);
                break;
            default:    // which will not happen
                break;
            }
            this->result.push_back(s);

            this->defVars.insert(dst);
        }
    }
}

void Translator::evalBinaryOpShl(BinaryOperator* bo) {
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

}

void Translator::evalBinaryOpLShr(BinaryOperator* bo) {
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

}

void Translator::evalBinaryOpAnd(BinaryOperator* bo) {
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

        case Instruction::BinaryOps::And:
            evalBinaryOpAnd(bo);
            break;

        case Instruction::BinaryOps::SDiv:
            // TODO
            break;

        case Instruction::BinaryOps::Xor:
            // TODO
            break;

        default:
            // non-supported binary operator
            errs() << "No translation:" << *bo << " (non-supported binary operator)\n";
            //return {pc.b, pc.b->end()};
    }

}

void Translator::evalGetElementPtr(GetElementPtrInst* gepi) {
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

        /*
        if (eTy->isArrayTy()) {
            eTy = eTy->getArrayElementType();
            i++;
            if (ConstantInt* ci2 = llvm::dyn_cast<llvm::ConstantInt>(*i)) {
                index = ci2->getSExtValue();
                newAddr = newAddr.add(index * sizeOf(eTy));
                this->pointerTable.add(gepi, newAddr);
            } else {
                errs() << "No translation:" << *gepi << "\n";
            }
        } else if (eTy->isStructTy()) {
            errs() << sizeOf(eTy) << "\n";
        } else {
            this->pointerTable.add(gepi, newAddr);
        }
        */

    } else {
        errs() << "No translation:" << *gepi << "\n";
    }

}

void Translator::evalInsertElement(InsertElementInst* iei) {
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

}

void Translator::evalZExt(ZExtInst* zei) {
    Statement s;
    if (zei->getSrcTy()->isIntegerTy(64) && zei->getDestTy()->isIntegerTy(128)) {
        Value* t1 = zei->getOperand(0);
        string dstL = getName(zei) + "_L";
        string dstH = getName(zei) + "_H";
        string src = getName(t1);

        s = Statement::Mov(Arg::Var(dstL),
                           Arg::Var(src));
        this->result.push_back(s);

        s = Statement::Mov(Arg::Var(dstH),
                           Arg::Const("0"));
        this->result.push_back(s);

        // compute defined/undefined variables
        this->checkDefinedness(src);
        this->defVars.insert(dstL);
        this->defVars.insert(dstH);

    } else {
        errs() << "No translation:" << *zei << "\n";
    }

}

void Translator::evalTrunc(TruncInst* ti) {
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

}

void Translator::evalBitCast(BitCastInst* bci) {
    if (bci->getSrcTy()->isPointerTy()) {
        this->pointerTable.add(bci, this->pointerTable.getSymAddr(bci->getOperand(0)));
    } else {
        errs() << "No translation:" << *bci << "\n";
    }

}
