#!/bin/bash
# sailr_cegir/build_project_bc.sh
# Universal Bitcode Builder (Fixed Linker & Extensions)

SRC_DIR="$1"
OUTPUT_BC=$(realpath -m "$2")

# 1. Setup Environment
export LLVM_COMPILER=clang
export CC=wllvm
export CXX=wllvm++
export CFLAGS="-g -O1 -fno-inline-functions -Wno-error" 

# [FIX] Auto-detect the correct llvm-link binary
if command -v llvm-link-14 &> /dev/null; then
    LLVM_LINK=llvm-link-14
elif command -v llvm-link &> /dev/null; then
    LLVM_LINK=llvm-link
else
    echo "[!] Error: llvm-link not found. Please install llvm-14."
    exit 1
fi
echo "[*] Using Linker: $LLVM_LINK"

if [ ! -d "$SRC_DIR" ]; then
    echo "[!] Source directory not found: $SRC_DIR"
    exit 1
fi

cd "$SRC_DIR" || exit 1

# --- STEP 1: DEEP CLEANING ---
echo "[*] Cleaning build artifacts..."
set +e
make distclean > /dev/null 2>&1
make clean > /dev/null 2>&1
set -e
find . -name "config.cache" -delete
find . -name "config.status" -delete
find . -name "config.log" -delete

# --- STEP 2: CONFIGURE ---
echo "[*] Configuring build..."

if [ -f "./configure" ]; then
    CONFIG_FLAGS=(
        "--disable-nls"
        "--disable-werror"
        "MAKEINFO=true" 
    )

    if [ -d "bfd" ]; then
        echo "[*] Detected Binutils. Disabling optional tools..."
        CONFIG_FLAGS+=(
            "--disable-gdb" "--disable-sim" "--disable-readline" 
            "--disable-libdecnumber" "--disable-gold" "--disable-ld"
            "--enable-targets=all"
        )
    fi
    
    ./configure "${CONFIG_FLAGS[@]}"

    echo "[*] Building (Ignoring non-critical tool failures)..."
    make -j$(nproc) MAKEINFO=true || echo "[!] Make hit errors, checking if libraries survived..."

elif [ -f "CMakeLists.txt" ]; then
    echo "[*] Detected CMake"
    mkdir -p build && cd build
    cmake .. -DCMAKE_C_COMPILER=wllvm -DCMAKE_CXX_COMPILER=wllvm++ -DBUILD_SHARED_LIBS=OFF
    make -j$(nproc) || true
    cd ..
elif [ -f "Makefile" ]; then
    echo "[*] Detected Bare Makefile"
    make -j$(nproc) || true
fi

# --- STEP 3: EXTRACT & CHECK ---
echo "[*] Extracting bitcode..."

# Strategy: Binutils Multi-Lib Linker
if [ -f "bfd/libbfd.a" ]; then
    echo "[*] Strategy: Binutils Libraries Found"
    BC_FILES=()
    
    for lib in "bfd/libbfd.a" "libiberty/libiberty.a" "opcodes/libopcodes.a"; do
        if [ -f "$lib" ]; then
            echo "    -> Extracting $lib"
            extract-bc -b "$lib"
            
            # [FIX] Check for both possible output names (.bca or .a.bc)
            if [ -f "${lib%.a}.bca" ]; then
                BC_FILES+=("${lib%.a}.bca")
            elif [ -f "${lib}.bc" ]; then
                BC_FILES+=("${lib}.bc")
            else
                echo "[!] Warning: Bitcode extraction failed for $lib (No .bca or .bc found)"
            fi
        fi
    done
    
    if [ ${#BC_FILES[@]} -eq 0 ]; then
        echo "[!] Critical: No bitcode files found to link."
        exit 1
    fi

    echo "[*] Linking combined bitcode..."
    "$LLVM_LINK" "${BC_FILES[@]}" -o "$OUTPUT_BC"

# Strategy: Generic Main Library
else
    TARGET_LIB=$(find . -name "*.a" -type f -not -path "*/.libs/*" -printf "%s\t%p\n" | sort -nr | head -1 | cut -f2)
    
    if [ -z "$TARGET_LIB" ]; then
        echo "[!] Error: No static library (.a) found."
        exit 1
    fi

    echo "    -> Target Lib: $TARGET_LIB"
    extract-bc -b "$TARGET_LIB"
    
    # [FIX] Handle extension variants
    if [ -f "${TARGET_LIB%.a}.bca" ]; then
        "$LLVM_LINK" "${TARGET_LIB%.a}.bca" -o "$OUTPUT_BC"
    elif [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$OUTPUT_BC"
    else
         echo "[!] Error: Failed to find extracted bitcode for $TARGET_LIB"
         exit 1
    fi
fi

# --- VERIFY ---
if [ -f "$OUTPUT_BC" ]; then
    echo "[✓] Bitcode successfully created: $OUTPUT_BC"
    ls -lh "$OUTPUT_BC"
else
    echo "[!] Failed to create bitcode."
    exit 1
fi