/*
 * Translator.h
 *
 *  Created on: 2018年5月24日
 *      Author: jiaxiang
 */

#ifndef SRC_TRANSLATOR_H_
#define SRC_TRANSLATOR_H_

#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"

#include "Types.h"



namespace llvm2cryptoline {

using namespace llvm;
using namespace cryptoline;


class Translator {
public:
    PointerTable pointerTable;
    VariableSet defVars;
    VariableSet undefVars;
    VariableSet unusedVars;
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
    bool isDefined(Variable var);
    void use(Variable var);
    void define(Variable var);
    std::string toString(llvm::Instruction* inst);

private:
    std::string replaceChar(std::string str, char target, char c);
    bool legacy = false;
    CryptoLineType defaultType = CryptoLineType::sint;

    void evalLoad(LoadInst* li);
    void evalStore(StoreInst* si);
    void evalBinaryOp(BinaryOperator* bo);
    void evalGetElementPtr(GetElementPtrInst* gepi);
    void evalInsertElement(InsertElementInst* iei);
    void evalExtractElement(ExtractElementInst* eei);
    void evalZExt(ZExtInst* zei);
    void evalSExt(SExtInst* sei);
    void evalTrunc(TruncInst* ti);
    void evalBitCast(BitCastInst* bci);
    void evalCall(CallInst* ci);

    void evalBinaryOpArithmetic(BinaryOperator* bo);
    void evalBinaryOpShl(BinaryOperator* bo);
    void evalBinaryOpLShr(BinaryOperator* bo);
    void evalBinaryOpAShr(BinaryOperator* bo);
    void evalBinaryOpAnd(BinaryOperator* bo);
};

}

#endif /* SRC_TRANSLATOR_H_ */
