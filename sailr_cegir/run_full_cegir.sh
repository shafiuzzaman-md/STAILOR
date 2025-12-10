#!/usr/bin/env bash
set -euo pipefail

# This is the single-spec wrapper for SAILR-CEGIR.
# It expects the main config to be provided via env + SPEC info via env.

# Required env
: "${SA_OUT_DIR:?SA_OUT_DIR is required}"
: "${DATASET_ROOT:?DATASET_ROOT is required}"
: "${TARGET_VUL:?TARGET_VUL is required (PROJECT:FILE:LINE)}"
: "${RULE_ID:?RULE_ID is required}"
: "${LLM_MODEL:?LLM_MODEL is required}"
: "${LLM_API_BASE:?LLM_API_BASE is required}"

# Optional env (with defaults)
MAX_A="${MAX_A:-8}"
MAX_B="${MAX_B:-12}"
TIMEOUT="${TIMEOUT:-120}"

# Spec info must be provided by the caller (batch script)
: "${SPEC:?SPEC (path to SA spec json) is required}"
SPEC_STEM="${SPEC_STEM:-$(basename "${SPEC%.json}")}"

# Parse TARGET_VUL:  PROJECT:VUL_FILE:VUL_LINE
PROJECT="${TARGET_VUL%%:*}"          # 62911/libxml2_62911_vul
REST="${TARGET_VUL#*:}"              # SAX2.c:2479
VUL_FILE="${REST%%:*}"               # SAX2.c
VUL_LINE="${REST##*:}"               # 2479

SRC_ROOT="${DATASET_ROOT}/${PROJECT}"

# Where to put SE results
OUT_DIR="se_runs/sailr_cegir/${PROJECT}/${SPEC_STEM}"
WORK_DIR="sailr_cegir"

mkdir -p "${OUT_DIR}"
mkdir -p "${WORK_DIR}"

echo "[i] CONFIG (run_full_cegir.sh):"
echo "    SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "    DATASET_ROOT = ${DATASET_ROOT}"
echo "    PROJECT      = ${PROJECT}"
echo "    SRC_ROOT     = ${SRC_ROOT}"
echo "    TARGET_VUL   = ${TARGET_VUL}"
echo "    RULE_ID      = ${RULE_ID}"
echo "    SPEC         = ${SPEC}"
echo "    SPEC_STEM    = ${SPEC_STEM}"
echo "    LLM_MODEL    = ${LLM_MODEL}"
echo "    LLM_API_BASE = ${LLM_API_BASE}"
echo "    MAX_A        = ${MAX_A}"
echo "    MAX_B        = ${MAX_B}"
echo "    TIMEOUT      = ${TIMEOUT}"
echo "    OUT_DIR      = ${OUT_DIR}"
echo "    WORK_DIR     = ${WORK_DIR}"

python3 "${WORK_DIR}/scripts/run_cegir.py" \
  --sa-out-dir   "${SA_OUT_DIR}" \
  --dataset-root "${DATASET_ROOT}" \
  --project      "${PROJECT}" \
  --src-root     "${SRC_ROOT}" \
  --spec         "${SPEC}" \
  --spec-stem    "${SPEC_STEM}" \
  --vul-file     "${VUL_FILE}" \
  --vul-line     "${VUL_LINE}" \
  --rule-id      "${RULE_ID}" \
  --target-vul   "${TARGET_VUL}" \
  --llm-model    "${LLM_MODEL}" \
  --llm-api-base "${LLM_API_BASE}" \
  --max-a        "${MAX_A}" \
  --max-b        "${MAX_B}" \
  --timeout      "${TIMEOUT}" \
  --out-dir      "${OUT_DIR}" \
  --work-dir     "${WORK_DIR}"
