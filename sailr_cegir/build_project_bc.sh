#!/bin/bash
# sailr_cegir/build_project_bc.sh
# Universal Bitcode Builder (Smart-Detects Binutils vs Standard)

SRC_DIR="$1"
OUTPUT_BC=$(realpath -m "$2")

# 1. Setup Environment
export LLVM_COMPILER=clang
export CC=wllvm
export CXX=wllvm++
export CFLAGS="-g -O1 -fno-inline-functions -Wno-error" # Generic safe flags

if [ ! -d "$SRC_DIR" ]; then
    echo "[!] Source directory not found: $SRC_DIR"
    exit 1
fi

cd "$SRC_DIR" || exit 1

# --- STEP 1: DEEP CLEANING (Safe for all) ---
echo "[*] Cleaning build artifacts..."
set +e
make distclean > /dev/null 2>&1
make clean > /dev/null 2>&1
set -e
# Nuke config caches (Critical for switching compilers)
find . -name "config.cache" -delete
find . -name "config.status" -delete
find . -name "config.log" -delete

# --- STEP 2: SMART CONFIGURE ---
echo "[*] Configuring build..."

if [ -f "./configure" ]; then
    # Default Flags
    CONFIG_FLAGS=(
        "--disable-nls"
        "--disable-werror"
        "MAKEINFO=true" 
    )

    # [SMART] Detect Binutils structure (bfd folder exists)
    if [ -d "bfd" ]; then
        echo "[*] Detected Binutils-like structure. Applying specialized flags..."
        CONFIG_FLAGS+=(
            "--disable-gdb"
            "--disable-sim"
            "--disable-readline"
            "--disable-libdecnumber"
            "--disable-gold"
            "--disable-ld"
            "--enable-targets=all"
        )
    fi
    
    ./configure "${CONFIG_FLAGS[@]}"
    make -j$(nproc) MAKEINFO=true

elif [ -f "CMakeLists.txt" ]; then
    echo "[*] Detected CMake"
    mkdir -p build && cd build
    cmake .. \
      -DCMAKE_C_COMPILER=wllvm \
      -DCMAKE_CXX_COMPILER=wllvm++ \
      -DBUILD_SHARED_LIBS=OFF
    make -j$(nproc)
    cd ..
elif [ -f "Makefile" ]; then
    echo "[*] Detected Bare Makefile"
    make -j$(nproc)
else
    echo "[!] Unknown build system"
    exit 1
fi

# --- STEP 3: SMART EXTRACTION ---
echo "[*] Extracting bitcode..."

# Strategy A: Binutils Multi-Lib Linker
# If we see the key libraries for binutils, we link them all.
if [ -f "bfd/libbfd.a" ]; then
    echo "[*] Strategy: Multi-Lib Link (Binutils)"
    BC_FILES=()
    
    # Extract each known lib if it exists
    for lib in "bfd/libbfd.a" "libiberty/libiberty.a" "opcodes/libopcodes.a"; do
        if [ -f "$lib" ]; then
            echo "    -> Extracting $lib"
            extract-bc -b "$lib"
            BC_FILES+=("${lib%.a}.bca")
        fi
    done
    
    echo "[*] Linking combined bitcode..."
    llvm-link "${BC_FILES[@]}" -o "$OUTPUT_BC"

# Strategy B: Generic "Biggest Library" Finder
# Finds the largest .a file (likely the main project lib) and uses that.
else
    echo "[*] Strategy: Generic Main Library"
    # Find all .a files, sort by size (descending), take the top one
    TARGET_LIB=$(find . -name "*.a" -type f -not -path "*/.libs/*" -printf "%s\t%p\n" | sort -nr | head -1 | cut -f2)

    if [ -z "$TARGET_LIB" ]; then
        # Fallback: check hidden .libs (common in Autotools)
        TARGET_LIB=$(find .libs -name "*.a" -type f -printf "%s\t%p\n" | sort -nr | head -1 | cut -f2)
    fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] Error: No static library (.a) found to extract bitcode from."
        exit 1
    fi

    echo "    -> Target Lib: $TARGET_LIB"
    extract-bc -b "$TARGET_LIB"
    
    # Handle .bca (archive) vs .bc (single file)
    if [ -f "${TARGET_LIB}.bca" ]; then
        llvm-link "${TARGET_LIB}.bca" -o "$OUTPUT_BC"
    elif [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$OUTPUT_BC"
    fi
fi

# --- VERIFY ---
if [ -f "$OUTPUT_BC" ]; then
    echo "[✓] Bitcode successfully created: $OUTPUT_BC"
else
    echo "[!] Failed to create bitcode."
    exit 1
fi