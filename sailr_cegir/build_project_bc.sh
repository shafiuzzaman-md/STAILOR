#!/bin/bash
# sailr_cegir/build_project_bc.sh
# Universal Bitcode Builder (Fixed Linker & Extensions)
# Updated: supports extracting from .so if no .a is produced (e.g., libxml2 via CMake)

set -euo pipefail

SRC_DIR="${1:-}"
OUT_ARG="${2:-}"

if [[ -z "$SRC_DIR" || -z "$OUT_ARG" ]]; then
    echo "[!] Usage: $0 <SRC_DIR> <OUTPUT_BC>"
    exit 1
fi

OUTPUT_BC="$(realpath -m "$OUT_ARG")"

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

find . -name "config.cache" -delete || true
find . -name "config.status" -delete || true
find . -name "config.log" -delete || true

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
    make -j"$(nproc)" MAKEINFO=true || echo "[!] Make hit errors, checking if libraries survived..."

elif [ -f "CMakeLists.txt" ]; then
    echo "[*] Detected CMake"

    # [FIX] CMake cache/compiler drift is a frequent cause of "BUILD_SHARED_LIBS=OFF doesn't stick".
    # Always reset the build directory for deterministic wllvm builds.
    rm -rf build

    mkdir -p build
    cd build
    cmake .. \
        -DCMAKE_C_COMPILER=wllvm \
        -DCMAKE_CXX_COMPILER=wllvm++ \
        -DBUILD_SHARED_LIBS=OFF
    make -j"$(nproc)" || true
    cd ..

elif [ -f "Makefile" ]; then
    echo "[*] Detected Bare Makefile"
    make -j"$(nproc)" || true
else
    echo "[!] Warning: No configure/CMakeLists/Makefile detected; attempting best-effort make."
    make -j"$(nproc)" || true
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
            extract-bc -b "$lib" || true

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

# Strategy: Generic Main Artifact (.a preferred; fall back to .so)
else
    # Prefer static libs (.a). If none exist, fall back to shared libs (.so / .so.*).
    TARGET_ARTIFACT="$(find . -type f -not -path "*/.libs/*" -name "*.a" -printf "%s\t%p\n" 2>/dev/null \
        | sort -nr | head -1 | cut -f2 || true)"

    if [ -z "$TARGET_ARTIFACT" ]; then
        TARGET_ARTIFACT="$(find . -type f -not -path "*/.libs/*" \( -name "*.so" -o -name "*.so.*" \) -printf "%s\t%p\n" 2>/dev/null \
            | sort -nr | head -1 | cut -f2 || true)"
    fi

    # Optional last-resort fallback: try an executable in build/
    if [ -z "$TARGET_ARTIFACT" ]; then
        TARGET_ARTIFACT="$(find . -path "*/build/*" -type f -executable -printf "%s\t%p\n" 2>/dev/null \
            | sort -nr | head -1 | cut -f2 || true)"
    fi

    if [ -z "$TARGET_ARTIFACT" ]; then
        echo "[!] Error: No library (.a/.so) or build executable found."
        exit 1
    fi

    echo "    -> Target Artifact: $TARGET_ARTIFACT"
    extract-bc -b "$TARGET_ARTIFACT" || true

    # [FIX] Handle extension variants for .a and .so
    if [[ "$TARGET_ARTIFACT" == *.a ]]; then
        if [ -f "${TARGET_ARTIFACT%.a}.bca" ]; then
            "$LLVM_LINK" "${TARGET_ARTIFACT%.a}.bca" -o "$OUTPUT_BC"
        elif [ -f "${TARGET_ARTIFACT}.bc" ]; then
            mv "${TARGET_ARTIFACT}.bc" "$OUTPUT_BC"
        else
            echo "[!] Error: Failed to find extracted bitcode for $TARGET_ARTIFACT (expected .bca or .bc)"
            exit 1
        fi
    else
        # Shared libs/executables: extract-bc typically emits "<artifact>.bc"
        if [ -f "${TARGET_ARTIFACT}.bc" ]; then
            mv "${TARGET_ARTIFACT}.bc" "$OUTPUT_BC"
        else
            echo "[!] Error: Failed to find extracted bitcode for $TARGET_ARTIFACT (expected ${TARGET_ARTIFACT}.bc)"
            exit 1
        fi
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
