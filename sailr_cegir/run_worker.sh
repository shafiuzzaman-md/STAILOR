#!/usr/bin/env bash
# sailr_cegir/run_worker.sh
# Orchestrator: Search -> Validate -> Report

set -euo pipefail
START_TIME=$(date +%s)

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_FILE_PATH [QL_FILE]" >&2
  exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="$2"
export SPEC_FILE="$3"
export QL_FILE="${4:-}"

# --- Configuration & Defaults ---
export SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
export DATASET_ROOT="$(realpath "${DATASET_ROOT:-dataset}")"
export LLM_MODEL="${LLM_MODEL:-}"
export LLM_API_BASE="${LLM_API_BASE:-}"
export MAX_TURNS="${MAX_TURNS:-60}"
export MAX_CYCLES="${MAX_CYCLES:-2}"
export TIMEOUT="${TIMEOUT:-600}"
export KLEE="${KLEE:-klee}"

# --- Paths ---
export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="${REPO_ROOT}/sailr_cegir/scripts"
PROJECT_SLUG="$(basename "$PROJECT_ID")"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"
export SE_RUNS_ROOT="${SE_RUNS_ROOT:-se_runs}"
export MODE_ROOT="${SE_RUNS_ROOT}/sailr_cegir/${PROJECT_SLUG}"
export PROJECT_BC="${SRC_ROOT}/project.bc"

# --- Python Environment Auto-Detection ---
if [ -f "${REPO_ROOT}/venv/bin/python3" ]; then
    PYTHON="${REPO_ROOT}/venv/bin/python3"
else
    PYTHON="python3"
fi

# --- STRICT LLVM 14 ENFORCEMENT (FIXED) ---
# Respect user ENV variables first. If unset, try auto-detection.
if [ -x "/usr/lib/llvm-14/bin/clang" ]; then
    : "${CLANG:=/usr/lib/llvm-14/bin/clang}"
    : "${LLVM_LINK:=/usr/lib/llvm-14/bin/llvm-link}"
    : "${LLVM_NM:=/usr/lib/llvm-14/bin/llvm-nm}"
else
    : "${CLANG:=clang-14}"
    : "${LLVM_LINK:=llvm-link-14}"
    : "${LLVM_NM:=llvm-nm-14}"
fi

export CLANG
export LLVM_LINK
export LLVM_NM

if ! command -v "$CLANG" &> /dev/null; then
    echo "[ERROR] clang-14 not found. Install llvm-14." >&2; exit 1
fi

# --- Setup Output Directories ---
mkdir -p "${MODE_ROOT}"

if [ -z "${SUMMARY_TSV:-}" ]; then
    export SUMMARY_TSV="$(realpath "${MODE_ROOT}/summary.tsv")"
fi
touch "$SUMMARY_TSV"
export VALIDATION_LOG="$(realpath "${MODE_ROOT}/validation_summary.tsv")"
touch "$VALIDATION_LOG"

# --- Spec Parsing ---
STEM="$(basename "${SPEC_FILE}" .json)"
RUN_DIR="${MODE_ROOT}/${STEM}"
NAME_NO_ID="${STEM#*_}"
VUL_LINE="$(echo "$NAME_NO_ID" | grep -oE '\.[a-z]+_[0-9]+_' | head -1 | grep -oE '[0-9]+' || echo "")"

if [ -n "$VUL_LINE" ]; then
    VUL_FILE="${NAME_NO_ID%%_${VUL_LINE}_*}"
else
    VUL_FILE="$(echo "${STEM}" | cut -d'_' -f2)"
    VUL_LINE="$(echo "${STEM}" | cut -d'_' -f3)"
fi

if [[ "$VUL_FILE" == *"conftest.c"* ]]; then
    echo "[SKIP] Ignoring temporary build file: ${VUL_FILE}"
    exit 0
fi

TARGET_VUL="${PROJECT_ID}:${VUL_FILE}:${VUL_LINE}"

mkdir -p "${RUN_DIR}"
if [ -f "${RUN_DIR}/run_report.json" ]; then
    echo "[SKIP] Already finished: ${STEM}"
    exit 0
fi

# --- Argument Construction ---

# 1. KLEE Flags
append_klee_flag() {
  local f="$1"
  if [[ " ${KLEE_FLAGS:-} " != *" ${f} "* ]]; then
    KLEE_FLAGS="${KLEE_FLAGS:-} ${f}"
  fi
}
append_klee_flag "--libc=uclibc"
append_klee_flag "--posix-runtime"
append_klee_flag "--max-memory=4096"
KLEE_FLAGS="$(echo "${KLEE_FLAGS:-}" | xargs)"

KLEE_FLAGS_ARG=()
if [[ -n "${KLEE_FLAGS:-}" ]]; then KLEE_FLAGS_ARG=( --klee-flags "${KLEE_FLAGS}" ); fi

# 2. Clang Flags
CLANG_FLAGS_ARG=()
if [[ -n "${CLANG_FLAGS:-}" ]]; then CLANG_FLAGS_ARG=( --clang-flags "${CLANG_FLAGS}" ); fi

# 3. QL File
QL_FILE_ARG=()
if [[ -n "${QL_FILE}" ]]; then QL_FILE_ARG=( --ql-file "${QL_FILE}" ); fi

# 4. Build Command (Critical for creating instrumented bc)
BUILD_PROJECT_BC_CMD_ARG=()
if [[ -n "${BUILD_PROJECT_BC_CMD:-}" ]]; then
  BUILD_PROJECT_BC_CMD_ARG=( --build-project-bc-cmd "${BUILD_PROJECT_BC_CMD}" )
fi

# 5. Compile Commands (Optional)
COMPILE_COMMANDS_JSON="${SA_PROJECT_DIR}/compile_commands.json"
COMPILE_COMMANDS_ARG=()
if [[ -f "${COMPILE_COMMANDS_JSON}" ]]; then
  COMPILE_COMMANDS_ARG=( --compile-commands "${COMPILE_COMMANDS_JSON}" )
fi

# 6. Manual Stubs (From Config)
MANUAL_STUBS_ARG=()
if [[ -n "${MANUAL_STUBS:-}" ]]; then
    MANUAL_STUBS_ARG=( --manual-stubs "${MANUAL_STUBS}" )
fi

# 7. Setup Script (From Config)
SETUP_SCRIPT_ARG=()
if [[ -n "${PROJECT_SETUP_SCRIPT:-}" ]]; then
    SETUP_SCRIPT_ARG=( --setup-script "${PROJECT_SETUP_SCRIPT}" )
fi

# 8. Extra Agent Args (From Config)
EXTRA_ARGS_ARR=()
if [[ -n "${EXTRA_AGENT_ARGS:-}" ]]; then
    read -r -a EXTRA_ARGS_ARR <<< "${EXTRA_AGENT_ARGS}"
fi

echo "[WORKER] Processing: ${STEM} (Target: ${VUL_FILE}:${VUL_LINE})"

# ==============================================================================
# PHASE 2: SEARCH (The Agent)
# ==============================================================================
echo "[WORKER] Starting Search Phase..."

# Call Python Driver
"$PYTHON" "${SCRIPTS_DIR}/run_agent_for_spec.py" \
  --project-id "${PROJECT_ID}" \
  --src-root "${SRC_ROOT}" \
  --spec "${SPEC_FILE}" \
  --spec-stem "${STEM}" \
  --vul-file "${VUL_FILE}" \
  --vul-line "${VUL_LINE}" \
  --target-vul "${TARGET_VUL}" \
  --run-dir "${RUN_DIR}" \
  --project-bc "${PROJECT_BC}" \
  --sa-out-dir "${SA_PROJECT_DIR}" \
  --dataset-root "${DATASET_ROOT}" \
  --clang "${CLANG}" \
  --llvm-link "${LLVM_LINK}" \
  --llvm-nm "${LLVM_NM}" \
  --klee "${KLEE}" \
  --max-turns "${MAX_TURNS}" \
  --max-cycles "${MAX_CYCLES}" \
  --timeout "${TIMEOUT}" \
  "${CLANG_FLAGS_ARG[@]}" \
  "${KLEE_FLAGS_ARG[@]}" \
  "${QL_FILE_ARG[@]}" \
  "${COMPILE_COMMANDS_ARG[@]}" \
  "${BUILD_PROJECT_BC_CMD_ARG[@]}" \
  "${MANUAL_STUBS_ARG[@]}" \
  "${SETUP_SCRIPT_ARG[@]}" \
  "${EXTRA_ARGS_ARR[@]}"

# ==============================================================================
# PHASE 3: STRICT VALIDATION (The Judge)
# ==============================================================================
echo "[WORKER] Starting Validation Phase..."

FINDINGS_DIR="${RUN_DIR}/findings"
VALIDATOR_SCRIPT="${SCRIPTS_DIR}/validate_finding.py"

VALIDATED_COUNT=0
STUBBED_COUNT=0

if [[ -d "$FINDINGS_DIR" && -f "$VALIDATOR_SCRIPT" ]]; then
    # Iterate over every finding exported by the agent
    while read -r finding_path; do
        F_NAME=$(basename "$finding_path")
        echo "[WORKER] Validating: ${F_NAME}"
        
        # Capture output. exit code 0 means "Reproduced"
        VAL_OUT=$("$PYTHON" "$VALIDATOR_SCRIPT" --finding "$finding_path" --src-root "${SRC_ROOT}" 2>&1)
        VAL_RC=$?
        
        echo "$VAL_OUT" | sed 's/^/    /' 
        
        VAL_RESULT="FAIL"
        
        if [[ $VAL_RC -eq 0 ]]; then
            VALIDATED_COUNT=$((VALIDATED_COUNT + 1))
            VAL_RESULT="PASS"
        fi
        
        (
          flock -x 200
          echo -e "${STEM}\t${F_NAME}\t${VAL_RESULT}\t$(date -Iseconds)" >> "${VALIDATION_LOG}"
        ) 200>"${VALIDATION_LOG}.lock"
        
    done < <(find "$FINDINGS_DIR" -mindepth 1 -maxdepth 1 -type d -name "finding_*" | sort)
else
    echo "[WORKER] No findings to validate."
fi

# ==============================================================================
# PHASE 4: FINAL REPORTING (The Registrar)
# ==============================================================================
END_TIME=$(date +%s)
TOTAL_DURATION=$((END_TIME - START_TIME))

# 1. Parse Agent Report
REPORT_JSON="${RUN_DIR}/run_report.json"
SEARCH_STATUS="UNKNOWN"
TOKENS=0

if [[ -f "$REPORT_JSON" ]]; then
    SEARCH_STATUS=$("$PYTHON" -c "import json; print(json.load(open('$REPORT_JSON')).get('search_status', 'ERR'))")
    TOKENS=$("$PYTHON" -c "import json; print(json.load(open('$REPORT_JSON')).get('metrics', {}).get('tokens_total', 0))")
else
    SEARCH_STATUS="CRASHED"
fi

# 2. Determine Final Worker Status
FINAL_STATUS="$SEARCH_STATUS"

if [[ $VALIDATED_COUNT -gt 0 ]]; then
    FINAL_STATUS="VALIDATED_TP"
elif [[ $STUBBED_COUNT -gt 0 ]]; then
    FINAL_STATUS="VALIDATED_STUBBED"
elif [[ "$SEARCH_STATUS" == "SPEC_BUG" ]]; then
    FINAL_STATUS="FP_SPEC_BUG"
elif [[ "$SEARCH_STATUS" == *"FOUND_UNTARGETED"* ]]; then
    FINAL_STATUS="FP_UNTARGETED"
fi

echo "[WORKER] Final Status: $FINAL_STATUS (Time: ${TOTAL_DURATION}s, Tokens: $TOKENS)"

(
  flock -x 200
  if [ ! -s "$SUMMARY_TSV" ]; then
      echo -e "Spec\tFinalStatus\tSearchStatus\tValTP\tValStub\tTime\tTokens" > "$SUMMARY_TSV"
  fi
  echo -e "${STEM}\t${FINAL_STATUS}\t${SEARCH_STATUS}\t${VALIDATED_COUNT}\t${STUBBED_COUNT}\t${TOTAL_DURATION}\t${TOKENS}" >> "$SUMMARY_TSV"
) 200>"${SUMMARY_TSV}.lock"