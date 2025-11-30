#!/usr/bin/env bash
#
# run_baselines_all_specs.sh
#
# For a given project, iterate over all specs in specs/<project_name>/*.json
# and run the 4 baselines for each spec via run_baselines_for_spec.sh.
#
# Example (libxml2 OOB task):
#
#   ./run_baselines_all_specs.sh \
#     --project-name libxml2_62911_vul \
#     --src-root ./dataset/62911/libxml2_62911_vul \
#     --spec-dir specs/libxml2_62911_vul \
#     --clang-flags "-I./dataset/62911/libxml2_62911_vul/include" \
#     --klee-flags  "--search=dfs --max-time=600"

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
  --spec-dir     <dir with spec JSONs> \\
  [--out-root    <root output dir, default=se_runs>] \\
  [--clang-flags \"...\"] \\
  [--klee-flags  \"...\"]

EOF
  exit 1
fi

if [[ ! -d "${SPEC_DIR}" ]]; then
  echo "ERROR: spec directory not found: ${SPEC_DIR}" >&2
  exit 1
fi

echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"

shopt -s nullglob
SPEC_FILES=( "${SPEC_DIR}"/*.json )
shopt -u nullglob

if [[ ${#SPEC_FILES[@]} -eq 0 ]]; then
  echo "WARNING: no specs found in ${SPEC_DIR}"
  exit 0
fi

for SPEC in "${SPEC_FILES[@]}"; do
  echo
  echo "=== Running baselines for spec: ${SPEC} ==="
  ./run_baselines_for_spec.sh \
    --project-name "${PROJECT_NAME}" \
    --src-root     "${SRC_ROOT}" \
    --spec         "${SPEC}" \
    --out-root     "${OUT_ROOT}" \
    --clang-flags  "${CLANG_FLAGS}" \
    --klee-flags   "${KLEE_FLAGS}"
done

echo
echo "[done] Baselines completed for all specs in ${SPEC_DIR}"
