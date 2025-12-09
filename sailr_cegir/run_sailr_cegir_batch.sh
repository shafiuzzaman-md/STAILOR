#!/usr/bin/env bash
#
# run_sailr_cegir_batch.sh
#
# Batch runner for SAILR CEGIR, analogous to sa_llm/run_sa_llm_batch.sh.
#
# It:
#   - iterates over specs in specs/<PROJECT>/
#   - parses the file/line/rule from the spec filename
#   - calls scripts/run_full_cegir.sh once per spec
#
# Env vars (similar spirit to SA-LLM):
#   SA_OUT_DIR    : root of static-analysis outputs (default: sa_outputs)
#   DATASET_ROOT  : root of source trees (default: dataset)
#   PROJECT       : project ID, e.g. "62911/libxml2_62911_vul"
#   LLM_MODEL     : model name for DeepSeek/OpenAI (default: deepseek-chat)
#   LLM_API_BASE  : API base URL (default: https://api.deepseek.com)
#   MAX_A         : max build-refinement iterations (Phase A) per spec (default: 8)
#   MAX_B         : max KLEE-refinement iterations (Phase B) per spec (default: 12)
#   TIMEOUT       : max seconds per CEGIR run (default: 120)
#
# CLI:
#   ./sailr_cegir/run_sailr_cegir_batch.sh <PROJECT> [RULE_ID_FILTER]
#
# Example:
#   SA_OUT_DIR=sa_outputs DATASET_ROOT=dataset \
#   LLM_MODEL=deepseek-chat LLM_API_BASE=https://api.deepseek.com \
#   MAX_A=8 MAX_B=12 TIMEOUT=120 \
#   ./sailr_cegir/run_sailr_cegir_batch.sh 62911/libxml2_62911_vul local.oob.memfunc.length-misuse
#

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <PROJECT> [RULE_ID_FILTER]" >&2
  exit 1
fi

PROJECT="$1"                      # e.g., 62911/libxml2_62911_vul
RULE_ID_FILTER="${2:-}"           # optional, e.g., local.oob.memfunc.length-misuse

SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
DATASET_ROOT="${DATASET_ROOT:-dataset}"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

SPEC_DIR="specs/${PROJECT}"

if [ ! -d "${SPEC_DIR}" ]; then
  echo "[!] Spec directory not found: ${SPEC_DIR}" >&2
  exit 1
fi

OUT_ROOT="se_runs/sailr/${PROJECT}"
mkdir -p "${OUT_ROOT}"

echo "[i] SAILR CEGIR batch:"
echo "    PROJECT      = ${PROJECT}"
echo "    SPEC_DIR     = ${SPEC_DIR}"
echo "    SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "    DATASET_ROOT = ${DATASET_ROOT}"
echo "    OUT_ROOT     = ${OUT_ROOT}"
echo "    LLM_MODEL    = ${LLM_MODEL}"
echo "    LLM_API_BASE = ${LLM_API_BASE}"
echo "    MAX_A        = ${MAX_A}"
echo "    MAX_B        = ${MAX_B}"
echo "    TIMEOUT      = ${TIMEOUT}"
if [ -n "${RULE_ID_FILTER}" ]; then
  echo "    RULE_FILTER  = ${RULE_ID_FILTER}"
fi
echo

shopt -s nullglob
for spec in "${SPEC_DIR}"/*.json; do
  stem="$(basename "${spec}" .json)"   # e.g., 000_dict.c_541_local.oob.memfunc.length-misuse

  # Parse "<idx>_<file>_<line>_<rule>"
  idx="${stem%%_*}"                    # 000
  rest="${stem#*_}"                    # dict.c_541_local.oob.memfunc.length-misuse

  VUL_FILE="${rest%%_*}"               # dict.c
  rest2="${rest#*_}"                   # 541_local.oob.memfunc.length-misuse

  VUL_LINE="${rest2%%_*}"              # 541
  RULE_ID_FROM_NAME="${rest2#*_}"      # local.oob.memfunc.length-misuse

  # Optional RULE_ID filter: skip if it doesn't match
  if [ -n "${RULE_ID_FILTER}" ] && [ "${RULE_ID_FROM_NAME}" != "${RULE_ID_FILTER}" ]; then
    continue
  fi

  TARGET_VUL="${PROJECT}:${VUL_FILE}:${VUL_LINE}"
  RUN_OUT_DIR="${OUT_ROOT}/${stem}"
  mkdir -p "${RUN_OUT_DIR}"

  echo "[i] === SAILR CEGIR: ${stem} ==="
  echo "    SPEC       = ${spec}"
  echo "    TARGET_VUL = ${TARGET_VUL}"
  echo "    RULE_ID    = ${RULE_ID_FROM_NAME}"
  echo "    RUN_OUT    = ${RUN_OUT_DIR}"
  echo

  SA_OUT_DIR="${SA_OUT_DIR}" \
  DATASET_ROOT="${DATASET_ROOT}" \
  PROJECT="${PROJECT}" \
  SPEC_PATH="${spec}" \
  SPEC_STEM="${stem}" \
  VUL_FILE="${VUL_FILE}" \
  VUL_LINE="${VUL_LINE}" \
  RULE_ID="${RULE_ID_FROM_NAME}" \
  TARGET_VUL="${TARGET_VUL}" \
  LLM_MODEL="${LLM_MODEL}" \
  LLM_API_BASE="${LLM_API_BASE}" \
  MAX_A="${MAX_A}" \
  MAX_B="${MAX_B}" \
  TIMEOUT="${TIMEOUT}" \
  SAILR_OUT_DIR="${RUN_OUT_DIR}" \
    bash scripts/run_full_cegir.sh

  echo
done
