#!/usr/bin/env bash
set -euo pipefail

# SAILR-CEGIR Batch Runner + Auto-Builder
# Updated to use the unified run_agent_for_spec.py

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_ROOT" >&2
  exit 1
fi

PROJECT_ID="$1"        # e.g., 62911/libxml2_62911_vul
RULE_ID="$2"           # e.g., local.oob.memfunc.length-misuse
SPEC_ROOT="$3"         # e.g., specs

# Env / defaults
SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
DATASET_ROOT="${DATASET_ROOT:-dataset}"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"

MAX_A="${MAX_A:-15}"     
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-1200}"

CLANG="${CLANG:-clang-14}"
KLEE="${KLEE:-klee}"
CLANG_FLAGS="${CLANG_FLAGS:-}"
KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=3600 --external-calls=all}"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

PROJECT_SLUG="$(basename "$PROJECT_ID")"   
SPEC_DIR="${SPEC_ROOT}/${PROJECT_SLUG}"
SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"

MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
SUMMARY_TSV="${MODE_ROOT}/summary.tsv"
PROJECT_BC="${SRC_ROOT}/project.bc"

mkdir -p "${MODE_ROOT}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    RULE_ID      = ${RULE_ID}"
echo "    SPEC_DIR     = ${SPEC_DIR}"
echo "    SUMMARY_TSV  = ${SUMMARY_TSV}"

if [ ! -d "${SPEC_DIR}" ]; then
  echo "[!] Spec directory does not exist: ${SPEC_DIR}" >&2
  exit 1
fi

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
    echo "    Source: $src"
    echo "    Dest:   $dest"
    echo "==============================================="

    if ! command -v wllvm &> /dev/null; then
        echo "[!] wllvm not found. Please install it (pipx install wllvm)."
        exit 1
    fi

    export LLVM_COMPILER=clang
    export CC=wllvm
    export CXX=wllvm+

    pushd "$src" > /dev/null
    echo "[*] Cleaning and Building..."
    make clean > /dev/null 2>&1 || true
    rm -f .libs/*.o .libs/*.bc .libs/*.bca

    if [ -f "./configure" ]; then
        ./configure --disable-shared --without-python --silent
    elif [ -f "./autogen.sh" ]; then
        ./autogen.sh --disable-shared --without-python
    else
        echo "[!] No build config found."
        popd > /dev/null; exit 1
    fi

    make -j$(nproc) > /dev/null

    echo "[*] Extracting..."
    local TARGET_LIB=$(find .libs -name "libxml2.a" | head -n 1)
    if [ -z "$TARGET_LIB" ]; then TARGET_LIB=$(find . -name "libxml2.a" | head -n 1); fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] Lib not found."
        popd > /dev/null; exit 1
    fi

    extract-bc -b "$TARGET_LIB"

    if [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$dest"
    elif [ -f "${TARGET_LIB}.bca" ]; then
        llvm-link "${TARGET_LIB}.bca" -o "$dest"
    fi
    
    echo "[✓] Bitcode ready: $dest"
    popd > /dev/null
}

# --- Execution ---

ensure_project_bitcode "${SRC_ROOT}" "${PROJECT_BC}"

rm -f "${SUMMARY_TSV}"
mapfile -t SPECS < <(find "${SPEC_DIR}" -maxdepth 1 -type f -name "*.json" | sort)

if [ "${#SPECS[@]}" -eq 0 ]; then
  echo "[!] No specs found." >&2
  exit 1
fi

for SPEC in "${SPECS[@]}"; do
  STEM="$(basename "${SPEC}" .json)"
  VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
  VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
  TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"
  RUN_DIR="${MODE_ROOT}/${STEM}"

  echo "--------------------------------------------------"
  echo "[*] Spec: ${STEM}"
  mkdir -p "${RUN_DIR}"

  # UPDATED: Points to standard run_agent_for_spec.py
  python3 "${REPO_ROOT}/sailr_cegir/scripts/run_agent_for_spec.py" \
    --sa-out-dir "${SA_PROJECT_DIR}" \
    --dataset-root "${DATASET_ROOT}" \
    --project-id "${PROJECT_ID}" \
    --src-root "${SRC_ROOT}" \
    --spec "${SPEC}" \
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
    --max-cycles 5 \
    --timeout "${TIMEOUT}" \
    --run-dir "${RUN_DIR}" \
    --summary-tsv "${SUMMARY_TSV}" \
    --project-bc "${PROJECT_BC}"
done

echo "[✓] Batch complete."