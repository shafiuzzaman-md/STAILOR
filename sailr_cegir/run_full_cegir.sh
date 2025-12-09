#!/usr/bin/env bash
#
# run_full_cegir.sh
#
# Run the full SAILR-CEGIR pipeline for a single spec / vulnerability:
#   1. Entry-point inference / plan enrich
#   2. Instrument TU + helper stubs
#   3. Derive & inject assertion
#   4. Grooming / symbolic declarations
#   5. Prepare Loop-B prompt
#   6. Loop-B: automatic build/KLEE error fixing + CEGIR path search
#
# Required ENV:
#   DATASET_ROOT  - path to dataset root (e.g., dataset)
#   TARGET_VUL    - "<PROJECT>:<file>:<line>"
#   RULE_ID       - SA rule id (e.g., local.oob.memfunc.length-misuse)
#
# Optional ENV:
#   SA_OUT_DIR    - raw SA outputs (if available, else unused)
#   SPEC_OVERRIDE - path to a specific spec JSON (from ./specs/...)
#   LLM_MODEL, LLM_API_BASE, MAX_A, MAX_B, TIMEOUT

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

# ---- Env / defaults ---------------------------------------------------------

SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
DATASET_ROOT="${DATASET_ROOT:-dataset}"
TARGET_VUL="${TARGET_VUL:?TARGET_VUL must be set (e.g., 62911/libxml2_62911_vul:dict.c:541)}"
RULE_ID="${RULE_ID:?RULE_ID must be set (e.g., local.oob.memfunc.length-misuse)}"
SPEC_OVERRIDE="${SPEC_OVERRIDE:-}"

LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

# PROJECT is the part before the first colon of TARGET_VUL
PROJECT="${TARGET_VUL%%:*}"

SRC_ROOT="${REPO_ROOT}/${DATASET_ROOT}/${PROJECT}"

# Where to put all intermediate SAILR-CEGIR artifacts for this project
OUT_PROJECT="${REPO_ROOT}/se_runs/sailr_cegir/${PROJECT}"
mkdir -p "${OUT_PROJECT}"
cd "${OUT_PROJECT}"

echo "[i] CONFIG:"
echo "    SA_OUT_DIR    = ${SA_OUT_DIR}"
echo "    DATASET_ROOT  = ${DATASET_ROOT}"
echo "    PROJECT       = ${PROJECT}"
echo "    SRC_ROOT      = ${SRC_ROOT}"
echo "    TARGET_VUL    = ${TARGET_VUL}"
echo "    RULE_ID       = ${RULE_ID}"
echo "    SPEC_OVERRIDE = ${SPEC_OVERRIDE:-<auto from SA_OUT_DIR or TARGET_VUL>}"
echo "    LLM_MODEL     = ${LLM_MODEL}"
echo "    LLM_API_BASE  = ${LLM_API_BASE}"
echo "    MAX_A         = ${MAX_A}"
echo "    MAX_B         = ${MAX_B}"
echo "    TIMEOUT       = ${TIMEOUT}"
echo

# ---- Run the Python orchestrator -------------------------------------------

export PYTHONPATH="${SCRIPT_DIR}:${PYTHONPATH:-}"
export LLM_MODEL
export LLM_API_BASE
export MAX_A
export MAX_B
export TIMEOUT

python3 "${SCRIPT_DIR}/scripts/run_cegir.py" \
  --sa-out "${SA_OUT_DIR}" \
  --dataset-root "${DATASET_ROOT}" \
  --project "${PROJECT}" \
  --src-root "${SRC_ROOT}" \
  --target-vul "${TARGET_VUL}" \
  --rule-id "${RULE_ID}" \
  ${SPEC_OVERRIDE:+--spec "${SPEC_OVERRIDE}"}
