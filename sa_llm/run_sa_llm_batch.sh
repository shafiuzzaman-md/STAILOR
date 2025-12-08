#!/usr/bin/env bash
# sa_llm/run_sa_llm_batch.sh
#
# SA-driven LLM Harness (single-shot, per spec):
#   For each SA spec:
#     - Call gen_sa_llm_harness.py to generate a full harness C file
#     - Compile harness to LLVM bitcode
#     - Run KLEE on the harness
#     - Classify as:
#         E  = build/link failure (no bitcode or no KLEE output)
#         H0 = SE early stop, no SAILR asserts
#         H1 = SE timeout, no SAILR asserts
#         H2 = reachability assert only (SAILR_REACH_ASSERT)
#         H3 = vulnerability assert fired (SAILR_VULN_ASSERT)
#
# Outputs:
#   se_runs/sa_llm/<project>/
#     - <SPEC_ID>/harness.c
#     - <SPEC_ID>/bc/harness.bc
#     - <SPEC_ID>/klee-out/...
#     - summary.tsv, counts.tsv, time.log, errors.log
#
# Example:
#   sa_llm/run_sa_llm_batch.sh \
#     --project-name libxml2_62911_vul \
#     --src-root     dataset/libxml2_62911_vul \
#     --spec-dir     specs/libxml2_62911_vul \
#     --out-root     se_runs \
#     --clang        clang-14 \
#     --klee         klee \
#     --clang-flags  "-I/usr/include/libxml2 -Isa_manual -include sa_manual/sailr_assert.h" \
#     --klee-flags   "--search=nurs:covnew --max-time=360"

set -euo pipefail

PROJECT_NAME=""
SRC_ROOT=""
SPEC_DIR=""
OUT_ROOT="se_runs"
CLANG="clang"
KLEE="klee"
CLANG_FLAGS=""
KLEE_FLAGS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --spec-dir)     SPEC_DIR="$2";     shift 2 ;;
    --out-root)     OUT_ROOT="$2";     shift 2 ;;
    --clang)        CLANG="$2";        shift 2 ;;
    --klee)         KLEE="$2";         shift 2 ;;
    --clang-flags)  CLANG_FLAGS="$2";  shift 2 ;;
    --klee-flags)   KLEE_FLAGS="$2";   shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2; exit 1 ;;
    *)
      echo "Unexpected positional arg: $1" >&2; exit 1 ;;
  esac
done

if [[ -z "${PROJECT_NAME}" || -z "${SRC_ROOT}" || -z "${SPEC_DIR}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --project-name <id> \\
  --src-root     <project src root> \\
  --spec-dir     <dir with *.json specs> \\
  [--out-root    <root output dir, default=se_runs>] \\
  [--clang       <clang bin, default=clang>] \\
  [--klee        <klee bin, default=klee>] \\
  [--clang-flags "<extra clang flags>"] \\
  [--klee-flags  "<extra klee flags>"]

EOF
  exit 1
fi

if [[ ! -d "${SPEC_DIR}" ]]; then
  echo "ERROR: spec dir not found: ${SPEC_DIR}" >&2
  exit 1
fi

MODE="sa_llm"

echo "[i] MODE         = ${MODE}"
echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"
echo "[i] CLANG        = ${CLANG}"
echo "[i] KLEE         = ${KLEE}"

MODE_ROOT="${OUT_ROOT}/${MODE}/${PROJECT_NAME}"
ERROR_LOG="${MODE_ROOT}/errors.log"
TIME_LOG="${MODE_ROOT}/time.log"
SUMMARY_TSV="${MODE_ROOT}/summary.tsv"
COUNTS_TSV="${MODE_ROOT}/counts.tsv"

mkdir -p "${MODE_ROOT}"

echo "# Error log for MODE=${MODE}, PROJECT=${PROJECT_NAME}" > "${ERROR_LOG}"
{
  echo "# Time log for MODE=${MODE}, PROJECT=${PROJECT_NAME}"
  echo "# Columns: SPEC_ID  duration_seconds"
} > "${TIME_LOG}"

echo -e "SPEC_ID\tduration_seconds\tharness_status\thas_klee_last\tnum_err_files\tnum_vuln_assert\tnum_reach_assert\ttimeout_flag" > "${SUMMARY_TSV}"

TOTAL_TIME=0
COUNT_TIMED=0
TOTAL_SPECS=0

COUNT_E=0
COUNT_H0=0
COUNT_H1=0
COUNT_H2=0
COUNT_H3=0

shopt -s nullglob
for spec in "${SPEC_DIR}"/*.json; do
  SPEC_BASENAME=$(basename "${spec}")
  SPEC_ID="${SPEC_BASENAME%.json}"

  echo
  echo "[i] Spec: ${SPEC_BASENAME} (SPEC_ID=${SPEC_ID})"

  TOTAL_SPECS=$(( TOTAL_SPECS + 1 ))

  SPEC_OUT_DIR="${MODE_ROOT}/${SPEC_ID}"
  HARNESS_DIR="${SPEC_OUT_DIR}"
  BC_DIR="${SPEC_OUT_DIR}/bc"
  KLEE_OUT="${SPEC_OUT_DIR}/klee-out"

  mkdir -p "${HARNESS_DIR}" "${BC_DIR}"

  HARNESS_C="${HARNESS_DIR}/harness.c"
  HARNESS_BC="${BC_DIR}/harness.bc"

  START_TS=$(date +%s)

  ###########################################################################
  # 1) LLM harness generation
  ###########################################################################
  set +e
  PYTHONPATH=. python3 sa_llm/gen_sa_llm_harness.py \
    --src-root "${SRC_ROOT}" \
    --spec     "${spec}" \
    --out-c    "${HARNESS_C}"
  GEN_EXIT=$?
  set -e

  if [[ "${GEN_EXIT}" -ne 0 || ! -f "${HARNESS_C}" ]]; then
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ERR] Harness generation failed for ${SPEC_ID} (exit=${GEN_EXIT})"
    echo "[ERR] ${SPEC_ID}: harness generation failed (exit=${GEN_EXIT})" >> "${ERROR_LOG}"

    HARNESS_STATUS="E"
    HAS_KLEE_LAST=0
    NUM_ERR_FILES=0
    NUM_VULN_ASSERT=0
    NUM_REACH_ASSERT=0
    TIMEOUT_FLAG=0

    COUNT_E=$(( COUNT_E + 1 ))
    echo -e "${SPEC_ID}\t${DURATION}\t${HARNESS_STATUS}\t${HAS_KLEE_LAST}\t${NUM_ERR_FILES}\t${NUM_VULN_ASSERT}\t${NUM_REACH_ASSERT}\t${TIMEOUT_FLAG}" >> "${SUMMARY_TSV}"
    continue
  fi

  ###########################################################################
  # 2) Build harness -> bitcode
  ###########################################################################
  set +e
  ${CLANG} \
    ${CLANG_FLAGS} \
    -emit-llvm -g -O0 -c "${HARNESS_C}" \
    -o "${HARNESS_BC}"
  CLANG_EXIT=$?
  set -e

  if [[ "${CLANG_EXIT}" -ne 0 || ! -f "${HARNESS_BC}" ]]; then
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ERR] clang failed on harness for ${SPEC_ID} (exit=${CLANG_EXIT})"
    echo "[ERR] ${SPEC_ID}: harness compile failed (exit=${CLANG_EXIT})" >> "${ERROR_LOG}"

    HARNESS_STATUS="E"
    HAS_KLEE_LAST=0
    NUM_ERR_FILES=0
    NUM_VULN_ASSERT=0
    NUM_REACH_ASSERT=0
    TIMEOUT_FLAG=0

    COUNT_E=$(( COUNT_E + 1 ))
    echo -e "${SPEC_ID}\t${DURATION}\t${HARNESS_STATUS}\t${HAS_KLEE_LAST}\t${NUM_ERR_FILES}\t${NUM_VULN_ASSERT}\t${NUM_REACH_ASSERT}\t${TIMEOUT_FLAG}" >> "${SUMMARY_TSV}"
    continue
  fi

  ###########################################################################
  # 3) KLEE run
  ###########################################################################
  if [[ -d "${KLEE_OUT}" ]]; then
    TS=$(date +%Y%m%d_%H%M%S)
    echo "[i] Existing ${KLEE_OUT} for ${SPEC_ID}, renaming to ${KLEE_OUT}.bak_${TS}"
    mv "${KLEE_OUT}" "${KLEE_OUT}.bak_${TS}"
  fi

  RUN_START=$(date +%s)
  set +e
  ${KLEE} \
    --output-dir="${KLEE_OUT}" \
    ${KLEE_FLAGS} \
    "${HARNESS_BC}"
  KLEE_EXIT=$?
  set -e
  RUN_END=$(date +%s)

  END_TS=$(date +%s)
  DURATION=$(( END_TS - START_TS ))

  ###########################################################################
  # 4) Classification
  ###########################################################################
  HARNESS_STATUS="H0"
  HAS_KLEE_LAST=0
  NUM_ERR_FILES=0
  NUM_VULN_ASSERT=0
  NUM_REACH_ASSERT=0
  TIMEOUT_FLAG=0

  if [[ -d "${KLEE_OUT}" ]]; then
    HAS_KLEE_LAST=1
    NUM_ERR_FILES=$(find "${KLEE_OUT}" -maxdepth 1 -type f -name '*.err' 2>/dev/null | wc -l || echo 0)
    NUM_VULN_ASSERT=$(grep -R "SAILR_VULN_ASSERT" "${KLEE_OUT}" 2>/dev/null | wc -l || echo 0)
    NUM_REACH_ASSERT=$(grep -R "SAILR_REACH_ASSERT" "${KLEE_OUT}" 2>/dev/null | wc -l || echo 0)
    if grep -Rqs "HaltTimer" "${KLEE_OUT}" 2>/dev/null; then
      TIMEOUT_FLAG=1
    fi
  fi

  if [[ "${NUM_VULN_ASSERT}" -gt 0 ]]; then
    HARNESS_STATUS="H3"
    COUNT_H3=$(( COUNT_H3 + 1 ))
  elif [[ "${NUM_REACH_ASSERT}" -gt 0 ]]; then
    HARNESS_STATUS="H2"
    COUNT_H2=$(( COUNT_H2 + 1 ))
  elif [[ "${TIMEOUT_FLAG}" -eq 1 ]]; then
    HARNESS_STATUS="H1"
    COUNT_H1=$(( COUNT_H1 + 1 ))
  else
    HARNESS_STATUS="H0"
    COUNT_H0=$(( COUNT_H0 + 1 ))
  fi

  echo "[ok] ${SPEC_ID}: status=${HARNESS_STATUS}, duration=${DURATION}s"

  echo "${SPEC_ID}  ${DURATION}" >> "${TIME_LOG}"
  TOTAL_TIME=$(( TOTAL_TIME + DURATION ))
  COUNT_TIMED=$(( COUNT_TIMED + 1 ))

  echo -e "${SPEC_ID}\t${DURATION}\t${HARNESS_STATUS}\t${HAS_KLEE_LAST}\t${NUM_ERR_FILES}\t${NUM_VULN_ASSERT}\t${NUM_REACH_ASSERT}\t${TIMEOUT_FLAG}" >> "${SUMMARY_TSV}"
done
shopt -u nullglob

echo
if [[ "${COUNT_TIMED}" -gt 0 ]]; then
  AVG_TIME=$(( TOTAL_TIME / COUNT_TIMED ))
  echo "[summary] ${MODE} for PROJECT=${PROJECT_NAME}"
  echo "[summary] specs_timed=${COUNT_TIMED}, total_time=${TOTAL_TIME}s, avg_time=${AVG_TIME}s"

  {
    echo
    echo "# Summary (all non-E specs):"
    echo "# specs_timed=${COUNT_TIMED}"
    echo "# total_time_seconds=${TOTAL_TIME}"
    echo "# avg_time_seconds=${AVG_TIME}"
  } >> "${TIME_LOG}"
else
  echo "[summary] No non-E specs for PROJECT=${PROJECT_NAME}"
fi

{
  echo "class	count"
  echo "E	${COUNT_E}"
  echo "H0	${COUNT_H0}"
  echo "H1	${COUNT_H1}"
  echo "H2	${COUNT_H2}"
  echo "H3	${COUNT_H3}"
} > "${COUNTS_TSV}"

{
  echo
  echo "# Harness class counts (all attempted specs):"
  echo "# TOTAL_SPECS=${TOTAL_SPECS}"
  echo "# E  (build/link failure)                   = ${COUNT_E}"
  echo "# H0 (SE early stop, no SAILR asserts)      = ${COUNT_H0}"
  echo "# H1 (SE timeout, no SAILR asserts)         = ${COUNT_H1}"
  echo "# H2 (reach assert only)                    = ${COUNT_H2}"
  echo "# H3 (vuln assert fired)                    = ${COUNT_H3}"
} >> "${TIME_LOG}"

echo "[done] ${MODE} runs complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Error summary (if any) in: ${ERROR_LOG}"
echo "[info] Time stats             in: ${TIME_LOG}"
echo "[info] Per-spec summary       in: ${SUMMARY_TSV}"
echo "[info] Harness class counts   in: ${COUNTS_TSV}"
