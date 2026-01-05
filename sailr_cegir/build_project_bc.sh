#!/bin/bash
# build_project_bc.sh (Fixed: Absolute Paths & Robust Build)

SRC_DIR="$1"
# [FIX] Convert output path to absolute path BEFORE changing directories
OUTPUT_BC=$(realpath -m "$2")

# 1. Setup Environment
export LLVM_COMPILER=clang
export CC=wllvm
export CXX=wllvm++
export CFLAGS="-g -O1 -fno-inline-functions"

# Check directory exists
if [ ! -d "$SRC_DIR" ]; then
    echo "[!] Source directory not found: $SRC_DIR"
    exit 1
fi

cd "$SRC_DIR" || exit 1

echo "[*] Cleaning previous build artifacts..."
rm -rf build CMakeCache.txt CMakeFiles
make clean > /dev/null 2>&1 || true

# 2. Build System Detection & Execution
if [ -f "./configure" ]; then
    echo "[*] Detected Autotools (Preferred)"
    ./configure --disable-shared --enable-static --without-python --without-zlib --without-lzma
    make -j$(nproc)

elif [ -f "CMakeLists.txt" ]; then
    echo "[*] Detected CMake"
    mkdir -p build && cd build
    cmake .. \
      -DCMAKE_C_COMPILER=wllvm \
      -DCMAKE_CXX_COMPILER=wllvm++ \
      -DBUILD_SHARED_LIBS=OFF \
      -DLIBXML2_WITH_PYTHON=OFF \
      -DLIBXML2_WITH_MODULES=OFF \
      -DLIBXML2_WITH_TESTS=OFF \
      -DLIBXML2_WITH_ZLIB=OFF \
      -DLIBXML2_WITH_LZMA=OFF
    make -j$(nproc)
    cd ..

elif [ -f "Makefile" ]; then
    echo "[*] Detected Bare Makefile"
    make -j$(nproc)
else
    echo "[!] Unknown build system"
    exit 1
fi

# 3. Generic Library Finding
echo "[*] Finding static library..."
TARGET_LIB=$(find . -name "*.a" -type f -not -path "*/.libs/*" -printf "%s\t%p\n" | sort -n | tail -1 | cut -f2)

if [ -z "$TARGET_LIB" ]; then
    TARGET_LIB=$(find .libs -name "*.a" -type f -printf "%s\t%p\n" | sort -n | tail -1 | cut -f2)
fi

if [ -z "$TARGET_LIB" ]; then
    echo "[!] No static library (.a) found."
    ls -R | grep "\.a$" | head -5
    exit 1
fi

echo "[*] Extracting bitcode from: $TARGET_LIB"
extract-bc -b "$TARGET_LIB"

# 4. Handle Output
if [ -f "${TARGET_LIB}.bca" ]; then
    echo "[*] Linking archive bitcode..."
    llvm-link "${TARGET_LIB}.bca" -o "$OUTPUT_BC"
elif [ -f "${TARGET_LIB}.bc" ]; then
    echo "[*] Moving bitcode..."
    mv "${TARGET_LIB}.bc" "$OUTPUT_BC"
fi

if [ -f "$OUTPUT_BC" ]; then
    echo "[✓] Bitcode created at: $OUTPUT_BC"
else
    echo "[!] Failed to create bitcode at $OUTPUT_BC"
    exit 1
fi