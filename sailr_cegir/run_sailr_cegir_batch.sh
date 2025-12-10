#!/usr/bin/env bash
set -euo pipefail

# Batch runner for SAILR-CEGIR.
# Walks specs/<project_basename>/*.json and runs run_full_cegir.sh for each.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <PROJECT_ID> <RULE_ID> <SPEC_ROOT>" >&2
  echo "  PROJECT_ID  e.g., 62911/libxml2_62911_vul" >&2
  echo "  RULE_ID     e.g., local.oob.memfunc.length-misuse" >&2
  echo "  SPEC_ROOT   e.g., specs" >&2
  exit 1
fi

PROJECT_ID="$1"   # 62911/libxml2_62911_vul
RULE_ID="$2"
SPEC_ROOT="$3"

: "${SA_OUT_DIR:?SA_OUT_DIR must be set}"
: "${DATASET_ROOT:?DATASET_ROOT must be set}"
: "${LLM_MODEL:?LLM_MODEL must be set}"
: "${LLM_API_BASE:?LLM_API_BASE must be set}"

MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

# For specs layout: specs/libxml2_62911_vul/*.json
PROJECT_BASENAME="${PROJECT_ID#*/}"           # libxml2_62911_vul
SPEC_DIR="${SPEC_ROOT}/${PROJECT_BASENAME}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    RULE_ID      = ${RULE_ID}"
echo "    SPEC_ROOT    = ${SPEC_ROOT}"
echo "    SPEC_DIR     = ${SPEC_DIR}"
echo "    SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "    DATASET_ROOT = ${DATASET_ROOT}"
echo "    LLM_MODEL    = ${LLM_MODEL}"
echo "    LLM_API_BASE = ${LLM_API_BASE}"
echo "    MAX_A        = ${MAX_A}"
echo "    MAX_B        = ${MAX_B}"
echo "    TIMEOUT      = ${TIMEOUT}"

if [ ! -d "${SPEC_DIR}" ]; then
  echo "[!] Spec dir not found: ${SPEC_DIR}" >&2
  exit 1
fi

shopt -s nullglob
SPECS=( "${SPEC_DIR}"/*.json )
shopt -u nullglob

if [ "${#SPECS[@]}" -eq 0 ]; then
  echo "[!] No spec json files found in ${SPEC_DIR}" >&2
  exit 1
fi

echo "[i] Found ${#SPECS[@]} spec(s) to process."

for SPEC_PATH in "${SPECS[@]}"; do
  BASENAME="$(basename "${SPEC_PATH}")"
  STEM="${BASENAME%.json}"          # 000_SAX2.c_2479_local.oob...
  STEM_NOIDX="${STEM#*_}"           # SAX2.c_2479_local.oob...

  # Parse <file> and <line> from SAX2.c_2479_local...
  #   FILE = up to next '_'
  VUL_FILE="${STEM_NOIDX%%_*}"      # SAX2.c
  REST="${STEM_NOIDX#*_}"           # 2479_local.oob...
  VUL_LINE="${REST%%_*}"            # 2479

  SPEC_STEM="${STEM_NOIDX}"         # SAX2.c_2479_local.oob...

  TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"

  echo
  echo "==============================================="
  echo "[*] Running SAILR-CEGIR for spec:"
  echo "    SPEC       = ${SPEC_PATH}"
  echo "    SPEC_STEM  = ${SPEC_STEM}"
  echo "    TARGET_VUL = ${TARGET_VUL}"
  echo "==============================================="

  SA_OUT_DIR="${SA_OUT_DIR}" \
  DATASET_ROOT="${DATASET_ROOT}" \
  TARGET_VUL="${TARGET_VUL}" \
  RULE_ID="${RULE_ID}" \
  LLM_MODEL="${LLM_MODEL}" \
  LLM_API_BASE="${LLM_API_BASE}" \
  MAX_A="${MAX_A}" \
  MAX_B="${MAX_B}" \
  TIMEOUT="${TIMEOUT}" \
  SPEC="${SPEC_PATH}" \
  SPEC_STEM="${SPEC_STEM}" \
    bash sailr_cegir/run_full_cegir.sh
done
