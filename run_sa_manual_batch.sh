#!/usr/bin/env bash
#
# run_sa_manual_batch.sh
#
# Run the SA-driven Manual Harness (entrypoint + target + assertion) baseline
# for all specs under a spec directory.
#
# For each spec:
#   specs/<project_name>/<SPEC_ID>.json
# expects driver at:
#   drivers/sa_manual/<project_name>/<SPEC_ID>.c
#
# Results go under:
#   se_runs/sa_manual/<project_name>/<SPEC_ID>/
#
# Errors are logged (but do not stop the loop) to:
#   se_runs/sa_manual/<project_name>/errors.log
#
# Per-spec and average runtimes are logged to:
#   se_runs/sa_manual/<project_name>/time.log
#
# Per-spec summary:
#   se_runs/sa_manual/<project_name>/summary.tsv
#
# Counts by harness_class (H0–H4):
#   se_runs/sa_manual/<project_name>/counts.tsv

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

MODE="sa_manual"

echo "[i] MODE         = ${MODE}"
echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"

# Error / time / summary logs (per mode+project)
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
echo -e "SPEC_ID\tduration_seconds\texit_code\tharness_class\thas_klee_last\tnum_assert_err" > "${SUMMARY_TSV}"

# Runtime and classification counters
TOTAL_TIME=0        # only successful specs
COUNT_OK=0          # specs with exit_code == 0
TOTAL_SPECS=0       # specs we actually attempted to run (driver present)

COUNT_H0=0          # Harness Build Failure
COUNT_H1=0          # Symbolic Setup Failure
COUNT_H2=0          # Target not reached
COUNT_H3=0          # Target reached, bug not confirmed (reserved)
COUNT_H4=0          # Bug confirmed

# Helper: classify harness behavior for this spec
#   H0: exit != 0 and no klee-last      -> build / link / BC failure
#   H1: exit != 0 and klee-last exists  -> KLEE setup / early abort
#   H4: exit == 0 and num_assert_err>0  -> bug confirmed
#   H2: exit == 0 and klee-last, no asserts -> target not reached / no violation
#   H3: reserved for “target reached, bug not confirmed”
classify_harness() {
  local exit_code="$1"
  local has_klee_last="$2"
  local num_assert_err="$3"

  if [[ "${exit_code}" -ne 0 ]]; then
    if [[ "${has_klee_last}" -eq 0 ]]; then
      echo "H0"
    else
      echo "H1"
    fi
  else
    # exit_code == 0
    if [[ "${num_assert_err}" -gt 0 ]]; then
      echo "H4"
    else
      echo "H2"
    fi
  fi
}

shopt -c nullglob
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

  HAS_KLEE_LAST=0
  if [[ -d "${OUT_DIR}/klee-last" ]]; then
    HAS_KLEE_LAST=1
  fi

  NUM_ASSERT_ERR=0
  if [[ -d "${OUT_DIR}" ]]; then
    NUM_ASSERT_ERR=$(find "${OUT_DIR}" -maxdepth 2 -type f -name '*.assert.err' 2>/dev/null | wc -l || echo 0)
  fi

  HARNESS_CLASS=$(classify_harness "${EXIT_CODE}" "${HAS_KLEE_LAST}" "${NUM_ASSERT_ERR}")

  case "${HARNESS_CLASS}" in
    H0) COUNT_H0=$(( COUNT_H0 + 1 )) ;;
    H1) COUNT_H1=$(( COUNT_H1 + 1 )) ;;
    H2) COUNT_H2=$(( COUNT_H2 + 1 )) ;;
    H3) COUNT_H3=$(( COUNT_H3 + 1 )) ;;  # currently unused
    H4) COUNT_H4=$(( COUNT_H4 + 1 )) ;;
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

  echo -e "${SPEC_ID}\t${DURATION}\t${EXIT_CODE}\t${HARNESS_CLASS}\t${HAS_KLEE_LAST}\t${NUM_ASSERT_ERR}" >> "${SUMMARY_TSV}"
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
} > "${COUNTS_TSV}"

{
  echo
  echo "# Harness class counts (all attempted specs, including failures):"
  echo "# TOTAL_SPECS=${TOTAL_SPECS}"
  echo "# H0 (build failure / no klee-last)           = ${COUNT_H0}"
  echo "# H1 (symbolic setup failure / early abort)   = ${COUNT_H1}"
  echo "# H2 (target not reached / no violation)      = ${COUNT_H2}"
  echo "# H3 (target reached, bug not confirmed)      = ${COUNT_H3}"
  echo "# H4 (bug confirmed via assertion)            = ${COUNT_H4}"
} >> "${TIME_LOG}"

echo "[done] ${MODE} baselines complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Error summary (if any)   in: ${ERROR_LOG}"
echo "[info] Time stats               in: ${TIME_LOG}"
echo "[info] Per-spec summary (TSV)   in: ${SUMMARY_TSV}"
echo "[info] Harness class counts     in: ${COUNTS_TSV}"
