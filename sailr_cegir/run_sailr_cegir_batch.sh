#!/usr/bin/env bash
set -euo pipefail

# SAILR-CEGIR batch runner
#
# Usage:
#   SA_OUT_DIR=sa_outputs \
#   DATASET_ROOT=dataset \
#   LLM_MODEL=deepseek-chat \
#   LLM_API_BASE=https://api.deepseek.com \
#   CLANG_FLAGS="-I/usr/include/libxml2" \
#   KLEE_FLAGS="--search=nurs:covnew --max-time=3600 --external-calls=all" \
#   MAX_A=8 \
#   MAX_B=12 \
#   TIMEOUT=120 \
#   bash sailr_cegir/run_sailr_cegir_batch.sh \
#     62911/libxml2_62911_vul \
#     local.oob.memfunc.length-misuse \
#     specs
#
# This will:
#   - Iterate over specs in specs/<PROJECT_SLUG>/*.json
#   - For each spec, run sailr_cegir/scripts/run_agent_for_spec.py
#   - Write per-spec runs under se_runs/sailr_cegir/<PROJECT_SLUG>/<SPEC_STEM>/
#   - Maintain a summary.tsv with E/H0/H1/H2 and simple KLEE stats.

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

MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

CLANG="${CLANG:-clang-14}"
KLEE="${KLEE:-klee}"
CLANG_FLAGS="${CLANG_FLAGS:-}"
KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=3600 --external-calls=all}"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

PROJECT_SLUG="$(basename "$PROJECT_ID")"   # e.g., libxml2_62911_vul
SPEC_DIR="${SPEC_ROOT}/${PROJECT_SLUG}"
SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"

MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
SUMMARY_TSV="${MODE_ROOT}/summary.tsv"

mkdir -p "${MODE_ROOT}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    PROJECT_SLUG = ${PROJECT_SLUG}"
echo "    RULE_ID      = ${RULE_ID}"
echo "    SPEC_ROOT    = ${SPEC_ROOT}"
echo "    SPEC_DIR     = ${SPEC_DIR}"
echo "    SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "    SA_PROJECT   = ${SA_PROJECT_DIR}"
echo "    DATASET_ROOT = ${DATASET_ROOT}"
echo "    SRC_ROOT     = ${SRC_ROOT}"
echo "    LLM_MODEL    = ${LLM_MODEL}"
echo "    LLM_API_BASE = ${LLM_API_BASE}"
echo "    MAX_A        = ${MAX_A}"
echo "    MAX_B        = ${MAX_B}"
echo "    TIMEOUT      = ${TIMEOUT}"
echo "    CLANG        = ${CLANG}"
echo "    KLEE         = ${KLEE}"
echo "    CLANG_FLAGS  = ${CLANG_FLAGS}"
echo "    KLEE_FLAGS   = ${KLEE_FLAGS}"
echo "    MODE_ROOT    = ${MODE_ROOT}"
echo "    SUMMARY_TSV  = ${SUMMARY_TSV}"

if [ ! -d "${SPEC_DIR}" ]; then
  echo "[!] Spec directory does not exist: ${SPEC_DIR}" >&2
  exit 1
fi

if [ ! -d "${SA_PROJECT_DIR}" ]; then
  echo "[!] SA project directory not found: ${SA_PROJECT_DIR}" >&2
  echo "    Expected to contain fact_pack.json and compile_commands.json" >&2
  exit 1
fi

# Fresh summary for this run
rm -f "${SUMMARY_TSV}"

mapfile -t SPECS < <(find "${SPEC_DIR}" -maxdepth 1 -type f -name "*.json" | sort)

if [ "${#SPECS[@]}" -eq 0 ]; then
  echo "[!] No specs found under ${SPEC_DIR}" >&2
  exit 1
fi

echo "[i] Found ${#SPECS[@]} spec(s) to process."

for SPEC in "${SPECS[@]}"; do
  STEM="$(basename "${SPEC}" .json)"   # e.g. 000_SAX2.c_2479_local.oob...

  # Heuristic: filename layout "IDX_FILE_LINE_..."
  VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"   # SAX2.c
  VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"   # 2479

  TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"
  RUN_DIR="${MODE_ROOT}/${STEM}"

  echo
  echo "==============================================="
  echo "[*] Running SAILR Agent for spec:"
  echo "    SPEC       = ${SPEC}"
  echo "    STEM       = ${STEM}"
  echo "    VUL_FILE   = ${VUL_FILE}"
  echo "    VUL_LINE   = ${VUL_LINE}"
  echo "    TARGET_VUL = ${TARGET_VUL}"
  echo "    RUN_DIR    = ${RUN_DIR}"
  echo "==============================================="

  mkdir -p "${RUN_DIR}"

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
    --clang-flags "${CLANG_FLAGS}" \
    --klee "${KLEE}" \
    --klee-flags "${KLEE_FLAGS}" \
    --max-a "${MAX_A}" \
    --max-b "${MAX_B}" \
    --timeout "${TIMEOUT}" \
    --run-dir "${RUN_DIR}" \
    --summary-tsv "${SUMMARY_TSV}"
done

echo
echo "[✓] SAILR-CEGIR batch completed. Summary at: ${SUMMARY_TSV}"
