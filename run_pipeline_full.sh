#!/usr/bin/env bash
#
# run_pipeline_full.sh
#
# End-to-end SAL-CEGIR pipeline for a single dataset + vuln rule + target.
# This script orchestrates:
#   1. Dataset extraction from cybergym
#   2. CodeQL static analysis
#   3. Vul-spec extraction
#   4. LLM refinement loop (delegated to run_llm_refinement.sh)
#
# Example:
#   ./run_pipeline_full.sh \
#     --task        arvo:62911 \
#     --project     libxml2 \
#     --rule        local.oob.memfunc.length-misuse \
#     --query-suites "rules/oob-pack/suites/oob-read.qls" \
#     --target      "62911/libxml2_62911_vul:dict.c:541" \
#     --spec        specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \
#     --model       deepseek-chat \
#     --api-base    https://api.deepseek.com
#
# Assumptions:
#   - fetch_cybergym_data.py, extract_from_cybergym.py are in $PWD
#   - codeql_scan.sh exists
#   - run_llm_refinement.sh is the previous run_pipeline.sh (LLM-only phase)
#   - CodeQL CLI is on $PATH
#   - $DEEPSEEK_API_KEY or $OPENAI_API_KEY is exported before you run this

set -euo pipefail

usage() {
  cat <<EOF
Usage: $0 \\
  --task arvo:62911 \\
  --project libxml2 \\
  --rule local.oob.memfunc.length-misuse \\
  --query-suites "rules/oob-pack/suites/oob-read.qls" \\
  --target "62911/libxml2_62911_vul:dict.c:541" \\
  --spec specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \\
  [--model deepseek-chat] \\
  [--api-base https://api.deepseek.com] \\
  [--repo-dir ./cybergym_data] \\
  [--dataset-root ./dataset] \\
  [--sa-root ./sa_outputs]

Required:
  --task         Task id in cybergym (e.g., arvo:62911)
  --project      Short project name (e.g., libxml2)
  --rule         Rule id (e.g., local.oob.memfunc.length-misuse)
  --query-suites Query suite(s) for CodeQL (e.g., rules/oob-pack/suites/oob-read.qls)
  --target       Target string "TASKNUM/PROJECT_VUL:file:line"
  --spec         Path to vul spec JSON produced by make_vul_specs.py

Optional:
  --model        LLM model name (default: deepseek-chat)
  --api-base     LLM API base URL (default: https://api.deepseek.com)
  --repo-dir     Where cybergym HF repo is cloned (default: ./cybergym_data)
  --dataset-root Where extracted datasets live (default: ./dataset)
  --sa-root      Where SA outputs live (default: ./sa_outputs)
EOF
}

# ---- defaults ----
MODEL="deepseek-chat"
API_BASE="https://api.deepseek.com"
REPO_DIR="./cybergym_data"
DATASET_ROOT="./dataset"
SA_ROOT="./sa_outputs"
QUERY_SUITES=""

TASK_ID=""
PROJECT_SHORT=""
RULE_ID=""
TARGET_VUL=""
SPEC_PATH=""

# ---- parse args ----
while [[ $# -gt 0 ]]; do
  case "$1" in
    --task)
      TASK_ID="$2"; shift 2;;
    --project)
      PROJECT_SHORT="$2"; shift 2;;
    --rule)
      RULE_ID="$2"; shift 2;;
    --query-suites)
      QUERY_SUITES="$2"; shift 2;;
    --target)
      TARGET_VUL="$2"; shift 2;;
    --spec)
      SPEC_PATH="$2"; shift 2;;
    --model)
      MODEL="$2"; shift 2;;
    --api-base)
      API_BASE="$2"; shift 2;;
    --repo-dir)
      REPO_DIR="$2"; shift 2;;
    --dataset-root)
      DATASET_ROOT="$2"; shift 2;;
    --sa-root)
      SA_ROOT="$2"; shift 2;;
    -h|--help)
      usage; exit 0;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1;;
  esac
done

# ---- required checks ----
: "${TASK_ID:?Missing --task}"
: "${PROJECT_SHORT:?Missing --project}"
: "${RULE_ID:?Missing --rule}"
: "${QUERY_SUITES:?Missing --query-suites}"
: "${TARGET_VUL:?Missing --target}"
: "${SPEC_PATH:?Missing --spec}"

TASK_NUM="${TASK_ID#*:}"                       # arvo:62911 -> 62911
PROJECT_NAME="${PROJECT_SHORT}_${TASK_NUM}"
SRC_ROOT="${DATASET_ROOT}/${TASK_NUM}/${PROJECT_NAME}"
SA_OUT_DIR="${SA_ROOT}/${PROJECT_NAME}"
SPEC_DIR="$(dirname "$SPEC_PATH")"

echo "[i] CONFIG:"
echo "  TASK_ID      = ${TASK_ID}"
echo "  TASK_NUM     = ${TASK_NUM}"
echo "  PROJECT_NAME = ${PROJECT_NAME}"
echo "  SRC_ROOT     = ${SRC_ROOT}"
echo "  SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "  SPEC_PATH    = ${SPEC_PATH}"
echo "  RULE_ID      = ${RULE_ID}"
echo "  QUERY_SUITES = ${QUERY_SUITES}"
echo "  MODEL        = ${MODEL}"
echo "  API_BASE     = ${API_BASE}"
echo

# ---- 1. Fetch metadata / ground truth from cybergym ----
echo "[i] Fetching cybergym metadata for ${TASK_ID}..."
python3 fetch_cybergym_data.py --repo-dir "${REPO_DIR}" "${TASK_ID}"

# ---- 2. Extract dataset for this task into local dataset tree ----
echo "[i] Extracting dataset snapshot..."
# If your script needs --data-root, adjust:
# python3 extract_from_cybergym.py "${TASK_ID}" "${PROJECT_SHORT}" --data-root "${REPO_DIR}/data"
python3 extract_from_cybergym.py "${TASK_ID}" "${PROJECT_SHORT}"

# ---- 3. Make sure required CodeQL packs are available (idempotent) ----
echo "[i] Ensuring CodeQL packs are installed..."
codeql pack download codeql/cpp-queries
codeql pack install rules/oob-pack
codeql pack install rules/uaf-pack \
  --search-path "/home/shafi/codeql-cli/codeql:/home/shafi/.codeql/packages"

# ---- 4. Run CodeQL scan for this project ----
echo "[i] Running CodeQL scan..."
chmod +x codeql_scan.sh
./codeql_scan.sh \
  PROJECT_NAME="${PROJECT_NAME}" \
  SRC_ROOT="${SRC_ROOT}" \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="${QUERY_SUITES}" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false

# ---- 5. Extract vuln specs for all findings in this run ----
echo "[i] Extracting vulnerability specs..."
mkdir -p "${SPEC_DIR}"
python3 scripts/make_vul_specs.py \
  --findings "${SA_OUT_DIR}/findings.json" \
  --facts "${SA_OUT_DIR}/fact_pack.json" \
  --out "${SPEC_DIR}"

# ---- 6. LLM refinement loop for the selected target/spec ----
echo "[i] Running LLM refinement pipeline for target:"
echo "    ${TARGET_VUL}"
echo "    spec: ${SPEC_PATH}"

chmod +x run_llm_refinement.sh

./run_llm_refinement.sh \
  --sa-out "${SA_OUT_DIR}" \
  --dataset "${DATASET_ROOT}" \
  --target "${TARGET_VUL}" \
  --rule "${RULE_ID}" \
  --spec "${SPEC_PATH}" \
  --model "${MODEL}" \
  --api-base "${API_BASE}"

echo "[i] Done. Artifacts under: ${SA_OUT_DIR}"
