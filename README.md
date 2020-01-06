# llvm2cryptoline

===== Introduction =====

llvm2cryptoline is a tool aiming to translate LLVM IR code into the
Cryptoline domain-specific language.


===== Requirements =====

1. cmake (>= 3.4.3, lower version may be viable, you are welcomed to
have a try)
2. LLVM (>= 3.7.0, checked until version 7.0.0)

NOTE: the LLVM version used for compiling llvm2cryptoline SHOULD be 
the same as the one corresponding to the IR code.


===== LLVM Installation =====

NOTE: If you have already installed LLVM, you can skip this part.

1. Download LLVM (3.7.0 <= version <= 7.0.0) source code from
   http://releases.llvm.org/download.html

2. Extract the source code from the downloaded package. Assume that
   the top-level directory of the source code is SRC_ROOT.

3. Enter BUILD_DIR, where you want to build your LLVM. 
   For example, create directory SRC_ROOT/build and enter in:

    cd SRC_ROOT
    mkdir build && cd build

4. Assume that you want to install LLVM into the directory
   INSTALL_DIR, then:

    cmake -DCMAKE_INSTALL_PREFIX=INSTALL_DIR SRC_ROOT
    
   For example, if you are in SRC_ROOT/build, you can:

    cmake -DCMAKE_INSTALL_PREFIX=INSTALL_DIR ..

5. Build:
 
    make

   Or use n processors to speed up:

    make -jn

6. Install:

    make install

7. Now you can delete all files in SRC_ROOT and BUILD_DIR.


===== llvm2cryptoline Compilation =====

Assume that SRC_ROOT is the top-level directory of the llvm2cryptoline
source code, LLVM_INSTALL_DIR is the directory where you installed
your LLVM (i.e. INSTALL_DIR in the previous part).

1. cd SRC_ROOT

2. mkdir build && cd build

3. if the installed LLVM version < 3.9.0, run:

    cmake -DLLVM_DIR=LLVM_INSTALL_DIR/share/llvm/cmake/ ..
    
   if the installed LLVM version >= 3.9.0, then run:
   
    cmake -DLLVM_DIR=LLVM_INSTALL_DIR/lib/cmake/llvm/ ..

4. make


===== llvm2cryptoline Usage =====

Use the following command line:

    translate FILE FUNCTION_NAME [BLOCK_NAME]

    - FILE    	       the LLVM IR code (.ll) file

    - FUNCTION_NAME    the translated function name

    - BLOCK_NAME       the translated basic block name

   
