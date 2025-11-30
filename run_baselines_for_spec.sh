#!/usr/bin/env bash
#
# run_baselines_for_spec.sh
#
# Run all 4 baseline configurations (manual_entry, sa_manual, llm_entry, sa_llm)
# for a single spec, assuming driver layout:
#
#   drivers/manual_entry/<project>/<SPEC_ID>.c
#   drivers/sa_manual/<project>/<SPEC_ID>.c
#   drivers/llm_entry/<project>/<SPEC_ID>.c
#   drivers/sa_llm/<project>/<SPEC_ID>.c
#
# Results go to:
#   se_runs/<mode>/<project>/<SPEC_ID>/

set -euo pipefail

PROJECT_NAME=""
SRC_ROOT=""
SPEC_PATH=""
OUT_ROOT="se_runs"
CLANG_FLAGS=""
KLEE_FLAGS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --spec)         SPEC_PATH="$2";    shift 2 ;;
    --out-root)     OUT_ROOT="$2";     shift 2 ;;
    --clang-flags)  CLANG_FLAGS="$2";  shift 2 ;;
    --klee-flags)   KLEE_FLAGS="$2";   shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2; exit 1 ;;
    *)
      echo "Unexpected positional arg: $1" >&2; exit 1 ;;
  esac
done

if [[ -z "${PROJECT_NAME}" || -z "${SRC_ROOT}" || -z "${SPEC_PATH}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --project-name <id> \\
  --src-root     <project src root> \\
  --spec         <path/to/spec.json> \\
  [--out-root    <root output dir, default=se_runs>] \\
  [--clang-flags \"...\"] \\
  [--klee-flags  \"...\"]

EOF
  exit 1
fi

if [[ ! -f "${SPEC_PATH}" ]]; then
  echo "ERROR: spec not found: ${SPEC_PATH}" >&2
  exit 1
fi

SPEC_BASENAME=$(basename "${SPEC_PATH}")
SPEC_ID="${SPEC_BASENAME%.json}"

echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_PATH    = ${SPEC_PATH}"
echo "[i] SPEC_ID      = ${SPEC_ID}"
echo "[i] OUT_ROOT     = ${OUT_ROOT}"

run_mode() {
  local MODE="$1"
  local DRIVER="drivers/${MODE}/${PROJECT_NAME}/${SPEC_ID}.c"

  if [[ ! -f "${DRIVER}" ]]; then
    echo "[skip] ${MODE}: driver not found (${DRIVER})"
    return
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
}

# These correspond to your SA/SE columns:
run_mode "manual_entry"  # Manual Harness (entrypoint)
run_mode "sa_manual"     # SA driven Manual Harness (entrypoint+target+assertion)
run_mode "llm_entry"     # LLM Harness (entrypoint)
run_mode "sa_llm"        # SA driven LLM Harness (entrypoint+target+assertion)

echo "[done] Baseline SE runs complete for ${PROJECT_NAME}, spec=${SPEC_ID}"
