#!/usr/bin/env bash
# sa_llm/run_sa_llm_batch.sh
#
# SA-driven LLM Harness (single-shot TU-as-harness, per spec), with parallel execution
# AND aggregated TSV summaries:
#   - summary.tsv      : per-spec status
#   - counts.tsv       : single-row aggregate matching spreadsheet columns
#   - summary_agg.tsv  : project-level aggregate row
#
# Class labels:
#   E  = build/link failure => no bitcode, SE never started
#   H0 = SE ran, terminated before timeout, did NOT reach target line
#   H1 = SE ran until timeout, did NOT reach target line
#   H2 = Target line reached / vuln/reach assert fired

set -euo pipefail

PROJECT_NAME=""
SRC_ROOT=""
SPEC_DIR=""
OUT_ROOT="se_runs"
CLANG="clang"
KLEE="klee"
CLANG_FLAGS=""
KLEE_FLAGS=""
JOBS="1"   # number of parallel specs

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
    --jobs)         JOBS="$2";         shift 2 ;;
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
  [--klee-flags  "<extra klee flags>"] \\
  [--jobs        <# of parallel specs, default=1 | 'auto'>]

Note: To restrict each KLEE run to 1 hour, include --max-time=3600 in --klee-flags.
EOF
  exit 1
fi

# Normalize JOBS
if [[ "${JOBS}" == "auto" ]]; then
  if command -v nproc >/dev/null 2>&1; then
    JOBS="$(nproc)"
  else
    JOBS="4"
  fi
fi
if ! [[ "${JOBS}" =~ ^[0-9]+$ ]]; then
  echo "ERROR: --jobs must be an integer or 'auto', got: ${JOBS}" >&2
  exit 1
fi
if (( JOBS < 1 )); then
  JOBS=1
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
echo "[i] JOBS         = ${JOBS}"

MODE_ROOT="${OUT_ROOT}/${MODE}/${PROJECT_NAME}"
ERROR_LOG="${MODE_ROOT}/errors.log"
TIME_LOG="${MODE_ROOT}/time.log"
SUMMARY_TSV="${MODE_ROOT}/summary.tsv"
COUNTS_TSV="${MODE_ROOT}/counts.tsv"
SUMMARY_AGG="${MODE_ROOT}/summary_agg.tsv"

mkdir -p "${MODE_ROOT}"

# LLM usage log path (must match llm_utils.py default/env)
LLM_USAGE_LOG="${LLM_USAGE_LOG:-llm_usage.tsv}"

echo "# Error log for MODE=${MODE}, PROJECT=${PROJECT_NAME}" > "${ERROR_LOG}"
{
  echo "# Time log for MODE=${MODE}, PROJECT=${PROJECT_NAME}"
  echo "# Columns: SPEC_ID  duration_seconds"
} > "${TIME_LOG}"

# Per-spec summary.tsv
echo -e "SPEC_ID\tduration_seconds\tharness_status\thas_klee_last\tnum_err_files\tnum_vuln_assert\tnum_reach_assert\ttimeout_flag" > "${SUMMARY_TSV}"

# Helper to guarantee each row has exactly 8 columns
write_summary_row() {
  local spec_id="$1"
  local duration="$2"
  local status="$3"
  local has_klee_last="$4"
  local num_err_files="$5"
  local num_vuln_assert="$6"
  local num_reach_assert="$7"
  local timeout_flag="$8"

  printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" \
    "${spec_id}" "${duration}" "${status}" \
    "${has_klee_last}" "${num_err_files}" \
    "${num_vuln_assert}" "${num_reach_assert}" "${timeout_flag}" \
    >> "${SUMMARY_TSV}"
}

# ---------------------------------------------------------------------------
# Per-spec worker (runs in background for parallelism)
# ---------------------------------------------------------------------------
run_one_spec() {
  local spec="$1"

  local SPEC_BASENAME
  SPEC_BASENAME=$(basename "${spec}")
  local SPEC_ID="${SPEC_BASENAME%.json}"

  echo
  echo "[i] Spec: ${SPEC_BASENAME} (SPEC_ID=${SPEC_ID})"

  local SPEC_OUT_DIR="${MODE_ROOT}/${SPEC_ID}"
  local HARNESS_DIR="${SPEC_OUT_DIR}"
  local BC_DIR="${SPEC_OUT_DIR}/bc"
  local KLEE_OUT="${SPEC_OUT_DIR}/klee-out"
  local DEBUG_DIR="${SPEC_OUT_DIR}/debug"        # per-spec debug dir

  mkdir -p "${HARNESS_DIR}" "${BC_DIR}" "${DEBUG_DIR}"

  local HARNESS_C="${HARNESS_DIR}/harness.c"
  local HARNESS_BC="${BC_DIR}/harness.bc"

  local START_TS
  START_TS=$(date +%s)

  ###########################################################################
  # 1) LLM TU-harness generation (harness.c = whole TU)
  ###########################################################################
  set +e
  PYTHONPATH=. python3 sa_llm/gen_sa_llm_harness.py \
    --src-root "${SRC_ROOT}" \
    --spec     "${spec}" \
    --out-c    "${HARNESS_C}"
  local GEN_EXIT=$?
  set -e

  local END_TS DURATION
  if [[ "${GEN_EXIT}" -ne 0 || ! -f "${HARNESS_C}" ]]; then
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ERR] Harness generation failed for ${SPEC_ID} (exit=${GEN_EXIT})"
    echo "[ERR] ${SPEC_ID}: harness generation failed (exit=${GEN_EXIT})" >> "${ERROR_LOG}"

    write_summary_row "${SPEC_ID}" "${DURATION}" "E" \
      0 0 0 0 0
    return 0
  fi

  ###########################################################################
  # 2) Build harness -> bitcode
  ###########################################################################
  set +e
  ${CLANG} \
    ${CLANG_FLAGS} \
    -emit-llvm -g -O0 -c "${HARNESS_C}" \
    -o "${HARNESS_BC}"
  local CLANG_EXIT=$?
  set -e

  if [[ "${CLANG_EXIT}" -ne 0 || ! -f "${HARNESS_BC}" ]]; then
    END_TS=$(date +%s)
    DURATION=$(( END_TS - START_TS ))
    echo "[ERR] clang failed on harness for ${SPEC_ID} (exit=${CLANG_EXIT})"
    echo "[ERR] ${SPEC_ID}: harness compile failed (exit=${CLANG_EXIT})" >> "${ERROR_LOG}"

    write_summary_row "${SPEC_ID}" "${DURATION}" "E" \
      0 0 0 0 0
    return 0
  fi

  ###########################################################################
  # 3) KLEE run
  ###########################################################################
  if [[ -d "${KLEE_OUT}" ]]; then
    local TS
    TS=$(date +%Y%m%d_%H%M%S)
    echo "[i] Existing ${KLEE_OUT} for ${SPEC_ID}, renaming to ${KLEE_OUT}.bak_${TS}"
    mv "${KLEE_OUT}" "${KLEE_OUT}.bak_${TS}"
  fi

  local RUN_START RUN_END
  local KLEE_EXIT=0    # ensure defined even with `set -u`

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

  # If KLEE failed hard and produced no output directory, classify as E.
  if [[ "${KLEE_EXIT}" -ne 0 && ! -d "${KLEE_OUT}" ]]; then
    echo "[ERR] ${SPEC_ID}: KLEE exited with status ${KLEE_EXIT}" >> "${ERROR_LOG}"

    write_summary_row "${SPEC_ID}" "${DURATION}" "E" \
      0 0 0 0 0
    return 0
  fi

  ###########################################################################
  # 4) Classification (E / H0 / H1 / H2)
  #
  # E  = handled earlier (no bitcode or KLEE failed hard, no KLEE_OUT)
  # H0 = SE ran, terminated before timeout, NO SAILR_* assertion error
  # H1 = SE ran, timed out, NO SAILR_* assertion error
  # H2 = At least one SAILR_* KLEE assertion error (vuln or reach)
  ###########################################################################
  local HARNESS_STATUS="H0"
  local HAS_KLEE_LAST=0
  local NUM_ERR_FILES=0
  local NUM_VULN_ASSERT=0
  local NUM_REACH_ASSERT=0
  local TIMEOUT_FLAG=0

  if [[ -d "${KLEE_OUT}" ]]; then
    HAS_KLEE_LAST=1

    # Collect *.err files once
    mapfile -t ERR_FILES < <(find "${KLEE_OUT}" -maxdepth 1 -type f -name '*.err' 2>/dev/null || true)
    NUM_ERR_FILES=${#ERR_FILES[@]}

    if (( NUM_ERR_FILES > 0 )); then
      # Count only assertion errors that actually produced .err files
      NUM_VULN_ASSERT=$(grep -H -E "SAILR_VULN_ASSERT|SAILR_ASSERT" "${ERR_FILES[@]}" 2>/dev/null | wc -l || echo 0)
      NUM_REACH_ASSERT=$(grep -H "SAILR_REACH_ASSERT" "${ERR_FILES[@]}" 2>/dev/null | wc -l || echo 0)
    fi

    # Timeout detection: HaltTimer in any file produced by KLEE
    if grep -Rqs "HaltTimer" "${KLEE_OUT}" 2>/dev/null; then
      TIMEOUT_FLAG=1
    fi
  fi

  if [[ "${NUM_VULN_ASSERT}" -gt 0 || "${NUM_REACH_ASSERT}" -gt 0 ]]; then
    HARNESS_STATUS="H2"
  elif [[ "${TIMEOUT_FLAG}" -eq 1 ]]; then
    HARNESS_STATUS="H1"
  else
    HARNESS_STATUS="H0"
  fi

  echo "[ok] ${SPEC_ID}: status=${HARNESS_STATUS}, duration=${DURATION}s, vuln_asserts=${NUM_VULN_ASSERT}, reach_asserts=${NUM_REACH_ASSERT}"

  # Non-E specs get logged into TIME_LOG for later aggregation
  echo "${SPEC_ID}  ${DURATION}" >> "${TIME_LOG}"

  write_summary_row "${SPEC_ID}" "${DURATION}" "${HARNESS_STATUS}" \
    "${HAS_KLEE_LAST}" "${NUM_ERR_FILES}" \
    "${NUM_VULN_ASSERT}" "${NUM_REACH_ASSERT}" "${TIMEOUT_FLAG}"
}

# ---------------------------------------------------------------------------
# Launch specs in parallel (max JOBS at a time)
# ---------------------------------------------------------------------------
shopt -s nullglob
specs=( "${SPEC_DIR}"/*.json )
shopt -u nullglob

if (( ${#specs[@]} == 0 )); then
  echo "ERROR: No *.json specs found in ${SPEC_DIR}" >&2
  exit 1
fi

pids=()
for spec in "${specs[@]}"; do
  run_one_spec "${spec}" &
  pids+=( "$!" )
  if (( ${#pids[@]} >= JOBS )); then
    wait "${pids[0]}"
    pids=( "${pids[@]:1}" )
  fi
done

for pid in "${pids[@]}"; do
  wait "${pid}"
done

# Path must match what llm_utils.py uses for logging (default: llm_usage.tsv)
LLM_USAGE_LOG_PATH="${LLM_USAGE_LOG:-llm_usage.tsv}"

python3 sa_llm/aggregate_sa_llm_results.py \
  --mode-root "${MODE_ROOT}" \
  --llm-usage-log "${LLM_USAGE_LOG_PATH}" || {
    echo "[warn] aggregate_sa_llm_results.py failed; per-spec results are still in ${SUMMARY_TSV}" >&2
}

echo "[done] ${MODE} runs complete for ${PROJECT_NAME} (spec dir: ${SPEC_DIR})"
echo "[info] Per-spec summary   : ${SUMMARY_TSV}"
echo "[info] Counts table       : ${COUNTS_TSV}"
echo "[info] Aggregate summary  : ${SUMMARY_AGG}"
echo "[info] Error log          : ${ERROR_LOG}"
echo "[info] Time log           : ${TIME_LOG}"
