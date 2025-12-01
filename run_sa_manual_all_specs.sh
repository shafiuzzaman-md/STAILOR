#!/usr/bin/env bash
#
# run_sa_manual_all_specs.sh
#
# Run the SA driven Manual Harness baseline (entrypoint+target+assertion)
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

# Error log (per mode+project)
ERROR_LOG="${OUT_ROOT}/${MODE}/${PROJECT_NAME}/errors.log"
mkdir -p "$(dirname "${ERROR_LOG}")"
echo "# Error log for MODE=${MODE}, PROJECT=${PROJECT_NAME}" > "${ERROR_LOG}"

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
  if ! ./run_se_driver.sh \
        --project-name "${PROJECT_NAME}" \
        --spec-id      "${SPEC_ID}" \
        --mode         "${MODE}" \
        --driver       "${DRIVER}" \
        --src-root     "${SRC_ROOT}" \
        --out-root     "${OUT_ROOT}" \
        --clang-flags  "${CLANG_FLAGS}" \
        --klee-flags   "${KLEE_FLAGS}"; then
    echo "[ERR] ${MODE} failed for SPEC_ID=${SPEC_ID} (driver=${DRIVER})"
    echo "[ERR] ${SPEC_ID}: run_se_driver.sh failed (driver=${DRIVER})" >> "${ERROR_LOG}"
    # continue to next spec
  fi
done
shopt -u nullglob

echo
echo "[done] ${MODE} baselines complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Error summary (if any) in: ${ERROR_LOG}"
