#!/bin/bash
# run_pipeline.sh: Orchestrate Static Analysis -> Spec Gen -> Agent Execution -> Result Collection

# --- Configuration ---
export PROJECT_ID="62911/libxml2_62911_vul"
export RULE_ID="oob-read"

# Define Paths
export PROJECT_SLUG="$(basename "$PROJECT_ID")"
export SA_OUT_DIR="sa_outputs"
export DATASET_ROOT="dataset"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export PROJECT_BC="${SRC_ROOT}/project.bc"

# Paths
export KLEE_INCLUDE="$HOME/tools/klee/include"
export CLANG_FLAGS="-I${SRC_ROOT}/include -I${KLEE_INCLUDE}"

# LLM Config (Ensure your key is set in env)
# export DEEPSEEK_API_KEY="..." 

# --- Phase 1: Preparation ---
echo "[=] Phase 1: Static Analysis & Prep"

# 1. Extract Source
if [ ! -d "$SRC_ROOT" ]; then
    echo "[*] Extracting source for ${PROJECT_ID}..."
    python3 extract_from_cybergym.py arvo:62911 libxml2
fi

# 2. Run CodeQL (if findings don't exist)
if [ ! -f "${SA_OUT_DIR}/${PROJECT_SLUG}/findings.json" ]; then
    echo "[*] Running CodeQL Scan..."
    ./codeql_scan.sh \
      PROJECT_NAME="${PROJECT_SLUG}" \
      SRC_ROOT="$SRC_ROOT" \
      BUILD_CMD="make -j$(nproc)" \
      QUERY_SUITES="rules/oob-pack/suites/oob-read.qls" \
      CONTEXT_LINES=5 \
      ALSO_CPP=false
fi

# 3. Generate Specs
echo "[*] Generating Vulnerability Specs..."
python3 scripts/make_vul_specs.py \
  --findings "${SA_OUT_DIR}/${PROJECT_SLUG}/findings.json" \
  --facts "${SA_OUT_DIR}/${PROJECT_SLUG}/fact_pack.json" \
  --out specs/"${PROJECT_SLUG}"

# 4. Build Project Bitcode (Critical for Linking)
if [ ! -f "$PROJECT_BC" ]; then
    echo "[*] Building Project Bitcode..."
    ./sailr_cegir/build_project_bc.sh "$SRC_ROOT" "$PROJECT_BC"
    
    # Verify symbols immediately
    if ! llvm-nm "$PROJECT_BC" | grep -q "T xmlDictLookup"; then
        echo "[!] Error: project.bc is missing symbols. Check build script."
        exit 1
    fi
fi

# --- Phase 2: Agent Execution ---
echo "[=] Phase 2: Running Agents (STAILOR)"

# Config for Batch Runner
export MAX_A=30   # Compilation attempts
export MAX_B=3    # KLEE Refinement loops
export TIMEOUT=600

# Run the Batch Script
bash sailr_cegir/run_sailr_cegir_batch.sh \
  "$PROJECT_ID" \
  "$RULE_ID" \
  specs \
  4  # Number of parallel jobs

# --- Phase 3: Results ---
echo "[=] Phase 3: Collecting Results"

# [UPDATED] Use the new consolidated collector
# Assuming collect_results.py is located in sailr_cegir/ or sailr_cegir/scripts/
# Adjust the path below if you placed it elsewhere.

python3 sailr_cegir/collect_results.py \
  --mode-root "se_runs/sailr_cegir/${PROJECT_SLUG}" \
  --src-root "$SRC_ROOT" \
  --out-dir "stailor_report_pack_${PROJECT_SLUG}"

echo "[✓] Pipeline Finished."
echo "    Report: stailor_report_pack_${PROJECT_SLUG}/summary_report.csv"