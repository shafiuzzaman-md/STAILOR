#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   SA_OUT_DIR=sa_outputs \
#   DATASET_ROOT=dataset \
#   LLM_MODEL=deepseek-chat \
#   LLM_API_BASE=https://api.deepseek.com \
#   MAX_A=8 \
#   MAX_B=12 \
#   TIMEOUT=120 \
#   ./sailr_cegir/run_sailr_cegir_batch.sh 62911/libxml2_62911_vul local.oob.memfunc.length-misuse [spec_root]
#
# Defaults:
#   SPEC_ROOT = specs

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID [SPEC_ROOT]" >&2
  echo "  PROJECT_ID example: 62911/libxml2_62911_vul" >&2
  echo "  RULE_ID    example: local.oob.memfunc.length-misuse" >&2
  echo "  SPEC_ROOT  default: specs" >&2
  exit 1
fi

PROJECT_ID="$1"      # e.g. 62911/libxml2_62911_vul
RULE_ID="$2"         # e.g. local.oob.memfunc.length-misuse
SPEC_ROOT="${3:-specs}"

# Env-driven knobs (with sane defaults if not set)
SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
DATASET_ROOT="${DATASET_ROOT:-dataset}"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    RULE_ID      = ${RULE_ID}"
echo "    SPEC_ROOT    = ${SPEC_ROOT}"
echo "    SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "    DATASET_ROOT = ${DATASET_ROOT}"
echo "    LLM_MODEL    = ${LLM_MODEL}"
echo "    LLM_API_BASE = ${LLM_API_BASE}"
echo "    MAX_A        = ${MAX_A}"
echo "    MAX_B        = ${MAX_B}"
echo "    TIMEOUT      = ${TIMEOUT}"

PROJECT_BASENAME="$(basename "${PROJECT_ID}")"

# Figure out where the specs actually live:
if [ -d "${SPEC_ROOT}/${PROJECT_ID}" ]; then
  SPEC_DIR="${SPEC_ROOT}/${PROJECT_ID}"
elif [ -d "${SPEC_ROOT}/${PROJECT_BASENAME}" ]; then
  SPEC_DIR="${SPEC_ROOT}/${PROJECT_BASENAME}"
else
  echo "[!] Could not find spec directory for project." >&2
  echo "    Tried: ${SPEC_ROOT}/${PROJECT_ID}" >&2
  echo "           ${SPEC_ROOT}/${PROJECT_BASENAME}" >&2
  exit 1
fi

echo "[i] Using SPEC_DIR = ${SPEC_DIR}"

# Collect all specs for this RULE_ID
mapfile -t SPEC_FILES < <(
  find "${SPEC_DIR}" -maxdepth 1 -type f \
    -name "*_${RULE_ID}"'*.json' \
    | sort
)

if [ "${#SPEC_FILES[@]}" -eq 0 ]; then
  echo "[!] No spec files found in ${SPEC_DIR} matching rule '${RULE_ID}'" >&2
  exit 1
fi

echo "[i] Found ${#SPEC_FILES[@]} spec(s) to process."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for SPEC in "${SPEC_FILES[@]}"; do
  BASENAME="$(basename "${SPEC}")"
  STEM="${BASENAME%.json}"

  # Example STEM:
  #   000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5
  # Parse: <idx>_<file>_<line>_...
  REST="${STEM#*_}"             # drop leading "000_"
  FILE="${REST%%_*}"            # SAX2.c
  REST2="${REST#*_}"            # 2479_local.oob.memfunc...
  LINE="${REST2%%_*}"           # 2479

  TARGET_VUL="${PROJECT_ID}:${FILE}:${LINE}"

  echo
  echo "==============================================="
  echo "[*] Running SAILR-CEGIR for spec:"
  echo "    SPEC      = ${SPEC}"
  echo "    TARGET_VUL= ${TARGET_VUL}"
  echo "==============================================="

  SA_OUT_DIR="${SA_OUT_DIR}" \
  DATASET_ROOT="${DATASET_ROOT}" \
  TARGET_VUL="${TARGET_VUL}" \
  RULE_ID="${RULE_ID}" \
  SPEC="${SPEC}" \
  LLM_MODEL="${LLM_MODEL}" \
  LLM_API_BASE="${LLM_API_BASE}" \
  MAX_A="${MAX_A}" \
  MAX_B="${MAX_B}" \
  TIMEOUT="${TIMEOUT}" \
    bash "${SCRIPT_DIR}/run_full_cegir.sh"
done

echo
echo "[i] SAILR-CEGIR batch completed."
