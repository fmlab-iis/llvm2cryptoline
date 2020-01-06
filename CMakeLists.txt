cmake_minimum_required(VERSION 3.4.3)
project(llvm2cryptoline)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Set your project compile flags.
# E.g. if using the C++ header files
# you will need to enable C++11 support
# for your compiler.

# build settings
set(PROJECT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(PROJECT_SRC_DIR ${PROJECT_DIR}/src)
set(PROJECT_INCLUDE_DIR ${PROJECT_DIR}/include)

file(GLOB_RECURSE SRC_FILES "${PROJECT_SRC_DIR}/*.cpp")

include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${PROJECT_INCLUDE_DIR})
include_directories(${PROJECT_SRC_DIR})

add_definitions(${LLVM_DEFINITIONS})

# set compile flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# Now build our tools
add_executable(translate ${SRC_FILES})

# Find the libraries that correspond to the LLVM components
# that we wish to use
llvm_map_components_to_libnames(llvm_libs support core irreader)

# Link against LLVM libraries
target_link_libraries(translate ${llvm_libs})
