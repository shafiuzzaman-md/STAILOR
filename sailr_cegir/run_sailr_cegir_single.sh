#!/usr/bin/env bash
set -euo pipefail

# SAILR-CEGIR Single Spec Debugger
# UPDATED: Configured for 3-Stage Pipeline (Model -> Reach -> Vuln)

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_JSON_PATH" >&2
  exit 1
fi

PROJECT_ID="$1"        
RULE_ID="$2"           
SPEC_FILE="$3"         

# --- Configuration ---
SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
# Ensure absolute path for safe directory switching
DATASET_ROOT="$(realpath "${DATASET_ROOT:-dataset}")"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"

MAX_A="${MAX_A:-10}"      # Builder Iterations
MAX_B="${MAX_B:-15}"      # Refiner Iterations
TIMEOUT="${TIMEOUT:-300}" # KLEE Process Timeout

# PIPELINE UPDATE: Reduced cycles because new architecture is more robust
MAX_CYCLES="${MAX_CYCLES:-3}" 

CLANG="${CLANG:-clang-14}"
KLEE="${KLEE:-klee}"
KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=120 --external-calls=all}"

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

    if [ -f "$dest" ]; then
        echo "[i] Found existing bitcode: $dest"
        return 0
    fi

    echo "==============================================="
    echo "[*] Bitcode missing. Starting Auto-Build..."
    echo "==============================================="

    if ! command -v wllvm &> /dev/null; then
        echo "[!] wllvm not found. Aborting."
        exit 1
    fi

    export LLVM_COMPILER=clang
    export CC=wllvm
    export CXX=wllvm+

    pushd "$src" > /dev/null
    make clean > /dev/null 2>&1 || true
    
    if [ -f "./configure" ]; then
        ./configure --disable-shared --without-python --silent
    fi

    make -j$(nproc) > /dev/null

    local TARGET_LIB=$(find .libs -name "*.a" | head -n 1)
    if [ -z "$TARGET_LIB" ]; then
        TARGET_LIB=$(find . -name "*.a" | head -n 1)
    fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] Build failed: No static lib found"
        popd > /dev/null
        exit 1
    fi

    extract-bc -b "$TARGET_LIB"

    if [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$dest"
    elif [ -f "${TARGET_LIB}.bca" ]; then
        llvm-link "${TARGET_LIB}.bca" -o "$dest"
    fi

    popd > /dev/null
}

ensure_project_bitcode "${SRC_ROOT}" "${PROJECT_BC}"

# --- Cleanup Block ---
echo "[*] Cleaning build artifacts to reduce noise for Agent..."
pushd "${SRC_ROOT}" > /dev/null
if [ -f "project.bc" ]; then mv project.bc project.bc.temp_keep; fi
make clean > /dev/null 2>&1 || true
rm -f .*.o .*.lo .*.la .*.o.bc .*.lo.bc *.o *.lo *.la *.bc
if [ -f "project.bc.temp_keep" ]; then mv project.bc.temp_keep project.bc; fi
popd > /dev/null
echo "[✓] Source directory cleaned (project.bc preserved)."

echo "==============================================="
echo "[*] Debugging Single Spec"
echo "    TARGET     = ${TARGET_VUL}"
echo "    PIPELINE   = Model -> Reach -> Vuln"
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
  --clang-flags="${CLANG_FLAGS:-}" \
  --klee "${KLEE}" \
  --klee-flags="${KLEE_FLAGS}" \
  --max-a "${MAX_A}" \
  --max-b "${MAX_B}" \
  --max-cycles "${MAX_CYCLES}" \
  --timeout "${TIMEOUT}" \
  --run-dir "${RUN_DIR}" \
  --summary-tsv "${SUMMARY_TSV}" \
  --project-bc "${PROJECT_BC}"

echo
echo "[✓] Single run finished."
echo "    Logs: ${RUN_DIR}/logs/"
echo "    Harness: ${RUN_DIR}/harness/harness.c"