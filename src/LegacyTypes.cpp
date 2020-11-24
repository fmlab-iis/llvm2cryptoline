/*
 * Types.cpp
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#include "LegacyTypes.h"
//#include "llvm/Support/raw_ostream.h"
#include <sstream>

using namespace legacy;

SymbolicAddress::SymbolicAddress() {
    // this should never be used
    this->sym = -1;
    this->offset = 0;
}

SymbolicAddress::SymbolicAddress(int s, int o) {
    this->sym = s;
    this->offset = o;
}

SymbolicAddress SymbolicAddress::add(int o) {
    return SymbolicAddress(this->sym, this->offset + o);
}

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

SymbolicAddress PointerTable::getSymAddr(llvm::Value* v) {
    if (this->table.count(v) == 0) {
        this->table[v] = SymbolicAddress(this->symNum);
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

Argument::Argument(CryptoLineOps opcode, std::string value) {
    this->op = opcode;
    this->val = value;
}

Argument Argument::Const(std::string val) {
    return Argument(CryptoLineOps::Const, val);
}

Argument Argument::Var(std::string val) {
    return Argument(CryptoLineOps::Var, val);
}

Argument Argument::Flag(std::string val) {
    return Argument(CryptoLineOps::Flag, val);
}

Argument Argument::Num(unsigned val) {
    return Argument(CryptoLineOps::Num, std::to_string(val));
}

std::string Argument::toDst() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
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

std::string Argument::toSrc() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
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

std::string Argument::toAlgArg() {
    std::string s;
    switch (this->op) {
    case CryptoLineOps::Const:
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
    case CryptoLineOps::Const:
        s = "(const 64 " + this->val + ")";
        break;
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


std::map<CryptoLineOps, std::string> Statement::name = {
        {CryptoLineOps::Mov, "mov"},
        {CryptoLineOps::Add, "add"},
        {CryptoLineOps::Adds, "adds"},
        {CryptoLineOps::Adc, "adc"},
        {CryptoLineOps::Adcs, "adcs"},
        {CryptoLineOps::Sub, "sub"},
        {CryptoLineOps::Subs, "subs"},
        {CryptoLineOps::Sbb, "sbb"},
        {CryptoLineOps::Sbbs, "sbbs"},
        {CryptoLineOps::Mul, "mul"},
        {CryptoLineOps::Mulf, "mull"},
        {CryptoLineOps::ConcatShl, "cshl"},
        {CryptoLineOps::Shl, "shl"},
        {CryptoLineOps::Split, "split"},
        {CryptoLineOps::And, "and"},
        {CryptoLineOps::Nondet, "nondet"},
        {CryptoLineOps::Assume, "assume"},
        {CryptoLineOps::Assert, "assert"}
};

std::map<CryptoLineOps, std::string> Statement::name_legacy = {
        {CryptoLineOps::Mov, "bvAssign"},
        {CryptoLineOps::Add, "bvAdd"},
        {CryptoLineOps::Adds, "bvAddC"},
        {CryptoLineOps::Adc, "bvAdc"},
        {CryptoLineOps::Adcs, "bvAdcC"},
        {CryptoLineOps::Sub, "bvSub"},
        {CryptoLineOps::Subs, "bvSubC"},
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

Statement Statement::Subs(Argument borrow, Argument dst, Argument src1, Argument src2) {
    Statement s;
    s.op = CryptoLineOps::Subs;
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

Statement Statement::Nondet(Argument dst) {
    Statement s;
    s.op = CryptoLineOps::Nondet;
    s.args.push_back(dst);
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
    case CryptoLineOps::And:
    case CryptoLineOps::Nondet:
        s = Statement::name[this->op] + " " + this->args[0].toDst();
        for (int i = 1; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc();
        }
        s += ";";
        break;
    // instructions with 2 dsts
    case CryptoLineOps::Adds:
    case CryptoLineOps::Adcs:
    case CryptoLineOps::Subs:
    case CryptoLineOps::Sbbs:
    case CryptoLineOps::Mulf:
    case CryptoLineOps::ConcatShl:
    case CryptoLineOps::Split:
        s = Statement::name[this->op] + " " + this->args[0].toDst()
            + " " + this->args[1].toDst();
        for (int i = 2; i < this->args.size(); i++) {
            s += " " + this->args[i].toSrc();
        }
        s += ";";
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
    case CryptoLineOps::Subs:
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
