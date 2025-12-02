#!/usr/bin/env bash
#
# run_llm_entry_batch.sh
#
# Run the LLM Harness (entrypoint-only) baseline for all specs
# under a spec directory.
#
# For each spec:
#   specs/<project_name>/<SPEC_ID>.json
# expects driver at:
#   drivers/llm_entry/<project_name>/<SPEC_ID>.c
#
# Results go under:
#   se_runs/llm_entry/<project_name>/<SPEC_ID>/
#
# Errors are logged (but do not stop the loop) to:
#   se_runs/llm_entry/<project_name>/errors.log
#
# Per-spec and average runtimes are logged to:
#   se_runs/llm_entry/<project_name>/time.log
#
# Per-spec summary:
#   se_runs/llm_entry/<project_name>/summary.tsv
#
# Counts by harness_class (H0–H4, E):
#   se_runs/llm_entry/<project_name>/counts.tsv

set -uo pipefail   # drop -e so we can handle errors manually

PROJECT_NAME=""
SRC_ROOT=""
SPEC_DIR=""
OUT_ROOT="se_runs"
CLANG_FLAGS=""
KLEE_FLAGS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --spec-dir)     SPEC_DIR="$2";     shift 2 ;;
    --out-root)     OUT_ROOT="$2";     shift 2 ;;
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
  [--clang-flags \"...\"] \\
  [--klee-flags  \"...\"]

EOF
  exit 1
fi

if [[ ! -d "${SPEC_DIR}" ]]; then
  echo "ERROR: spec dir not found: ${SPEC_DIR}" >&2
  exit 1
fi

MODE="llm_entry"

echo "[i] MODE         = ${MODE}"
echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"

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

# Per-spec summary header
echo -e "SPEC_ID\tduration_seconds\texit_code\tharness_class\thas_bitcode\thas_klee_last\tnum_target_assert_err\tnum_vuln_assert_err\tnum_any_assert_err" > "${SUMMARY_TSV}"

TOTAL_TIME=0
COUNT_OK=0
TOTAL_SPECS=0

# Harness class counts
COUNT_H0=0
COUNT_H1=0
COUNT_H2=0
COUNT_H3=0
COUNT_H4=0
COUNT_E=0

classify_harness() {
  local exit_code="$1"
  local has_bitcode="$2"
  local has_klee_last="$3"
  local num_target_assert_err="$4"
  local num_vuln_assert_err="$5"
  local num_any_assert_err="$6"

  # Tool/harness failure (won't be counted as a KLEE outcome)
  if [[ "${exit_code}" -ne 0 ]]; then
    echo "E"
    return
  fi

  # H0: Harness Build Failure (no bitcode)
  if [[ "${has_bitcode}" -eq 0 ]]; then
    echo "H0"
    return
  fi

  # H1: Symbolic Setup Failure (bitcode exists, but no paths / no klee-last)
  if [[ "${has_klee_last}" -eq 0 ]]; then
    echo "H1"
    return
  fi

  # At this point: bitcode exists and klee-last exists

  # H4: Bug Confirmed (vulnerability assertion fired)
  if [[ "${num_vuln_assert_err}" -gt 0 ]]; then
    echo "H4"
    return
  fi

  # H3: Target Reached but bug not confirmed (target assert-only)
  if [[ "${num_target_assert_err}" -gt 0 ]]; then
    echo "H3"
    return
  fi

  # H2: Target not reached (no asserts fired at all)
  if [[ "${num_any_assert_err}" -eq 0 ]]; then
    echo "H2"
    return
  fi

  # Fallback, should not really happen
  echo "H2"
}

shopt -s nullglob
for spec in "${SPEC_DIR}"/*.json; do
  SPEC_BASENAME=$(basename "${spec}")
  SPEC_ID="${SPEC_BASENAME%.json}"
  DRIVER="drivers/${MODE}/${PROJECT_NAME}/${SPEC_ID}.c"

  echo
  echo "[i] Spec: ${SPEC_BASENAME} (SPEC_ID=${SPEC_ID})"

  if [[ ! -f "${DRIVER}" ]]; then
    echo "[skip] ${MODE}: driver not found (${DRIVER})"
    echo "[skip] ${SPEC_ID}: driver not found (${DRIVER})" >> "${ERROR_LOG}"
    continue
  fi

  TOTAL_SPECS=$(( TOTAL_SPECS + 1 ))

  echo "[run] ${MODE}: ${DRIVER}"

  START_TS=$(date +%s)
  if ./run_se_driver.sh \
        --project-name "${PROJECT_NAME}" \
        --spec-id      "${SPEC_ID}" \
        --mode         "${MODE}" \
        --driver       "${DRIVER}" \
        --src-root     "${SRC_ROOT}" \
        --out-root     "${OUT_ROOT}" \
        --clang-flags  "${CLANG_FLAGS}" \
        --klee-flags   "${KLEE_FLAGS}"; then
    EXIT_CODE=0
  else
    EXIT_CODE=$?
  fi
  END_TS=$(date +%s)
  DURATION=$(( END_TS - START_TS ))

  OUT_DIR="${OUT_ROOT}/${MODE}/${PROJECT_NAME}/${SPEC_ID}"

  HAS_BITCODE=0
  if [[ -d "${OUT_DIR}/build" ]] && ls "${OUT_DIR}/build"/*.bc >/dev/null 2>&1; then
    HAS_BITCODE=1
  fi

  HAS_KLEE_LAST=0
  if [[ -d "${OUT_DIR}/klee-last" ]]; then
    HAS_KLEE_LAST=1
  fi

  NUM_TARGET_ASSERT_ERR=0
  NUM_VULN_ASSERT_ERR=0
  NUM_ANY_ASSERT_ERR=0

  if [[ -d "${OUT_DIR}" ]]; then
    NUM_TARGET_ASSERT_ERR=$(find "${OUT_DIR}" -maxdepth 3 -type f -name '*.target.assert.err' 2>/dev/null | wc -l || echo 0)
    NUM_VULN_ASSERT_ERR=$(find "${OUT_DIR}" -maxdepth 3 -type f -name '*.vuln.assert.err'   2>/dev/null | wc -l || echo 0)
    NUM_ANY_ASSERT_ERR=$(find "${OUT_DIR}" -maxdepth 3 -type f -name '*.assert.err'         2>/dev/null | wc -l || echo 0)
  fi

  HARNESS_CLASS=$(classify_harness "${EXIT_CODE}" "${HAS_BITCODE}" "${HAS_KLEE_LAST}" "${NUM_TARGET_ASSERT_ERR}" "${NUM_VULN_ASSERT_ERR}" "${NUM_ANY_ASSERT_ERR}")

  case "${HARNESS_CLASS}" in
    H0) COUNT_H0=$(( COUNT_H0 + 1 )) ;;
    H1) COUNT_H1=$(( COUNT_H1 + 1 )) ;;
    H2) COUNT_H2=$(( COUNT_H2 + 1 )) ;;
    H3) COUNT_H3=$(( COUNT_H3 + 1 )) ;;
    H4) COUNT_H4=$(( COUNT_H4 + 1 )) ;;
    E)  COUNT_E=$(( COUNT_E + 1 ))  ;;
  esac

  if [[ "${EXIT_CODE}" -eq 0 ]]; then
    echo "[ok] ${SPEC_ID}: ${DURATION}s"
    echo "${SPEC_ID}  ${DURATION}" >> "${TIME_LOG}"
    TOTAL_TIME=$(( TOTAL_TIME + DURATION ))
    COUNT_OK=$(( COUNT_OK + 1 ))
  else
    echo "[ERR] ${MODE} failed for SPEC_ID=${SPEC_ID} (driver=${DRIVER}, exit_code=${EXIT_CODE}, duration=${DURATION}s)"
    echo "[ERR] ${SPEC_ID}: run_se_driver.sh failed (driver=${DRIVER}, exit_code=${EXIT_CODE}, duration=${DURATION}s)" >> "${ERROR_LOG}"
  fi

  echo -e "${SPEC_ID}\t${DURATION}\t${EXIT_CODE}\t${HARNESS_CLASS}\t${HAS_BITCODE}\t${HAS_KLEE_LAST}\t${NUM_TARGET_ASSERT_ERR}\t${NUM_VULN_ASSERT_ERR}\t${NUM_ANY_ASSERT_ERR}" >> "${SUMMARY_TSV}"
done
shopt -u nullglob

echo
if [[ "${COUNT_OK}" -gt 0 ]]; then
  AVG_TIME=$(( TOTAL_TIME / COUNT_OK ))
  echo "[summary] ${MODE} for PROJECT=${PROJECT_NAME}"
  echo "[summary] specs_ok=${COUNT_OK}, total_time=${TOTAL_TIME}s, avg_time=${AVG_TIME}s"

  {
    echo
    echo "# Summary (successful specs only):"
    echo "# specs_ok=${COUNT_OK}"
    echo "# total_time_seconds=${TOTAL_TIME}"
    echo "# avg_time_seconds=${AVG_TIME}"
  } >> "${TIME_LOG}"
else
  echo "[summary] No successful ${MODE} runs for PROJECT=${PROJECT_NAME}"
fi

{
  echo "class	count"
  echo "H0	${COUNT_H0}"
  echo "H1	${COUNT_H1}"
  echo "H2	${COUNT_H2}"
  echo "H3	${COUNT_H3}"
  echo "H4	${COUNT_H4}"
  echo "E	${COUNT_E}"
} > "${COUNTS_TSV}"

{
  echo
  echo "# Harness class counts (all attempted specs, including failures):"
  echo "# TOTAL_SPECS=${TOTAL_SPECS}"
  echo "# H0 (build fail, no .bc)            = ${COUNT_H0}"
  echo "# H1 (bitcode ok, no klee-last)      = ${COUNT_H1}"
  echo "# H2 (klee-last, no asserts)         = ${COUNT_H2}"
  echo "# H3 (target assert only)            = ${COUNT_H3}"
  echo "# H4 (vuln assertion fired)          = ${COUNT_H4}"
  echo "# E  (driver/KLEE invocation failed) = ${COUNT_E}"
} >> "${TIME_LOG}"

echo "[done] ${MODE} baselines complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Error summary (if any)   in: ${ERROR_LOG}"
echo "[info] Time stats               in: ${TIME_LOG}"
echo "[info] Per-spec summary (TSV)   in: ${SUMMARY_TSV}"
echo "[info] Harness class counts     in: ${COUNTS_TSV}"
