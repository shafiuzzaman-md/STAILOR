#!/usr/bin/env bash
# stailor.sh — Run STAILOR agents on pre-generated vulnerability specs
#
# Usage:  ./stailor.sh <PROJECT_ID> [--se-config <DIR>]
# Example: ./stailor.sh 55980/libxml2_55980_vul
#          ./stailor.sh 55980/libxml2_55980_vul --se-config se-config/
#
# Prerequisites: run stailor_prepare.sh first to generate specs and bitcode.
#
# SE Config Directory (optional):
#   Pass --se-config <DIR> to provide extra stubs, types, prompt context.
#   The directory may contain:
#     config.json       - Agent/KLEE/LLM config overrides
#     stubs_extra.c     - Global extra stubs (appended to auto-generated)
#     types_extra.h     - Global extra type definitions
#     prompt_extra.txt  - Global extra LLM prompt context
#     per_spec/<SPEC_STEM>/  - Per-spec overrides of the above files
#
#   See ssample_config/ for example files.
#
# Environment variables (required):
#   LLM_API_KEY    - API key for the LLM provider
#   LLM_API_BASE   - API base URL (e.g., https://api.openai.com/v1)
#   LLM_MODEL      - Model name (e.g., gpt-4o, deepseek-chat)
#
# Environment variables (optional):
#   MAX_TURNS      - Max agent turns per spec (default: 60)
#   TIMEOUT        - Per-spec timeout in seconds (default: 600)
#   JOBS           - Parallel workers (default: 4)

set -euo pipefail

# --- Argument Parsing ---
PROJECT_ID=""
SE_CONFIG_DIR=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        --se-config)
            SE_CONFIG_DIR="$(realpath "$2")"
            shift 2
            ;;
        -h|--help)
            head -25 "$0" | tail -24
            exit 0
            ;;
        -*)
            echo "[ERROR] Unknown option: $1"
            exit 1
            ;;
        *)
            if [ -z "$PROJECT_ID" ]; then
                PROJECT_ID="$1"
            else
                echo "[ERROR] Unexpected argument: $1"
                exit 1
            fi
            shift
            ;;
    esac
done

if [ -z "$PROJECT_ID" ]; then
  echo "Usage: $0 <PROJECT_ID> [--se-config <DIR>]"
  echo "Example: $0 55980/libxml2_55980_vul --se-config se-config/"
  echo ""
  echo "Required env vars: LLM_API_KEY, LLM_API_BASE, LLM_MODEL"
  echo "Optional env vars: MAX_TURNS (60), TIMEOUT (600), JOBS (4)"
  exit 1
fi

export PROJECT_ID
export RULE_ID="auto"

# --- Validate SE Config ---
if [ -n "$SE_CONFIG_DIR" ]; then
    if [ ! -d "$SE_CONFIG_DIR" ]; then
        echo "[ERROR] SE config directory not found: $SE_CONFIG_DIR"
        exit 1
    fi
    # Guard: refuse to use the samples directory directly
    local_basename="$(basename "$SE_CONFIG_DIR")"
    if [[ "$local_basename" == "samples" || "$SE_CONFIG_DIR" == */samples/* ]]; then
        echo "[ERROR] SE_CONFIG points to the samples directory."
        echo "  Copy it first: cp -r se_config/samples/ se_config/my_project/"
        exit 1
    fi
    if [ ! -f "$SE_CONFIG_DIR/config.json" ]; then
        echo "[WARN] No config.json in ${SE_CONFIG_DIR}, using defaults"
    fi
    export SE_CONFIG_DIR
fi

# --- Validate LLM Configuration ---
export LLM_API_KEY="${LLM_API_KEY:-}"
export LLM_API_BASE="${LLM_API_BASE:-}"
export LLM_MODEL="${LLM_MODEL:-}"

_missing=""
[ -z "$LLM_API_KEY" ]  && _missing="${_missing} LLM_API_KEY"
[ -z "$LLM_API_BASE" ] && _missing="${_missing} LLM_API_BASE"
[ -z "$LLM_MODEL" ]    && _missing="${_missing} LLM_MODEL"
if [ -n "$_missing" ]; then
  echo "[ERROR] Missing required environment variables:${_missing}"
  echo ""
  echo "  export LLM_API_KEY=your-api-key"
  echo "  export LLM_API_BASE=https://api.openai.com/v1"
  echo "  export LLM_MODEL=gpt-4o"
  exit 1
fi

# --- Paths ---
REPO_ROOT="$(pwd)"
export DATASET_ROOT="${DATASET_ROOT:-${REPO_ROOT}/dataset}"
export SA_OUT_DIR="${SA_OUT_DIR:-${REPO_ROOT}/sa_outputs}"
export SRC_ROOT="$(realpath -m "${DATASET_ROOT}/${PROJECT_ID}")"
export PROJECT_NAME="$(basename "$PROJECT_ID")"
export PROJECT_BC="${SRC_ROOT}/project.bc"
export SPECS_DIR="${REPO_ROOT}/specs/${PROJECT_NAME}"

# --- Validate Prerequisites ---
if [ ! -d "$SRC_ROOT" ]; then
  echo "[ERROR] Source not found: $SRC_ROOT"
  exit 1
fi
if [ ! -d "$SPECS_DIR" ] || [ "$(find "$SPECS_DIR" -name '*.json' | wc -l)" -eq 0 ]; then
  echo "[ERROR] No specs found in: $SPECS_DIR"
  echo "  Run first: ./stailor_prepare.sh $PROJECT_ID"
  exit 1
fi

# --- Load Project Configuration ---
CONFIGS_DIR="${REPO_ROOT}/configs"
CONFIG_FILE="${CONFIGS_DIR}/${PROJECT_NAME}_config.sh"

export EXTRA_CFLAGS="${EXTRA_CFLAGS:-}"
export EXTRA_AGENT_ARGS="${EXTRA_AGENT_ARGS:-}"
export MANUAL_STUBS="${MANUAL_STUBS:-}"

if [ -f "$CONFIG_FILE" ]; then
    echo "[i] Loading project config: $CONFIG_FILE"
    source "$CONFIG_FILE"
fi

# Setup script
SETUP_SCRIPT="${CONFIGS_DIR}/${PROJECT_NAME}_setup.sh"
if [ -f "$SETUP_SCRIPT" ]; then
    export PROJECT_SETUP_SCRIPT="$SETUP_SCRIPT"
else
    export PROJECT_SETUP_SCRIPT=""
fi

# --- LLVM 14 Toolchain ---
export LLVM_COMPILER=clang
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export CC=/usr/lib/llvm-14/bin/clang
export CXX=/usr/lib/llvm-14/bin/clang++
export LLVM_LINK=/usr/lib/llvm-14/bin/llvm-link
export LLVM_DIS=/usr/lib/llvm-14/bin/llvm-dis

export CLANG_FLAGS="-I${SRC_ROOT}/include -I${SRC_ROOT}/build -I${HOME}/tools/klee/include ${EXTRA_CFLAGS}"
export BUILD_PROJECT_BC_CMD="bash ${REPO_ROOT}/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}"

# --- Agent Configuration ---
export MAX_TURNS="${MAX_TURNS:-60}"
export MAX_CYCLES="${MAX_CYCLES:-2}"
export TIMEOUT="${TIMEOUT:-600}"
JOBS="${JOBS:-4}"

SPEC_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)

echo "[=] STAILOR Agent Run"
echo "    Project:  $PROJECT_NAME"
echo "    Specs:    $SPEC_COUNT"
echo "    Model:    $LLM_MODEL"
echo "    Workers:  $JOBS"
echo "    Turns:    $MAX_TURNS"
echo "    Timeout:  ${TIMEOUT}s"
if [ -n "${SE_CONFIG_DIR:-}" ]; then
echo "    SE Config: $SE_CONFIG_DIR"
fi
echo ""

# --- Pre-LLM Triage (optional but recommended) ---
TRIAGE_SCRIPT="${REPO_ROOT}/scripts/triage_specs.py"
if [ -f "$TRIAGE_SCRIPT" ]; then
    echo "[=] Pre-LLM Triage: scoring and prioritizing specs..."
    TRIAGE_ARGS=()
    # Skip P3 (almost-certain FP) by default, override with STAILOR_KEEP_ALL=1
    if [ "${STAILOR_KEEP_ALL:-0}" != "1" ]; then
        TRIAGE_ARGS+=(--skip-p3)
    fi
    # Optionally limit total specs with MAX_SPECS env var
    if [ -n "${MAX_SPECS:-}" ]; then
        TRIAGE_ARGS+=(--max-specs "$MAX_SPECS")
    fi
    python3 "$TRIAGE_SCRIPT" --specs-dir "$SPECS_DIR" --src-root "$SRC_ROOT" "${TRIAGE_ARGS[@]}" || true
    # Recount after triage
    SPEC_COUNT=$(find "$SPECS_DIR" -maxdepth 1 -name "*.json" | wc -l)
fi

# --- Run Agents ---
bash "${REPO_ROOT}/sailr_cegir/run_batch.sh" \
  "$PROJECT_ID" \
  "auto" \
  "$SPECS_DIR" \
  "$JOBS" \
  "${EXTRA_AGENT_ARGS}" \
  "${MANUAL_STUBS}"

# --- Collect Results ---
echo ""
echo "[=] Collecting Results"

RESULTS_DIR="${REPO_ROOT}/se_runs/sailr_cegir/${PROJECT_NAME}"
if [ -f "${RESULTS_DIR}/summary.tsv" ]; then
  echo ""
  echo "--- Summary ---"
  column -t -s$'\t' "${RESULTS_DIR}/summary.tsv" 2>/dev/null || cat "${RESULTS_DIR}/summary.tsv"
  echo ""
  
  TOTAL=$(tail -n +2 "${RESULTS_DIR}/summary.tsv" | wc -l)
  TP=$(grep -c 'FOUND_TP\|VALIDATED_TP' "${RESULTS_DIR}/summary.tsv" || true)
  LIKELY=$(grep -c 'FOUND_LIKELY_TP' "${RESULTS_DIR}/summary.tsv" || true)
  DIFF_CRASH=$(grep -c 'FOUND_DIFFERENT_CRASH' "${RESULTS_DIR}/summary.tsv" || true)
  NULL_FP=$(grep -c 'FOUND_LIKELY_FP_NULL_DEREF' "${RESULTS_DIR}/summary.tsv" || true)
  # Count specs with secondary bugs (column 9, value > 0)
  SEC_BUGS=$(awk -F'\t' 'NR>1 && $9+0>0' "${RESULTS_DIR}/summary.tsv" | wc -l || true)
  TOTAL_SEC=$(awk -F'\t' 'NR>1 {s+=$9} END {print s+0}' "${RESULTS_DIR}/summary.tsv" || echo 0)
  echo "  Total: $TOTAL | TP: $TP | Likely TP: $LIKELY | Different Crash: $DIFF_CRASH | Null FP: $NULL_FP"
  if [ "$TOTAL_SEC" -gt 0 ]; then
    echo "  Secondary bugs: $TOTAL_SEC (in $SEC_BUGS specs)"
  fi
fi

# Optional: run collect_results.py if it exists
COLLECT_SCRIPT="${REPO_ROOT}/sailr_cegir/collect_results.py"
if [ -f "$COLLECT_SCRIPT" ]; then
  python3 "$COLLECT_SCRIPT" \
    --mode-root "$RESULTS_DIR" \
    --src-root "$SRC_ROOT" \
    --out-dir "${REPO_ROOT}/stailor_report_pack_${PROJECT_NAME}"
fi

echo "[✓] Done."