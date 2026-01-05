#!/usr/bin/env bash
set -euo pipefail

# STAILOR Batch Runner
# [FIXED] Removed 'make clean' to preserve generated headers (config.h)
# [FIXED] Surgical removal of object files to reduce agent noise
# [VERIFIED] Arguments align with new validation logic

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_ROOT [JOBS] [QL_FILE]" >&2
  exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="$2"
export SPEC_ROOT="$3"
JOBS="${4:-4}"
export QL_FILE="${5:-}"

# --- DEFAULTS ---
export SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
export DATASET_ROOT="$(realpath "${DATASET_ROOT:-dataset}")"
export LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
export LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"

export MAX_A="${MAX_A:-10}"
export MAX_B="${MAX_B:-3}"
export MAX_CYCLES="${MAX_CYCLES:-2}"
export TIMEOUT="${TIMEOUT:-300}"

export CLANG="${CLANG:-clang-14}"
export CLANG_FLAGS="${CLANG_FLAGS:-}" 
export KLEE="${KLEE:-klee}"
export KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=60 --external-calls=all}"

export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="${REPO_ROOT}/sailr_cegir/scripts"

PROJECT_SLUG="$(basename "$PROJECT_ID")"
SPEC_DIR="${SPEC_ROOT}/${PROJECT_SLUG}"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"

export MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
export SUMMARY_TSV="${MODE_ROOT}/summary.tsv"
export PROJECT_BC="${SRC_ROOT}/project.bc"

mkdir -p "${MODE_ROOT}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    JOBS         = ${JOBS}"
echo "    SRC_ROOT     = ${SRC_ROOT}"

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

    echo "[*] Bitcode missing. Starting Auto-Build..."

    if ! command -v wllvm &> /dev/null; then
        echo "[!] wllvm not found. Please install it."
        exit 1
    fi

    export LLVM_COMPILER=clang
    export CC=wllvm
    export CXX=wllvm+

    pushd "$src" > /dev/null
    
    # [SAFETY] Do NOT run make clean here if possible, to keep config.h
    # Only run configure if Makefile is missing
    if [ ! -f "Makefile" ]; then
        if [ -f "./configure" ]; then
            ./configure --disable-shared --without-python --silent
        elif [ -f "./autogen.sh" ]; then
            ./autogen.sh --disable-shared --without-python
        fi
    fi

    make -j"$(nproc)" > /dev/null

    echo "[*] Extracting..."
    local TARGET_LIB
    TARGET_LIB="$(find .libs -maxdepth 1 -name "*.a" | head -n 1)"
    if [ -z "$TARGET_LIB" ]; then
        TARGET_LIB="$(find . -maxdepth 1 -name "*.a" | head -n 1)"
    fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] No static library (*.a) found."
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

ensure_project_bitcode "${SRC_ROOT}" "${PROJECT_BC}"

# --- Cleanup Block (SAFER VERSION) ---
echo "[*] Cleaning object artifacts (preserving headers)..."
pushd "${SRC_ROOT}" > /dev/null

# [CRITICAL FIX] Do NOT run 'make clean'. It often deletes config.h.
# Instead, explicitly find and delete object files to reduce noise for the Agent.
find . -type f \( -name "*.o" -o -name "*.lo" -o -name "*.la" -o -name "*.o.bc" \) -delete

# Ensure project.bc is safe
if [ ! -f "${PROJECT_BC}" ]; then
    echo "[!] Error: project.bc was deleted or not created!"
    exit 1
fi

popd > /dev/null
echo "[✓] Source directory cleaned (Objects removed, Headers preserved)."

process_spec() {
    local SPEC="$1"
    local STEM
    STEM="$(basename "${SPEC}" .json)"
    local RUN_DIR="${MODE_ROOT}/${STEM}"

    # Robust parsing: 000_filename_line_rule
    # Uses cut, but assumes standard naming.
    local VUL_FILE VUL_LINE TARGET_VUL
    VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
    VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
    TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"

    # Resume Logic: Skip if verified
    if [ -f "${RUN_DIR}/run_meta.json" ]; then
        if grep -Eq '"class"[[:space:]]*:[[:space:]]*"H2_BUG"' "${RUN_DIR}/run_meta.json"; then
            echo "[SKIP] ${STEM} (Verified Bug)"
            return 0
        fi
    fi

    echo "[START] ${STEM}"
    mkdir -p "${RUN_DIR}"

    local CLANG_FLAGS_ARG=()
    if [[ -n "${CLANG_FLAGS}" ]]; then
      CLANG_FLAGS_ARG=( --clang-flags "${CLANG_FLAGS}" )
    fi

    local KLEE_FLAGS_ARG=()
    if [[ -n "${KLEE_FLAGS}" ]]; then
      KLEE_FLAGS_ARG=( --klee-flags "${KLEE_FLAGS}" )
    fi

    local QL_FILE_ARG=()
    if [[ -n "${QL_FILE}" ]]; then
      QL_FILE_ARG=( --ql-file "${QL_FILE}" )
    fi

    python3 "${SCRIPTS_DIR}/run_agent_for_spec.py" \
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
      "${CLANG_FLAGS_ARG[@]}" \
      --klee "${KLEE}" \
      "${KLEE_FLAGS_ARG[@]}" \
      "${QL_FILE_ARG[@]}" \
      --max-a "${MAX_A}" \
      --max-b "${MAX_B}" \
      --max-cycles "${MAX_CYCLES}" \
      --timeout "${TIMEOUT}" \
      --run-dir "${RUN_DIR}" \
      --summary-tsv "${SUMMARY_TSV}" \
      --project-bc "${PROJECT_BC}" > "${RUN_DIR}/batch_wrapper.log" 2>&1

    echo "[DONE] ${STEM}"
}
export -f process_spec

find "${SPEC_DIR}" -maxdepth 1 -type f -name "*.json" | sort | \
  xargs -P "${JOBS}" -I {} bash -c 'process_spec "$@"' _ {}

echo "[✓] Batch complete."