#!/usr/bin/env bash
#
# run_manual_entry_all_specs.sh
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

set -euo pipefail

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

shopt -s nullglob
for spec in "${SPEC_DIR}"/*.json; do
  SPEC_BASENAME=$(basename "${spec}")
  SPEC_ID="${SPEC_BASENAME%.json}"
  DRIVER="drivers/${MODE}/${PROJECT_NAME}/${SPEC_ID}.c"

  echo "[i] Spec: ${SPEC_BASENAME} (SPEC_ID=${SPEC_ID})"

  if [[ ! -f "${DRIVER}" ]]; then
    echo "[skip] ${MODE}: driver not found (${DRIVER})"
    continue
  fi

  echo "[run] ${MODE}: ${DRIVER}"
  ./run_se_driver.sh \
    --project-name "${PROJECT_NAME}" \
    --spec-id      "${SPEC_ID}" \
    --mode         "${MODE}" \
    --driver       "${DRIVER}" \
    --src-root     "${SRC_ROOT}" \
    --out-root     "${OUT_ROOT}" \
    --clang-flags  "${CLANG_FLAGS}" \
    --klee-flags   "${KLEE_FLAGS}"
done
shopt -u nullglob

echo "[done] ${MODE} baselines complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
