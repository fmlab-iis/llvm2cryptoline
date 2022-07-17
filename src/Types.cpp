/*
 * Types.cpp
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#include <sstream>

#include "Types.h"
#include "Utils.h"

using namespace cryptoline;

std::string toString(CryptoLineType t) {
    switch (t) {
    case CryptoLineType::uint:
        return "uint";
    case CryptoLineType::sint:
        return "sint";
    default:
        return "";
    }
}

SymbolicAddress::SymbolicAddress() {
    // this should never be used
    this->sym = -1;
    this->offset = 0;
    this->name = "";
}

SymbolicAddress::SymbolicAddress(int s, int o, std::string n) {
    this->sym = s;
    this->offset = o;
    this->name = n;
}

SymbolicAddress SymbolicAddress::add(int o) {
    return SymbolicAddress(this->sym, this->offset + o, this->name);
}

/*
std::string SymbolicAddress::toStr() {
    std::ostringstream s;
    s << "L" << this->sym << "_";
    if (this->offset >= 0) {
        s << this->offset;
    } else {
        s << "m" << (-1) * this->offset;
    }
    return s.str();
}
*/

Variable SymbolicAddress::toVariable(CryptoLineType t, unsigned w) {
    if (this->name == "") {
        return Variable(t, w, "mem" + std::to_string(this->sym), this->offset);
    } else {
        return Variable(t, w, this->name, this->offset);
    }

}

Variable SymbolicAddress::toUVar(unsigned w) {
    return this->toVariable(CryptoLineType::uint, w);
    //return Variable::UVar(w, "mem" + std::to_string(this->sym), this->offset);
}

SymbolicAddress PointerTable::getSymAddr(llvm::Value* v) {
    if (this->table.count(v) == 0) {
        if (v->hasName()) {
            this->table[v] = SymbolicAddress(this->symNum, 0,
                                             Utils::replaceChar(v->getName(), '.', '_'));
        } else {
            this->table[v] = SymbolicAddress(this->symNum);
        }
        this->symNum++;
        return this->table[v];
    } else {
        return this->table[v];
    }
}

void PointerTable::add(llvm::Value* v, SymbolicAddress s) {
    this->table[v] = s;
}

Argument::Argument() {
}

Argument::Argument(CryptoLineOps opcode, CryptoLineType t, unsigned w, std::string value){
    this->op = opcode;
    this->typ = t;
    this->width = w;
    this->val = value;
}

Argument Argument::UConst(unsigned w, std::string val) {
    return Argument(CryptoLineOps::Const, CryptoLineType::uint, w, val);
}

Argument Argument::SConst(unsigned w, std::string val) {
    return Argument(CryptoLineOps::Const, CryptoLineType::sint, w, val);
}

Argument Argument::Var(CryptoLineType t, unsigned w, std::string val) {
    return Argument(CryptoLineOps::Var, t, w, val);
}

Argument Argument::UVar(unsigned w, std::string val) {
    return Argument(CryptoLineOps::Var, CryptoLineType::uint, w, val);
}

Argument Argument::SVar(unsigned w, std::string val) {
    return Argument(CryptoLineOps::Var, CryptoLineType::sint, w, val);
}

Argument Argument::Flag(std::string val) {
    return Argument(CryptoLineOps::Flag, CryptoLineType::uint, 1, val);
}

Argument Argument::Num(unsigned val) {
    return Argument(CryptoLineOps::Num, CryptoLineType::uint, 0, std::to_string(val));
}

std::map<CryptoLineType, std::string> Argument::typeName = {
        {CryptoLineType::uint, "uint"},
        {CryptoLineType::sint, "sint"}
};

std::string Argument::getType() const {
    return Argument::typeName[this->typ] + std::to_string(this->width);
}

std::string Argument::toDst() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
        s = this->val;
        break;
    case CryptoLineOps::Const:
    case CryptoLineOps::Num:
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toSrc() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
    case CryptoLineOps::Num:
        s = this->val;
        break;
    case CryptoLineOps::Const:
        s = "(" + this->val + ")@" + this->getType();
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toAlgArg() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const: // TODO: check the const format
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
    case CryptoLineOps::Num:
        s = this->val;
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toRangeArg() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:  // TODO: check the const format
        //s = "(const 64 " + this->val + ")";
        //break;
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
    case CryptoLineOps::Num:
        s = this->val;
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toTypedStr() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Num:
        s = this->val;
        break;
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
        s = this->val + "@" + this->getType();
        break;
    case CryptoLineOps::Const:
        s = "(" + this->val + ")@" + this->getType();
        break;
    default:
        s = "NULL";
    }
    return s;
}

/*
std::string Argument::toDst_legacy() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
        s = this->val;
        break;
    case CryptoLineOps::Const:  // Consts cannot be dsts
    case CryptoLineOps::Num:    // Nums cannot be dsts
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toSrc_legacy() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
        s = "(bvConst " + this->val + ")";
        break;
    case CryptoLineOps::Var:
        s = "(bvVar " + this->val + ")";
        break;
    case CryptoLineOps::Flag:
    case CryptoLineOps::Num:
        s = this->val;
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toAlgArg_legacy() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
        s = "(bvconst " + this->val + ")";
        break;
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
        s = "(bvvar " + this->val + ")";
        break;
    case CryptoLineOps::Num:
    default:
        s = "NULL";
    }
    return s;
}

std::string Argument::toRangeArg_legacy() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
        s = "(bvconst 64 " + this->val + ")";
        break;
    case CryptoLineOps::Var:
    case CryptoLineOps::Flag:
        s = "(bvvar " + this->val + ")";
        break;
    case CryptoLineOps::Num:
    default:
        s = "NULL";
    }
    return s;
}
*/

Variable::Variable() {
    this->op = CryptoLineOps::Var;
}

Variable::Variable(CryptoLineType t, unsigned w, std::string name) {
    this->op = CryptoLineOps::Var;
    this->typ = t;
    this->width = w;
    this->hasIndex = false;
    this->name = name;
    this->index = 0;
    this->val = name;
}

Variable::Variable(CryptoLineType t, unsigned w, std::string name, int index) {
    this->op = CryptoLineOps::Var;
    this->typ = t;
    this->width = w;
    this->hasIndex = true;
    this->name = name;
    this->index = index;
    if (index >= 0) {
        this->val = name + "_" + std::to_string(index);
    } else
        this->val = name + "_m" + std::to_string((-1) * index);
}

Variable Variable::UVar(unsigned w, std::string name) {
    return Variable(CryptoLineType::uint, w, name);
}

Variable Variable::SVar(unsigned w, std::string name) {
    return Variable(CryptoLineType::sint, w, name);
}

Variable Variable::UVar(unsigned w, std::string name, int index) {
    return Variable(CryptoLineType::uint, w, name, index);
}

Variable Variable::SVar(unsigned w, std::string name, int index) {
    return Variable(CryptoLineType::sint, w, name, index);
}

std::string Variable::toDecl() const {
    return this->getType() + " " + this->val;
}

Predicate Predicate::True() {
    Predicate p;
    p.op = CryptoLineOps::True;
    return p;
}

Predicate Predicate::Eq(Argument left, Argument right) {
    Predicate p;
    p.op = CryptoLineOps::Eq;
    p.args.push_back(left);
    p.args.push_back(right);
    return p;
}

std::string Predicate::toAlgPred() {
    std::string s;
    switch(this->op) {
    case CryptoLineOps::True:
        s = "true";
        break;
    case CryptoLineOps::Eq:
        s = "eq " + this->args[0].toAlgArg()  + " " + this->args[1].toAlgArg();
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Predicate::toRangePred() {
    std::string s;
    switch(this->op) {
    case CryptoLineOps::True:
        s = "true";
        break;
    case CryptoLineOps::Eq:
        s = "eq " + this->args[0].toRangeArg()  + " " + this->args[1].toRangeArg();
        break;
    default:
        s = "NULL";
    }
    return s;
}

/*
std::string Predicate::toAlgPred_legacy() {
    std::string s;
    switch(this->op) {
    case CryptoLineOps::True:
        s = "bveTrue";
        break;
    case CryptoLineOps::Eq:
        s = "bveEq " + this->args[0].toAlgArg_legacy()  + " "
            + this->args[1].toAlgArg_legacy();
        break;
    default:
        s = "NULL";
    }
    return s;
}

std::string Predicate::toRangePred_legacy() {
    std::string s;
    switch(this->op) {
    case CryptoLineOps::True:
        s = "bvrTrue";
        break;
    case CryptoLineOps::Eq:
        s = "bvrEq " + this->args[0].toRangeArg_legacy()
            + " " + this->args[1].toRangeArg_legacy();
        break;
    default:
        s = "NULL";
    }
    return s;
}
*/

std::map<CryptoLineOps, std::string> Statement::name = {
        {CryptoLineOps::Mov, "mov"},
        {CryptoLineOps::Add, "add"},
        {CryptoLineOps::Adds, "adds"},
        {CryptoLineOps::Adc, "adc"},
        {CryptoLineOps::Adcs, "adcs"},
        {CryptoLineOps::Sub, "sub"},
        {CryptoLineOps::Subb, "subb"},
        {CryptoLineOps::Sbb, "sbb"},
        {CryptoLineOps::Sbbs, "sbbs"},
        {CryptoLineOps::Mul, "mul"},
        {CryptoLineOps::Muls, "muls"},
        {CryptoLineOps::Mulf, "mull"},
        {CryptoLineOps::ConcatShl, "cshl"},
        {CryptoLineOps::Shl, "shl"},
        {CryptoLineOps::Shls, "shls"},
        {CryptoLineOps::Split, "split"},
        {CryptoLineOps::And, "and"},
        {CryptoLineOps::Or, "or"},
        {CryptoLineOps::Xor, "xor"},
        {CryptoLineOps::Nondet, "nondet"},
        {CryptoLineOps::Cast, "cast"},
        {CryptoLineOps::Vpc, "vpc"},
        {CryptoLineOps::Call, "call"},
        {CryptoLineOps::Assume, "assume"},
        {CryptoLineOps::Assert, "assert"}
};

/*
std::map<CryptoLineOps, std::string> Statement::name_legacy = {
        {CryptoLineOps::Mov, "bvAssign"},
        {CryptoLineOps::Add, "bvAdd"},
        {CryptoLineOps::Adds, "bvAddC"},
        {CryptoLineOps::Adc, "bvAdc"},
        {CryptoLineOps::Adcs, "bvAdcC"},
        {CryptoLineOps::Sub, "bvSub"},
        {CryptoLineOps::Subb, "bvSubC"},
        {CryptoLineOps::Sbb, "bvSbb"},
        {CryptoLineOps::Sbbs, "bvSbbC"},
        {CryptoLineOps::Mul, "bvMul"},
        {CryptoLineOps::Mulf, "bvMulf"},
        {CryptoLineOps::ConcatShl, "bvConcatShl"},
        {CryptoLineOps::Shl, "bvShl"},
        {CryptoLineOps::Split, "bvSplit"},
        {CryptoLineOps::And, "bvAndb"},
        {CryptoLineOps::Nondet, "bvNondet"},
        {CryptoLineOps::Assume, "bvAssume"},
        {CryptoLineOps::Assert, "bvAssert"}
};
*/

Statement Statement::Comment(std::string t){
    Statement s;
    s.op = CryptoLineOps::Comment;
    s.text = t;
    return s;
}

Statement Statement::Mov(Argument dst, Argument src) {
    Statement s;
    s.op = CryptoLineOps::Mov;
    s.args.push_back(dst);
    s.args.push_back(src);
    return s;
}

Statement Statement::Add(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Add;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Adds(Argument carry, Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Adds;
    s.args.push_back(carry);
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Adc(Argument dst, Argument src1, Argument src2, Argument c) {
    Statement s;
    s.op = CryptoLineOps::Adc;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    s.args.push_back(c);
    return s;
}

Statement Statement::Adcs(Argument carry, Argument dst, Argument src1, Argument src2, Argument c) {
    Statement s;
    s.op = CryptoLineOps::Adcs;
    s.args.push_back(carry);
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    s.args.push_back(c);
    return s;
}

Statement Statement::Sub(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Sub;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Subb(Argument borrow, Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Subb;
    s.args.push_back(borrow);
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Sbb(Argument dst, Argument src1, Argument src2, Argument b) {
    Statement s;
    s.op = CryptoLineOps::Sbb;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    s.args.push_back(b);
    return s;
}

Statement Statement::Sbbs(Argument borrow, Argument dst, Argument src1, Argument src2, Argument b) {
    Statement s;
    s.op = CryptoLineOps::Sbbs;
    s.args.push_back(borrow);
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    s.args.push_back(b);
    return s;
}

Statement Statement::Mul(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Mul;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Muls(Argument flag, Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Muls;
    s.args.push_back(flag);
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Mulf(Argument dstH, Argument dstL, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Mulf;
    s.args.push_back(dstH);
    s.args.push_back(dstL);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::ConcatShl(Argument dstH, Argument dstL, Argument src1, Argument src2, Argument n) {
    Statement s;
    s.op = CryptoLineOps::ConcatShl;
    s.args.push_back(dstH);
    s.args.push_back(dstL);
    s.args.push_back(src1);
    s.args.push_back(src2);
    s.args.push_back(n);
    return s;
}

Statement Statement::Shl(Argument dst, Argument src, Argument n) {
    Statement s;
    s.op = CryptoLineOps::Shl;
    s.args.push_back(dst);
    s.args.push_back(src);
    s.args.push_back(n);
    return s;
}

Statement Statement::Shls(Argument flag, Argument dst, Argument src, Argument n) {
    Statement s;
    s.op = CryptoLineOps::Shls;
    s.args.push_back(flag);
    s.args.push_back(dst);
    s.args.push_back(src);
    s.args.push_back(n);
    return s;
}

Statement Statement::Split(Argument dstH, Argument dstL, Argument src, Argument n) {
    Statement s;
    s.op = CryptoLineOps::Split;
    s.args.push_back(dstH);
    s.args.push_back(dstL);
    s.args.push_back(src);
    s.args.push_back(n);
    return s;
}

Statement Statement::And(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::And;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Or(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Or;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Xor(Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Xor;
    s.args.push_back(dst);
    s.args.push_back(src1);
    s.args.push_back(src2);
    return s;
}

Statement Statement::Nondet(Argument dst) {
    Statement s;
    s.op = CryptoLineOps::Nondet;
    s.args.push_back(dst);
    return s;
}

Statement Statement::Cast(Argument dst, Argument src) {
    Statement s;
    s.op = CryptoLineOps::Cast;
    s.args.push_back(dst);
    s.args.push_back(src);
    return s;
}

Statement Statement::Vpc(Argument dst, Argument src) {
    Statement s;
    s.op = CryptoLineOps::Vpc;
    s.args.push_back(dst);
    s.args.push_back(src);
    return s;
}

Statement Statement::Call(std::string fn) {
    Statement s;
    s.op = CryptoLineOps::Call;
    s.text = fn;
    return s;
}

Statement Statement::Assume(Predicate alg, Predicate range) {
    Statement s;
    s.op = CryptoLineOps::Assume;
    s.preds.push_back(alg);
    s.preds.push_back(range);
    return s;
}

Statement Statement::Assert(Predicate alg, Predicate range) {
    Statement s;
    s.op = CryptoLineOps::Assert;
    s.preds.push_back(alg);
    s.preds.push_back(range);
    return s;
}

std::string Statement::toStr() {
    std::string s;
    switch(this->op) {
    // comment
    case CryptoLineOps::Comment:
        s = "(* " + this->text + " *)";
        break;
    // instructions with 1 dst
    case CryptoLineOps::Mov:
    case CryptoLineOps::Add:
    case CryptoLineOps::Adc:
    case CryptoLineOps::Sub:
    case CryptoLineOps::Sbb:
    case CryptoLineOps::Mul:
    case CryptoLineOps::Shl:
        s = Statement::name[this->op] + " " + this->args[0].toDst();
        for (int i = 1; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc();
        }
        s += ";";
        break;
    // instructions with 2 dsts
    case CryptoLineOps::Adds:
    case CryptoLineOps::Adcs:
    case CryptoLineOps::Subb:
    case CryptoLineOps::Sbbs:
    case CryptoLineOps::Muls:
    case CryptoLineOps::Mulf:
    case CryptoLineOps::Shls:
    case CryptoLineOps::ConcatShl:
    case CryptoLineOps::Split:
        s = Statement::name[this->op] + " " + this->args[0].toDst()
            + " " + this->args[1].toDst();
        for (int i = 2; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc();
        }
        s += ";";
        break;
    // and
    case CryptoLineOps::And:
        s = Statement::name[this->op] + " " + this->args[0].getType() + " "
            + this->args[0].toDst()
            + " " + this->args[1].toSrc() + " " + this->args[2].toSrc() + ";";
        break;
    // or
    case CryptoLineOps::Or:
        s = Statement::name[this->op] + " " + this->args[0].getType() + " "
            + this->args[0].toDst()
            + " " + this->args[1].toSrc() + " " + this->args[2].toSrc() + ";";
        break;
    // xor
    case CryptoLineOps::Xor:
        s = Statement::name[this->op] + " " + this->args[0].getType() + " "
            + this->args[0].toDst()
            + " " + this->args[1].toSrc() + " " + this->args[2].toSrc() + ";";
        break;
    // nondet
    case CryptoLineOps::Nondet:
        s = Statement::name[this->op] + " " + this->args[0].toTypedStr() + ";";
        break;
    // cast && vpc
    case CryptoLineOps::Cast:
    case CryptoLineOps::Vpc:
        s = Statement::name[this->op] + " " + this->args[0].toTypedStr()
            + " " + this->args[1].toTypedStr() + ";";
        break;
    // call
    case CryptoLineOps::Call:
        s = Statement::name[this->op] + " " + this->text + "(";
        for (int i = 1; i < this->args.size(); i++) {
            s += this->args[i].toSrc() + ", ";
        }
        s += this->args[0].toSrc() + ");";
        break;
    // assume/assert
    case CryptoLineOps::Assume:
    case CryptoLineOps::Assert:
        s = Statement::name[this->op] + " " + this->preds[0].toAlgPred()
            + " && " + this->preds[1].toRangePred() + ";";
        break;
    default:
        s = "NULL";
    }
    return s;
}

/*
std::string Statement::toStr_legacy() {
    std::string s;
    switch(this->op) {
    // comment
    case CryptoLineOps::Comment:
        s = "(* " + this->text + " *)";
        break;
    // instructions with 1 dst
    case CryptoLineOps::Mov:
    case CryptoLineOps::Add:
    case CryptoLineOps::Adc:
    case CryptoLineOps::Sub:
    case CryptoLineOps::Sbb:
    case CryptoLineOps::Mul:
    case CryptoLineOps::Shl:
    case CryptoLineOps::And:
    case CryptoLineOps::Nondet:
        s = Statement::name_legacy[this->op] + " " + this->args[0].toDst_legacy();
        for (int i = 1; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc_legacy();
        }
        s += ";";
        break;
    // instructions with 2 dsts
    case CryptoLineOps::Adds:
    case CryptoLineOps::Adcs:
    case CryptoLineOps::Subb:
    case CryptoLineOps::Sbbs:
    case CryptoLineOps::Mulf:
    case CryptoLineOps::ConcatShl:
    case CryptoLineOps::Split:
        s = Statement::name_legacy[this->op] + " " + this->args[0].toDst_legacy()
            + " " + this->args[1].toDst_legacy();
        for (int i = 2; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc_legacy();
        }
        s += ";";
        break;
    // assume/assert
    case CryptoLineOps::Assume:
    case CryptoLineOps::Assert:
        s = Statement::name_legacy[this->op] + " " + this->preds[0].toAlgPred_legacy()
            + " | " + this->preds[1].toRangePred_legacy() + ";";
        break;
    default:
        s = "NULL";
    }
    return s;
}
*/
