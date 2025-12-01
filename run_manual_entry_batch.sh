#!/usr/bin/env bash
#
# run_manual_entry_batch.sh
#
# Run the Manual Harness (entrypoint-only) baseline for all specs
# under a spec directory.
#
# For each spec:
#   specs/<project_name>/<SPEC_ID>.json
# expects driver at:
#   drivers/manual_entry/<project_name>/<SPEC_ID>.c
#
# Results go under:
#   se_runs/manual_entry/<project_name>/<SPEC_ID>/
#
# Errors are logged (but do not stop the loop) to:
#   se_runs/manual_entry/<project_name>/errors.log
#
# Per-spec and average runtimes are logged to:
#   se_runs/manual_entry/<project_name>/time.log

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

MODE="manual_entry"

echo "[i] MODE         = ${MODE}"
echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"

# Error log (per mode+project)
MODE_ROOT="${OUT_ROOT}/${MODE}/${PROJECT_NAME}"
ERROR_LOG="${MODE_ROOT}/errors.log"
TIME_LOG="${MODE_ROOT}/time.log"
mkdir -p "${MODE_ROOT}"

echo "# Error log for MODE=${MODE}, PROJECT=${PROJECT_NAME}" > "${ERROR_LOG}"
echo "# Time log for MODE=${MODE}, PROJECT=${PROJECT_NAME}" > "${TIME_LOG}"
echo "# Columns: SPEC_ID  duration_seconds" >> "${TIME_LOG}"

TOTAL_TIME=0
COUNT=0

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
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ok] ${SPEC_ID}: ${DURATION}s"
    echo "${SPEC_ID}  ${DURATION}" >> "${TIME_LOG}"
    TOTAL_TIME=$(( TOTAL_TIME + DURATION ))
    COUNT=$(( COUNT + 1 ))
  else
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ERR] ${MODE} failed for SPEC_ID=${SPEC_ID} (driver=${DRIVER})"
    echo "[ERR] ${SPEC_ID}: run_se_driver.sh failed (driver=${DRIVER}, duration=${DURATION}s)" >> "${ERROR_LOG}"
    # Do NOT count failed specs in the average
  fi
done
shopt -u nullglob

echo
if [[ "${COUNT}" -gt 0 ]]; then
  AVG_TIME=$(( TOTAL_TIME / COUNT ))
  echo "[summary] ${MODE} for PROJECT=${PROJECT_NAME}"
  echo "[summary] specs_ok=${COUNT}, total_time=${TOTAL_TIME}s, avg_time=${AVG_TIME}s"

  {
    echo
    echo "# Summary:"
    echo "# specs_ok=${COUNT}"
    echo "# total_time_seconds=${TOTAL_TIME}"
    echo "# avg_time_seconds=${AVG_TIME}"
  } >> "${TIME_LOG}"
else
  echo "[summary] No successful ${MODE} runs for PROJECT=${PROJECT_NAME}"
fi

echo "[done] ${MODE} baselines complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Error summary (if any) in: ${ERROR_LOG}"
echo "[info] Time stats in: ${TIME_LOG}"
