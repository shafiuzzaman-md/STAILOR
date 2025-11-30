#!/usr/bin/env bash
#
# run_pipeline_all_specs.sh
#
# Full pipeline for **all vulnerability specs** of a given task/project:
#   - extract dataset
#   - fetch ARVO metadata
#   - run CodeQL
#   - generate specs
#   - run LLM refinement for EACH spec JSON
#
# Example:
#   ./run_pipeline_all_specs.sh \
#     --task        arvo:62911 \
#     --project     libxml2 \
#     --rule        local.oob.memfunc.length-misuse \
#     --query-suites "rules/oob-pack/suites/oob-read.qls" \
#     --model       deepseek-chat \
#     --api-base    https://api.deepseek.com
#

set -euo pipefail

DATASET_ROOT="dataset"
SA_OUT_ROOT="sa_outputs"
CYBERGYM_REPO_DIR="./cybergym_data"

TASK=""
PROJECT=""
RULE=""
QUERY_SUITES=""
MODEL=""
API_BASE=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --task)         TASK="$2"; shift 2 ;;
    --project)      PROJECT="$2"; shift 2 ;;
    --rule)         RULE="$2"; shift 2 ;;
    --query-suites) QUERY_SUITES="$2"; shift 2 ;;
    --model)        MODEL="$2"; shift 2 ;;
    --api-base)     API_BASE="$2"; shift 2 ;;
    --dataset-root) DATASET_ROOT="$2"; shift 2 ;;
    --sa-root)      SA_OUT_ROOT="$2"; shift 2 ;;
    --cybergym-repo) CYBERGYM_REPO_DIR="$2"; shift 2 ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

if [[ -z "$TASK" || -z "$PROJECT" || -z "$RULE" || -z "$QUERY_SUITES" || -z "$MODEL" ]]; then
  echo "Usage: $0 \\
    --task arvo:62911 \\
    --project libxml2 \\
    --rule local.oob.memfunc.length-misuse \\
    --query-suites \"rules/oob-pack/suites/oob-read.qls\" \\
    --model deepseek-chat \\
    [--api-base https://api.deepseek.com] \\
    [--dataset-root dataset] \\
    [--sa-root sa_outputs] \\
    [--cybergym-repo ./cybergym_data]" >&2
  exit 1
fi

TASK_ID="${TASK#*:}"
PROJECT_NAME="${PROJECT}_${TASK_ID}_vul"

SRC_ROOT="${DATASET_ROOT}/${TASK_ID}/${PROJECT_NAME}"
SA_OUT_DIR="${SA_OUT_ROOT}/${PROJECT_NAME}"
SPEC_DIR="specs/${PROJECT_NAME}"

echo "[i] CONFIG (batch):"
echo "  TASK          = ${TASK}"
echo "  TASK_ID       = ${TASK_ID}"
echo "  PROJECT       = ${PROJECT}"
echo "  PROJECT_NAME  = ${PROJECT_NAME}"
echo "  RULE          = ${RULE}"
echo "  QUERY_SUITES  = ${QUERY_SUITES}"
echo "  MODEL         = ${MODEL}"
echo "  API_BASE      = ${API_BASE:-<default>}"
echo "  DATASET_ROOT  = ${DATASET_ROOT}"
echo "  SA_OUT_ROOT   = ${SA_OUT_ROOT}"
echo "  CYBERGYM_REPO = ${CYBERGYM_REPO_DIR}"
echo

# ---------- Step 1: Extract dataset ----------
echo "[i] Step 1: Extracting dataset from CyberGym..."
python3 extract_from_cybergym.py "${TASK}" "${PROJECT}"

# ---------- Step 2: Fetch ARVO metadata ----------
echo "[i] Step 2: Fetching CyberGym metadata..."
python3 fetch_cybergym_data.py --repo-dir "${CYBERGYM_REPO_DIR}" "${TASK}"

# ---------- Step 3: Run CodeQL once ----------
echo "[i] Step 3: Running CodeQL scan..."
chmod +x codeql_scan.sh

./codeql_scan.sh \
  PROJECT_NAME="${PROJECT_NAME}" \
  SRC_ROOT="${SRC_ROOT}" \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="${QUERY_SUITES}" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false

# ---------- Step 4: Generate ALL specs ----------
echo "[i] Step 4: Generating vulnerability specs..."
mkdir -p "${SPEC_DIR}"

python3 scripts/make_vul_specs.py \
  --findings "${SA_OUT_DIR}/findings.json" \
  --facts    "${SA_OUT_DIR}/fact_pack.json" \
  --out      "${SPEC_DIR}"

# ---------- Step 5: LLM refinement for each spec ----------
echo "[i] Step 5: Running LLM refinement for all specs in ${SPEC_DIR} ..."
chmod +x run_llm_refinement.sh

shopt -s nullglob
SPEC_FILES=( "${SPEC_DIR}"/*.json )
shopt -u nullglob

if [[ ${#SPEC_FILES[@]} -eq 0 ]]; then
  echo "[!] No specs found in ${SPEC_DIR}; nothing to refine."
  exit 0
fi

for spec in "${SPEC_FILES[@]}"; do
  # Each spec JSON should already have a "target" field with "id:file:line".
  TARGET=$(jq -r '.target' "${spec}")
  if [[ -z "${TARGET}" || "${TARGET}" == "null" ]]; then
    echo "[!] Skipping ${spec}: no .target field"
    continue
  fi

  echo
  echo "=== [LLM] Refining spec: ${spec}"
  echo "    target: ${TARGET}"

  ./run_llm_refinement.sh \
    --sa-out  "${SA_OUT_DIR}" \
    --dataset "${DATASET_ROOT}" \
    --target  "${TARGET}" \
    --rule    "${RULE}" \
    --spec    "${spec}" \
    --model   "${MODEL}" \
    ${API_BASE:+--api-base "${API_BASE}"}
done

echo
echo "[✓] Done: full batch pipeline completed for all specs in ${SPEC_DIR}"
