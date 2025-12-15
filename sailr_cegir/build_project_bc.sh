#!/bin/bash
# build_project_bc.sh
# Usage: ./build_project_bc.sh <source_dir> <output_bc_name>

SRC_DIR="$1"
OUTPUT_NAME="$2"

if [ -z "$SRC_DIR" ] || [ -z "$OUTPUT_NAME" ]; then
    echo "Usage: $0 <path_to_source> <output_name.bc>"
    exit 1
fi

ABS_SRC=$(readlink -f "$SRC_DIR")
OUTPUT_BC=$(pwd)/$OUTPUT_NAME

echo "[*] Target Source: $ABS_SRC"
echo "[*] Output BC:     $OUTPUT_BC"

# 1. Check for wllvm
if ! command -v wllvm &> /dev/null; then
    echo "[!] wllvm not found."
    echo "    Please install it using: pipx install wllvm"
    exit 1
fi

# 2. Setup Environment
export LLVM_COMPILER=clang
export CC=wllvm
export CXX=wllvm+

# 3. Enter Source Directory
cd "$ABS_SRC" || exit 1

echo "[*] Cleaning..."
make clean > /dev/null 2>&1
rm -f .libs/*.o .libs/*.bc .libs/*.bca

echo "[*] Configuring Build System..."

if [ -f "./configure" ]; then
    echo "    -> Found ./configure"
    ./configure --disable-shared --without-python --silent
elif [ -f "./autogen.sh" ]; then
    echo "    -> Found ./autogen.sh"
    ./autogen.sh --disable-shared --without-python
else
    echo "[!] No configure script or autogen.sh found!"
    ls -F
    exit 1
fi

echo "[*] Building with wllvm (this may take a minute)..."
make -j$(nproc) > /dev/null

# 4. Extract Bitcode
echo "[*] Extracting bitcode..."

TARGET_LIB=$(find .libs -name "libxml2.a" | head -n 1)
if [ -z "$TARGET_LIB" ]; then
    TARGET_LIB=$(find . -name "libxml2.a" | head -n 1)
fi

if [ -z "$TARGET_LIB" ]; then
    echo "[!] Could not find libxml2.a. Build might have failed."
    exit 1
fi

echo "    -> Found library: $TARGET_LIB"

# Force extract-bc to build the bitcode
extract-bc -b "$TARGET_LIB"

# 5. Handle Output (Single File vs Archive)
if [ -f "${TARGET_LIB}.bc" ]; then
    # Case A: Success, single file created
    mv "${TARGET_LIB}.bc" "$OUTPUT_BC"
    echo "[✓] Success! Bitcode saved to: $OUTPUT_BC"

elif [ -f "${TARGET_LIB}.bca" ]; then
    # Case B: Archive created (common for static libs) - Needs Linking
    echo "[i] Found bitcode archive (.bca). Linking into single module..."
    
    if ! command -v llvm-link &> /dev/null; then
        echo "[!] llvm-link not found. Cannot convert archive to bitcode."
        exit 1
    fi

    llvm-link "${TARGET_LIB}.bca" -o "$OUTPUT_BC"
    
    if [ $? -eq 0 ]; then
        echo "[✓] Success! Linked archive saved to: $OUTPUT_BC"
    else
        echo "[!] llvm-link failed."
        exit 1
    fi

else
    echo "[!] extract-bc ran but produced neither .bc nor .bca."
    ls -l "${TARGET_LIB}"*
    exit 1
fi