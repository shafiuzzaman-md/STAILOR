#!/usr/bin/env bash
set -euo pipefail

# SAILR-CEGIR Single Spec Debugger + Auto-Builder
# Fixed: Handles relative path resolution for bitcode output

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_JSON_PATH" >&2
  exit 1
fi

PROJECT_ID="$1"        
RULE_ID="$2"           
SPEC_FILE="$3"         

# --- Configuration ---
SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
DATASET_ROOT="${DATASET_ROOT:-dataset}"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"

MAX_A="${MAX_A:-15}"     
MAX_B="${MAX_B:-20}"
TIMEOUT="${TIMEOUT:-300}" 

CLANG="${CLANG:-clang-14}"
KLEE="${KLEE:-klee}"
CLANG_FLAGS="${CLANG_FLAGS:-}"
KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=3600 --external-calls=all}"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_SLUG="$(basename "$PROJECT_ID")"
SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"
SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"

STEM="$(basename "${SPEC_FILE}" .json)"
MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
RUN_DIR="${MODE_ROOT}/${STEM}"
SUMMARY_TSV="${MODE_ROOT}/summary.tsv"

if [ ! -f "${SPEC_FILE}" ]; then
  echo "[!] Spec file not found: ${SPEC_FILE}" >&2
  exit 1
fi

VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"

PROJECT_BC="${SRC_ROOT}/project.bc"

# --- Function: Auto-Build Bitcode ---
ensure_project_bitcode() {
    local src="$1"
    local dest="$2"

    # FIX: Resolve absolute path for dest because we will pushd later
    if [[ "$dest" != /* ]]; then
        dest="$(pwd)/$dest"
    fi

    if [ -f "$dest" ]; then
        echo "[i] Found existing bitcode: $dest"
        return 0
    fi

    echo "==============================================="
    echo "[*] Bitcode missing. Starting Auto-Build..."
    echo "    Source: $src"
    echo "    Dest:   $dest"
    echo "==============================================="

    if ! command -v wllvm &> /dev/null; then
        echo "[!] wllvm not found. Installing via pipx..."
        if ! command -v pipx &> /dev/null; then
             echo "[!] pipx not found. Installing..."
             sudo apt update && sudo apt install -y pipx
             pipx ensurepath
        fi
        pipx install wllvm --force
        export PATH=$PATH:$HOME/.local/bin
    fi

    export LLVM_COMPILER=clang
    export CC=wllvm
    export CXX=wllvm+

    pushd "$src" > /dev/null
    echo "[*] Cleaning build artifacts..."
    make clean > /dev/null 2>&1 || true
    rm -f .libs/*.o .libs/*.bc .libs/*.bca

    echo "[*] Configuring..."
    if [ -f "./configure" ]; then
        ./configure --disable-shared --without-python --silent
    elif [ -f "./autogen.sh" ]; then
        ./autogen.sh --disable-shared --without-python
    else
        echo "[!] No configure script or autogen.sh found in $src"
        popd > /dev/null
        exit 1
    fi

    echo "[*] Building with wllvm..."
    make -j$(nproc) > /dev/null

    echo "[*] Extracting bitcode..."
    local TARGET_LIB=$(find .libs -name "libxml2.a" | head -n 1)
    if [ -z "$TARGET_LIB" ]; then
        TARGET_LIB=$(find . -name "libxml2.a" | head -n 1)
    fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] Build failed: Could not find libxml2.a"
        popd > /dev/null
        exit 1
    fi

    echo "    -> Found library: $TARGET_LIB"
    extract-bc -b "$TARGET_LIB"

    if [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$dest"
        echo "[✓] Build Success! Created: $dest"
    elif [ -f "${TARGET_LIB}.bca" ]; then
        echo "[i] Linking archive (.bca) to module..."
        if ! command -v llvm-link &> /dev/null; then
             echo "[!] llvm-link not found. Please install llvm/clang."
             popd > /dev/null
             exit 1
        fi
        llvm-link "${TARGET_LIB}.bca" -o "$dest"
        echo "[✓] Build/Link Success! Created: $dest"
    else
        echo "[!] extract-bc failed to produce output."
        ls -l "${TARGET_LIB}"*
        popd > /dev/null
        exit 1
    fi

    popd > /dev/null
}

# --- Main Execution Flow ---

ensure_project_bitcode "${SRC_ROOT}" "${PROJECT_BC}"

echo "==============================================="
echo "[*] Debugging Single Spec"
echo "    TARGET     = ${TARGET_VUL}"
echo "    SPEC       = ${SPEC_FILE}"
echo "    PROJECT_BC = ${PROJECT_BC}"
echo "    RUN_DIR    = ${RUN_DIR}"
echo "==============================================="

mkdir -p "${RUN_DIR}"

python3 "${REPO_ROOT}/sailr_cegir/scripts/run_agent_for_spec.py" \
  --sa-out-dir "${SA_PROJECT_DIR}" \
  --dataset-root "${DATASET_ROOT}" \
  --project-id "${PROJECT_ID}" \
  --src-root "${SRC_ROOT}" \
  --spec "${SPEC_FILE}" \
  --spec-stem "${STEM}" \
  --vul-file "${VUL_FILE}" \
  --vul-line "${VUL_LINE}" \
  --rule-id "${RULE_ID}" \
  --target-vul "${TARGET_VUL}" \
  --llm-model "${LLM_MODEL}" \
  --llm-api-base "${LLM_API_BASE}" \
  --clang "${CLANG}" \
  --clang-flags="${CLANG_FLAGS}" \
  --klee "${KLEE}" \
  --klee-flags="${KLEE_FLAGS}" \
  --max-a "${MAX_A}" \
  --max-b "${MAX_B}" \
  --max-cycles ${MAX_CYCLES:-5} \
  --timeout "${TIMEOUT}" \
  --run-dir "${RUN_DIR}" \
  --summary-tsv "${SUMMARY_TSV}" \
  --project-bc "${PROJECT_BC}"

echo
echo "[✓] Single run finished."
echo "    Logs: ${RUN_DIR}/logs/"
echo "    Harness: ${RUN_DIR}/harness/harness.c"