#!/bin/bash
# build_project_bc.sh (Generic Version)

SRC_DIR="$1"
OUTPUT_BC="$2"

# 1. Setup Environment
export LLVM_COMPILER=clang
export CC=wllvm
export CXX=wllvm++
export CFLAGS="-g -O1" # Ensure debug symbols for KLEE

cd "$SRC_DIR" || exit 1

# 2. Build System Detection & Execution
if [ -f "CMakeLists.txt" ]; then
    echo "[*] Detected CMake"
    mkdir -p build && cd build
    cmake .. -DCMAKE_C_COMPILER=wllvm -DCMAKE_CXX_COMPILER=wllvm++
    make -j$(nproc)
    cd ..
elif [ -f "./configure" ]; then
    echo "[*] Detected Autotools"
    ./configure --disable-shared
    make -j$(nproc)
elif [ -f "Makefile" ]; then
    echo "[*] Detected Bare Makefile"
    make -j$(nproc)
else
    echo "[!] Unknown build system"
    exit 1
fi

# 3. Generic Library Finding (Find the largest .a file)
echo "[*] Finding static library..."
# Finds the largest .a file, assuming it's the main library
TARGET_LIB=$(find . -name "*.a" -type f -printf "%s\t%p\n" | sort -n | tail -1 | cut -f2)

if [ -z "$TARGET_LIB" ]; then
    echo "[!] No static library (.a) found."
    exit 1
fi

echo "[*] Extracting bitcode from: $TARGET_LIB"
extract-bc -b "$TARGET_LIB"

# 4. Handle Output
if [ -f "${TARGET_LIB}.bca" ]; then
    llvm-link "${TARGET_LIB}.bca" -o "$OUTPUT_BC"
elif [ -f "${TARGET_LIB}.bc" ]; then
    mv "${TARGET_LIB}.bc" "$OUTPUT_BC"
fi