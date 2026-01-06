#!/usr/bin/env bash
# sailr_cegir/run_worker.sh
# True single-spec runner

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
export MAX_A="${MAX_A:-10}"
export MAX_B="${MAX_B:-3}"
export MAX_CYCLES="${MAX_CYCLES:-2}"
export TIMEOUT="${TIMEOUT:-300}"
export CLANG="${CLANG:-clang-14}"

# Paths
export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="${REPO_ROOT}/sailr_cegir/scripts"
PROJECT_SLUG="$(basename "$PROJECT_ID")"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"
export MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
export PROJECT_BC="${SRC_ROOT}/project.bc"

# Parse Filename
STEM="$(basename "${SPEC_FILE}" .json)"
RUN_DIR="${MODE_ROOT}/${STEM}"
# Extract Vulnerability info from filename (025_dict.c_541...)
VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"

mkdir -p "${RUN_DIR}"

# Optional Flags
CLANG_FLAGS_ARG=()
if [[ -n "${CLANG_FLAGS:-}" ]]; then CLANG_FLAGS_ARG=( --clang-flags "${CLANG_FLAGS}" ); fi
KLEE_FLAGS_ARG=()
if [[ -n "${KLEE_FLAGS:-}" ]]; then KLEE_FLAGS_ARG=( --klee-flags "${KLEE_FLAGS}" ); fi
QL_FILE_ARG=()
if [[ -n "${QL_FILE}" ]]; then QL_FILE_ARG=( --ql-file "${QL_FILE}" ); fi

echo "[WORKER] Processing: ${STEM}"

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
  --summary-tsv "${SUMMARY_TSV:-}"