#!/bin/bash
# sailr_cegir/run_robust_pipeline.sh
# The Scientifically Robust Funnel: Fast Sweep -> Triage -> Deep Drill / Re-Plan
# Usage: ./run_robust_pipeline.sh <PROJECT_ID> [RULE_ID]

set -e # Fail fast on script errors

if [ -z "$1" ]; then
    echo "Usage: $0 <PROJECT_ID> [RULE_ID]"
    exit 1
fi

PROJECT_ID="$1"
RULE_ID="${2:-oob-read}"
PROJECT_SLUG="$(basename "$PROJECT_ID")"

# Auto-configure CLANG_FLAGS so KLEE and Project headers are found.
# This mirrors the logic you used in your manual command.

# 1. Define Roots
export DATASET_ROOT="${DATASET_ROOT:-dataset}"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"

# 2. Locate KLEE (Adjust /home/shafi/tools... to your actual path if needed)
export KLEE_INCLUDE="${KLEE_INCLUDE:-$HOME/tools/klee/include}"

# 3. Export Flags globally for all workers
export CLANG_FLAGS="-I${SRC_ROOT}/include -I${SRC_ROOT}/build -I${KLEE_INCLUDE}"

echo "[Config] CLANG_FLAGS set to: $CLANG_FLAGS"

# --- CONFIGURATION ---
STAGE1_DIR="se_runs_stage1"
STAGE2_DIR="se_runs_stage2"

# Ensure we are in the repo root
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

# ==========================================
# STAGE 1: FAST SWEEP
# Goal: Filter out easy targets and junk.
# ==========================================
echo "========================================================="
echo "[Stage 1] Fast Sweep (10m Timeout, 20 Retries)"
echo "========================================================="

export SE_RUNS_ROOT="$STAGE1_DIR"
export TIMEOUT=600
export MAX_A=20

# Run the standard batch
bash sailr_cegir/run_batch.sh "$PROJECT_ID" "$RULE_ID" "specs" 4

SUMMARY_FILE="${STAGE1_DIR}/sailr_cegir/${PROJECT_SLUG}/summary.tsv"
echo ""
echo "[*] Analyzing Stage 1 Results: $SUMMARY_FILE"

if [ ! -f "$SUMMARY_FILE" ]; then
    echo "[!] Error: Summary file not found. Batch run may have failed."
    exit 1
fi

# ==========================================
# STAGE 2: TARGETED TRIAGE
# Goal: Drill down on hard targets in a fresh environment.
# ==========================================
export SE_RUNS_ROOT="$STAGE2_DIR"

# Ensure Summary TSV exists for Stage 2 aggregation (so run_worker appends correctly)
S2_SUMMARY="${STAGE2_DIR}/sailr_cegir/${PROJECT_SLUG}/summary.tsv"
mkdir -p "$(dirname "$S2_SUMMARY")"
touch "$S2_SUMMARY"

# --- 2A. DEEP DRILL (Solver/Search-Hard) ---
# Criteria: 
# 1. H2_REACH (Score 2): Reached vulnerability, solver timed out finding crash.
# 2. H1 (Score 1): Global timeout, potentially stuck in complex loops.
# 3. Long H0 (Score 0.5): Valid harness ran for >80% of timeout (Search-hard).
echo ""
echo "[Stage 2A] Identifying Deep Drill Candidates..."

# awk logic: (Col2 == H2_REACH OR H1) OR (Col2 == H0 AND Col4 > 480)
# Column 4 is Time (elapsed seconds).
DRILL_CANDIDATES=$(awk '($2 == "H2_REACH") || ($2 == "H1") || ($2 == "H0" && $4 > 480) {print $1}' "$SUMMARY_FILE")

if [ ! -z "$DRILL_CANDIDATES" ]; then
    echo "    -> Found candidates for Deep Drill. Switching to 1 Hour Timeout."
    export TIMEOUT=3600
    export MAX_A=30
    
    for ID in $DRILL_CANDIDATES; do
        echo "    >> Drilling: $ID"
        SPEC_FILE=$(find specs -name "${ID}.json" | head -n 1)
        
        # [PROVENANCE PRESERVATION]
        # Copy the SUCCESSFUL plan from Stage 1 to Stage 2.
        # We test: "Can this SAME logic find the bug given 1 hour?"
        S1_PLAN="${STAGE1_DIR}/sailr_cegir/${PROJECT_SLUG}/${ID}/frozen_analysis/frozen_plan.json"
        S2_PLAN_DIR="${STAGE2_DIR}/sailr_cegir/${PROJECT_SLUG}/${ID}/frozen_analysis"
        
        # Clear previous stub candidates to avoid pollution
        unset FORCE_STUB_CANDIDATES

        if [ -f "${S1_PLAN}" ]; then
            mkdir -p "${S2_PLAN_DIR}"
            cp "${S1_PLAN}" "${S2_PLAN_DIR}/frozen_plan.json"
            echo "       (Preserved Stage 1 Frozen Plan)"
            
            # [SMART STUBBING] Check for hotspots in Stage 1 logs
            # We look at the logs from the previous run to see what was slow.
            LOG_DIR="${STAGE1_DIR}/sailr_cegir/${PROJECT_SLUG}/${ID}/refinement/logs"
            
            # Find the last KLEE run directory (sort by version to get the latest)
            LAST_RUN=$(ls -d "$LOG_DIR"/klee-out-* 2>/dev/null | sort -V | tail -n 1)
            
            if [ -d "$LAST_RUN" ]; then
                # Run the hotspot detector
                HOTSPOTS=$(python3 sailr_cegir/scripts/analyze_klee_hotspots.py "$LAST_RUN" 2>/dev/null)
                
                if [ ! -z "$HOTSPOTS" ]; then
                    # Flatten newlines for display
                    FLAT_HOTSPOTS=$(echo "$HOTSPOTS" | tr '\n' ' ')
                    echo "       [!] Smart Stubbing: Detected Hotspots -> $FLAT_HOTSPOTS"
                    
                    # Export for the Python Agent to read
                    export FORCE_STUB_CANDIDATES="$HOTSPOTS"
                fi
            fi
        else
            echo "       [!] Warning: Stage 1 plan not found. Will regenerate."
        fi

        bash sailr_cegir/run_worker.sh "$PROJECT_ID" "$RULE_ID" "$SPEC_FILE" "rules/stailor-queries/suites/stailor.qls"
    done
else
    echo "    -> No candidates for Deep Drill."
fi

# --- 2B. RE-PLAN RESCUE (Logic-Hard) ---
# Criteria: H0 (Score 0.5) AND Finished Quickly (<= 480s)
# Logic: The harness ran validly but finished/exited early. The plan is likely missing setup steps.
echo ""
echo "[Stage 2B] Identifying Re-Plan Candidates..."

REPLAN_CANDIDATES=$(awk '$2 == "H0" && $4 <= 480 {print $1}' "$SUMMARY_FILE")

if [ ! -z "$REPLAN_CANDIDATES" ]; then
    echo "    -> Found Logic-Hard candidates (Early Termination). Forcing Plan Regeneration."
    export TIMEOUT=600  # Keep short timeout to fail fast again if logic stays bad
    export MAX_A=20
    export MAX_B=3      # Allow retries of Phase 1
    
    for ID in $REPLAN_CANDIDATES; do
        echo "    >> Re-Planning: $ID"
        SPEC_FILE=$(find specs -name "${ID}.json" | head -n 1)
        
        # [PROVENANCE]
        # We intentionally do NOT copy the plan.
        # The python script will see no plan in S2_PLAN_DIR and generate a new one (v2).
        
        bash sailr_cegir/run_worker.sh "$PROJECT_ID" "$RULE_ID" "$SPEC_FILE" "rules/stailor-queries/suites/stailor.qls"
    done
else
    echo "    -> No candidates for Re-Planning."
fi

echo ""
echo "========================================================="
echo "[✓] Robust Pipeline Complete."
echo "    Stage 1 Report: $SUMMARY_FILE"
echo "    Stage 2 Report: $S2_SUMMARY"
echo "========================================================="