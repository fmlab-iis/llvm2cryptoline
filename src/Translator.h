/*
 * Translator.h
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#ifndef SRC_TRANSLATOR_H_
#define SRC_TRANSLATOR_H_

#include "Types.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"


using namespace llvm;

class Translator {
public:
    PointerTable pointerTable;
    VariableSet defVars;
    VariableSet undefVars;
    StatementList result;
    bool heuristcs = true;
    bool heuristcs_equiv = true;
    bool heuristcs_sound = true;

    ProgramCounter evaluate(ProgramCounter pc);
    bool tranlate(ProgramCounter pc, std::string outputName, bool inBlock);
    std::string getName(llvm::Value* v);
    std::string toLower(std::string s);
    unsigned int sizeOf(llvm::Type* ty);
    unsigned int offsetAt(llvm::Type* ty, unsigned i);
    bool isDefined(std::string var);
    void checkDefinedness(std::string var);
    std::string toString(llvm::Instruction* inst);

private:
    std::string replaceChar(std::string str, char target, char c);
    bool legacy = false;

    void evalLoad(LoadInst* li);
    void evalStore(StoreInst* si);
    void evalBinaryOp(BinaryOperator* bo);
    void evalGetElementPtr(GetElementPtrInst* gepi);
    void evalInsertElement(InsertElementInst* iei);
    void evalZExt(ZExtInst* zei);
    void evalTrunc(TruncInst* ti);
    void evalBitCast(BitCastInst* bci);

    void evalBinaryOpArithmetic(BinaryOperator* bo);
    void evalBinaryOpShl(BinaryOperator* bo);
    void evalBinaryOpLShr(BinaryOperator* bo);
    void evalBinaryOpAnd(BinaryOperator* bo);
};


#endif /* SRC_TRANSLATOR_H_ */
