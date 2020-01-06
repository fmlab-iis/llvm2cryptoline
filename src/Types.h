/*
 * Types.h
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#ifndef SRC_TYPES_H_
#define SRC_TYPES_H_

#include <llvm/IR/BasicBlock.h>
#include <cstdlib>
#include <map>
#include <unordered_set>
#include <list>


struct ProgramCounter {
    llvm::BasicBlock* b;
    llvm::BasicBlock::iterator i;
};

class SymbolicAddress {
public:
    int sym;
    int offset;

public:
    SymbolicAddress();
    SymbolicAddress(int s, int o = 0);

    SymbolicAddress add(int o);
    std::string toStr();
};

class PointerTable {
private:
    std::map<llvm::Value*, SymbolicAddress> table;
    int symNum = 0;

public:
    SymbolicAddress getSymAddr(llvm::Value* v);
    void add(llvm::Value* v, SymbolicAddress s);
};

typedef std::unordered_set<std::string> VariableSet;
typedef std::list<std::string> InstructionList;

namespace cryptoline {

// CryptoLine Statements Op Code
enum class CryptoLineOps {
    // comment
    Comment,
    // argument types
    Const,
    Var,
    Flag,
    Num,
    // instructions
    Mov,
    Add,
    Adds,
    Adc,
    Adcs,
    Sub,
    Subs,
    Sbb,
    Sbbs,
    Mul,
    Mulf,
    ConcatShl,
    Shl,
    Split,
    And,
    Nondet,
    // assume/assert
    Assume,
    Assert,
    // predicates
    True,
    Eq
};

class Argument {
public:
    CryptoLineOps op;
    std::string val;
    Argument();
    Argument(CryptoLineOps opcode, std::string value);

    static Argument Const(std::string val);
    static Argument Var(std::string val);
    static Argument Flag(std::string val);
    static Argument Num(unsigned val);


    std::string toDst();
    std::string toSrc();
    std::string toAlgArg();
    std::string toRangeArg();

    // for legacy syntax
    std::string toDst_legacy();
    std::string toSrc_legacy();
    std::string toAlgArg_legacy();
    std::string toRangeArg_legacy();
};

class Predicate {
public:
    CryptoLineOps op;
    std::vector<Argument> args;

    static Predicate True();
    static Predicate Eq(Argument left, Argument right);

    std::string toAlgPred();
    std::string toRangePred();

    // for legacy syntax
    std::string toAlgPred_legacy();
    std::string toRangePred_legacy();
};

class Statement {
public:
    CryptoLineOps op;
    std::string text;   // reserved for Comment
    std::vector<Argument> args;   // reserved for Instructions
    std::vector<Predicate> preds; // reserved for Assert/Assume

    static Statement Comment(std::string t);
    static Statement Mov(Argument dst, Argument src);
    static Statement Add(Argument dst, Argument src1, Argument src2);
    static Statement Adds(Argument carry, Argument dst, Argument src1, Argument src2);
    static Statement Adc(Argument dst, Argument src1, Argument src2, Argument c);
    static Statement Adcs(Argument carry, Argument dst, Argument src1, Argument src2, Argument c);
    static Statement Sub(Argument dst, Argument src1, Argument src2);
    static Statement Subs(Argument borrow, Argument dst, Argument src1, Argument src2);
    static Statement Sbb(Argument dst, Argument src1, Argument src2, Argument b);
    static Statement Sbbs(Argument borrow, Argument dst, Argument src1, Argument src2, Argument b);
    static Statement Mul(Argument dst, Argument src1, Argument src2);
    static Statement Mulf(Argument dstH, Argument dstL, Argument src1, Argument src2);
    static Statement ConcatShl(Argument dstH, Argument dstL, Argument src1, Argument src2, Argument n);
    static Statement Shl(Argument dst, Argument src, Argument n);
    static Statement Split(Argument dstH, Argument dstL, Argument src, Argument n);
    static Statement And(Argument dst, Argument src1, Argument src2);
    static Statement Nondet(Argument dst);
    static Statement Assume(Predicate alg, Predicate range);
    static Statement Assert(Predicate alg, Predicate range);

    static std::map<CryptoLineOps, std::string> name;
    static std::map<CryptoLineOps, std::string> name_legacy;

    std::string toStr();
    std::string toStr_legacy();
};

}

typedef std::list<cryptoline::Statement> StatementList;


#endif /* SRC_TYPES_H_ */
