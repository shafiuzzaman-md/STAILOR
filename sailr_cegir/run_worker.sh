#!/usr/bin/env bash
# sailr_cegir/run_worker.sh
# True single-spec runner (Robust & Resumable)

set -euo pipefail

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_FILE_PATH [QL_FILE]" >&2
  exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="$2"
export SPEC_FILE="$3"
export QL_FILE="${4:-}"

# Defaults
export SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
export DATASET_ROOT="$(realpath "${DATASET_ROOT:-dataset}")"
export LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
export LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
export MAX_A="${MAX_A:-30}"
export MAX_B="${MAX_B:-3}"
export MAX_CYCLES="${MAX_CYCLES:-2}"
export TIMEOUT="${TIMEOUT:-600}" # seconds
export CLANG="${CLANG:-clang-14}"

# Paths
export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="${REPO_ROOT}/sailr_cegir/scripts"
PROJECT_SLUG="$(basename "$PROJECT_ID")"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"
# [UPDATED] Allow overriding root for Multi-Stage Pipeline (Stage1/Stage2)
export SE_RUNS_ROOT="${SE_RUNS_ROOT:-se_runs}"
export MODE_ROOT="${SE_RUNS_ROOT}/sailr_cegir/${PROJECT_SLUG}"
export PROJECT_BC="${SRC_ROOT}/project.bc"

# [FIX] Ensure Project Output Directory Exists (Self-Sufficient)
mkdir -p "${MODE_ROOT}"

# [FIX] Define Summary TSV Location (Self-Sufficient)
if [ -z "${SUMMARY_TSV:-}" ]; then
    export SUMMARY_TSV="$(realpath "${MODE_ROOT}/summary.tsv")"
fi
touch "$SUMMARY_TSV"

# --- [FIXED] Robust Filename Parsing & Filtering ---
STEM="$(basename "${SPEC_FILE}" .json)"
RUN_DIR="${MODE_ROOT}/${STEM}"

# 1. Strip the leading index (e.g., "001_") to get "vi_mode.c_1884_..."
NAME_NO_ID="${STEM#*_}"

# 2. Extract Line Number: Find the digits immediately following the file extension
# Looks for pattern like ".c_1234_" or ".cpp_1234_"
VUL_LINE="$(echo "$NAME_NO_ID" | grep -oE '\.[a-z]+_[0-9]+_' | head -1 | grep -oE '[0-9]+' || echo "")"

# 3. Extract Filename: Everything before "_${VUL_LINE}_"
if [ -n "$VUL_LINE" ]; then
    VUL_FILE="${NAME_NO_ID%%_${VUL_LINE}_*}"
else
    # Fallback to simple cut if regex fails (e.g. filename has no extension)
    VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
    VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
fi

# [FIX] Skip temporary build files (Fixes FileNotFoundError)
if [[ "$VUL_FILE" == *"conftest.c"* ]]; then
    echo "[SKIP] Ignoring temporary build file: ${VUL_FILE}"
    exit 0
fi

TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"
# ---------------------------------------------------

mkdir -p "${RUN_DIR}"

# [FIX] Resumable Check: Skip if meta exists
if [ -f "${RUN_DIR}/run_meta.json" ]; then
    echo "[SKIP] Already finished: ${STEM}"
    exit 0
fi

# [FIX] Helper to safely append unique flags to avoid duplication
append_klee_flag() {
  local f="$1"
  # Only append if not already present (surrounded by spaces for safety)
  if [[ " ${KLEE_FLAGS:-} " != *" ${f} "* ]]; then
    KLEE_FLAGS="${KLEE_FLAGS:-} ${f}"
  fi
}

# [DEFAULT] Always enable POSIX runtime for user-space libraries (libxml2, etc)
# This prevents "undefined reference" errors for malloc, pthread, etc.
append_klee_flag "--libc=uclibc"
append_klee_flag "--posix-runtime"
append_klee_flag "--max-memory=4096"

# Trim leading/trailing whitespace to keep KLEE happy
KLEE_FLAGS="$(echo "${KLEE_FLAGS:-}" | xargs)"

CLANG_FLAGS_ARG=()
if [[ -n "${CLANG_FLAGS:-}" ]]; then CLANG_FLAGS_ARG=( --clang-flags "${CLANG_FLAGS}" ); fi

KLEE_FLAGS_ARG=()
if [[ -n "${KLEE_FLAGS:-}" ]]; then KLEE_FLAGS_ARG=( --klee-flags "${KLEE_FLAGS}" ); fi

QL_FILE_ARG=()
if [[ -n "${QL_FILE}" ]]; then QL_FILE_ARG=( --ql-file "${QL_FILE}" ); fi

BUILD_PROJECT_BC_CMD_ARG=()
if [[ -n "${BUILD_PROJECT_BC_CMD:-}" ]]; then
  BUILD_PROJECT_BC_CMD_ARG=( --build-project-bc-cmd "${BUILD_PROJECT_BC_CMD}" )
fi


echo "[WORKER] Processing: ${STEM} (File: ${VUL_FILE}, Line: ${VUL_LINE})"

# Call Python Driver
python3 "${SCRIPTS_DIR}/run_agent_for_spec.py" \
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
  "${CLANG_FLAGS_ARG[@]}" \
  --klee "${KLEE:-klee}" \
  "${KLEE_FLAGS_ARG[@]}" \
  "${QL_FILE_ARG[@]}" \
  --max-a "${MAX_A}" \
  --max-b "${MAX_B}" \
  --max-cycles "${MAX_CYCLES}" \
  --timeout "${TIMEOUT}" \
  --run-dir "${RUN_DIR}" \
  --project-bc "${PROJECT_BC}" \
  "${BUILD_PROJECT_BC_CMD_ARG[@]}" \
  --summary-tsv "${SUMMARY_TSV}"