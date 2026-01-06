#!/bin/bash
# run_stailor.sh: Universal STAILOR Pipeline (End-to-End)
# Usage: ./run_stailor.sh <PROJECT_FOLDER_NAME> [RULE_ID]
# Example: ./run_stailor.sh 55980/libxml2_55980_vul

set -e # Stop on error

# --- 1. Dynamic Inputs ---
if [ -z "$1" ]; then
    echo "Usage: $0 <PROJECT_ID> [RULE_ID]"
    echo "Example: $0 55980/libxml2_55980_vul oob-read"
    echo "Note: Source code must exist in 'dataset/<PROJECT_ID>'"
    exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="${2:-oob-read}" # Default to oob-read if not provided

# Derived Paths
export PROJECT_SLUG="$(basename "$PROJECT_ID")"
export DATASET_ROOT="dataset"
export SA_OUT_DIR="sa_outputs"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export PROJECT_BC="${SRC_ROOT}/project.bc"

# Validation
if [ ! -d "$SRC_ROOT" ]; then
    echo "[!] Error: Source directory not found at $SRC_ROOT"
    echo "    Please place your target source code there first."
    exit 1
fi

# Environment
export KLEE_INCLUDE="$HOME/tools/klee/include"
export CLANG_FLAGS="-I${SRC_ROOT}/include -I${KLEE_INCLUDE}"

# --- Helper: Auto-Detect Build System for CodeQL ---
detect_build_cmd() {
    if [ -f "$SRC_ROOT/build.sh" ]; then
        echo "./build.sh"
    elif [ -f "$SRC_ROOT/CMakeLists.txt" ]; then
        echo "mkdir -p build && cd build && cmake .. && make -j$(nproc)"
    elif [ -f "$SRC_ROOT/configure" ]; then
        echo "./configure && make -j$(nproc)"
    elif [ -f "$SRC_ROOT/Makefile" ] || [ -f "$SRC_ROOT/makefile" ]; then
        echo "make -j$(nproc)"
    else
        echo "make -j$(nproc)" # Default Fallback
    fi
}

# --- Phase 1: Preparation ---
echo "[=] Phase 1: Static Analysis & Prep for $PROJECT_SLUG"

# 1. Run CodeQL (if findings don't exist)
if [ ! -f "${SA_OUT_DIR}/${PROJECT_SLUG}/findings.json" ]; then
    DETECTED_BUILD_CMD=$(detect_build_cmd)
    echo "[*] Auto-detected build command: $DETECTED_BUILD_CMD"
    
    ./codeql_scan.sh \
      PROJECT_NAME="${PROJECT_SLUG}" \
      SRC_ROOT="$SRC_ROOT" \
      BUILD_CMD="$DETECTED_BUILD_CMD" \
      QUERY_SUITES="rules/oob-pack/suites/oob-read.qls" \
      CONTEXT_LINES=5 \
      ALSO_CPP=false
fi

# 2. Generate Specs
echo "[*] Generating Vulnerability Specs..."
python3 scripts/make_vul_specs.py \
  --findings "${SA_OUT_DIR}/${PROJECT_SLUG}/findings.json" \
  --facts "${SA_OUT_DIR}/${PROJECT_SLUG}/fact_pack.json" \
  --out specs/"${PROJECT_SLUG}"

# 3. Build Project Bitcode (Critical for Linking)
if [ ! -f "$PROJECT_BC" ]; then
    echo "[*] Building Project Bitcode..."
    ./sailr_cegir/build_project_bc.sh "$SRC_ROOT" "$PROJECT_BC"
    
    # Generic Symbol Check (Looks for any "Text" symbol)
    if ! llvm-nm "$PROJECT_BC" | grep -q " [Tt] "; then
        echo "[!] Error: project.bc is empty or missing symbols."
        exit 1
    fi
fi

# --- Phase 2: Agent Execution ---
echo "[=] Phase 2: Running Agents (STAILOR)"

export MAX_A=30
export MAX_B=3
export TIMEOUT=600

# [UPDATED] Use the new consolidated batch dispatcher
bash sailr_cegir/run_batch.sh \
  "$PROJECT_ID" \
  "$RULE_ID" \
  specs \
  4  # JOBS

# --- Phase 3: Results ---
echo "[=] Phase 3: Collecting Results"

python3 sailr_cegir/collect_results.py \
  --mode-root "se_runs/sailr_cegir/${PROJECT_SLUG}" \
  --src-root "$SRC_ROOT" \
  --out-dir "stailor_report_pack_${PROJECT_SLUG}"

echo "[✓] Pipeline Finished."
echo "    Report: stailor_report_pack_${PROJECT_SLUG}/summary_report.csv"