#!/bin/bash
# run_stailor.sh: Universal STAILOR Pipeline (Mixed Batch Support)
# Usage: ./run_stailor.sh <PROJECT_FOLDER_NAME>
# Example: ./run_stailor.sh 62911/libxml2_62911_vul

set -euo pipefail

# --- 1. Dynamic Inputs ---
if [ -z "${1:-}" ]; then
  echo "Usage: $0 <PROJECT_ID>"
  echo "Example: $0 62911/libxml2_62911_vul"
  exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="auto"

# Derived Paths (ABSOLUTE to avoid cd-related breakage)
REPO_ROOT="$(pwd)"
export DATASET_ROOT="${REPO_ROOT}/dataset"
export SA_OUT_DIR="${REPO_ROOT}/sa_outputs"

# NOTE: PROJECT_ID is relative inside dataset (e.g., 62911/libxml2_62911_vul)
export SRC_ROOT="$(realpath -m "${DATASET_ROOT}/${PROJECT_ID}")"
export PROJECT_NAME="$(basename "$PROJECT_ID")"
export PROJECT_BC="${SRC_ROOT}/project.bc"
export SPECS_DIR="${REPO_ROOT}/specs/${PROJECT_NAME}"

# Validation
if [ ! -d "$SRC_ROOT" ]; then
  echo "[!] Error: Source directory not found at $SRC_ROOT"
  exit 1
fi

export KLEE_INCLUDE="$HOME/tools/klee/include"
export CLANG_FLAGS="-I${SRC_ROOT}/include -I${SRC_ROOT}/build -I${KLEE_INCLUDE}"

# Build command for project.bc generation (used by workers)
export BUILD_PROJECT_BC_CMD="bash ${REPO_ROOT}/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}"

# --- Helper: Auto-Detect Build System ---
detect_build_cmd() {
  if [ -f "$SRC_ROOT/build.sh" ]; then
    echo "cd \"$SRC_ROOT\" && ./build.sh"
  elif [ -f "$SRC_ROOT/CMakeLists.txt" ]; then
    echo "cd \"$SRC_ROOT\" && mkdir -p build && cd build && cmake .. && make -j\$(nproc)"
  elif [ -f "$SRC_ROOT/configure" ]; then
    echo "cd \"$SRC_ROOT\" && ./configure && make -j\$(nproc)"
  else
    echo "cd \"$SRC_ROOT\" && make -j\$(nproc)"
  fi
}

# --- Phase 1: Static Analysis & Prep ---
echo "[=] Phase 1: Static Analysis & Prep for $PROJECT_ID"

FINDINGS_JSON="${SA_OUT_DIR}/${PROJECT_NAME}/findings.json"
FACT_PACK_JSON="${SA_OUT_DIR}/${PROJECT_NAME}/fact_pack.json"

if [ ! -f "$FINDINGS_JSON" ]; then
  DETECTED_BUILD_CMD="$(detect_build_cmd)"

  ./codeql_scan.sh \
    PROJECT_NAME="$PROJECT_NAME" \
    SRC_ROOT="$SRC_ROOT" \
    BUILD_CMD="$DETECTED_BUILD_CMD" \
    QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
    CONTEXT_LINES=5 \
    ALSO_CPP=false \
    TIME_PER_RULE=true
fi

echo "[*] Generating Vulnerability Specs..."
mkdir -p "$SPECS_DIR"

python3 scripts/make_vul_specs.py \
  --findings "$FINDINGS_JSON" \
  --facts "$FACT_PACK_JSON" \
  --out "$SPECS_DIR"

# --- Phase 1b: Build Project Bitcode ---
if [ ! -f "$PROJECT_BC" ]; then
  echo "[*] Building Project Bitcode..."
  export LLVM_COMPILER=clang
  export BUILD_SHARED_LIBS=OFF
  export CMAKE_FLAGS="-DBUILD_SHARED_LIBS=OFF -DLIBXML2_WITH_PYTHON=OFF"
  export CONFIGURE_FLAGS="--disable-shared --enable-static --without-python"

  bash "${REPO_ROOT}/sailr_cegir/build_project_bc.sh" "$SRC_ROOT" "$PROJECT_BC"

    # Robust validation: ensure the bitcode is valid LLVM IR
    if ! llvm-dis-14 -o /dev/null "$PROJECT_BC" >/dev/null 2>&1; then
        echo "[!] Error: project.bc is not valid LLVM bitcode (llvm-dis failed)."
        exit 1
    fi

    # Optional sanity check: ensure at least one function definition exists
    if ! llvm-dis-14 -o - "$PROJECT_BC" 2>/dev/null | grep -q '^define '; then
        echo "[!] Error: project.bc contains no function definitions."
        exit 1
    fi

fi

# --- Phase 2: Agent Execution ---
echo "[=] Phase 2: Running Agents (STAILOR)"
export MAX_A=30
export MAX_B=3
export TIMEOUT=600

# IMPORTANT: pass the per-project specs directory, not the global specs root.
bash "${REPO_ROOT}/sailr_cegir/run_batch.sh" \
  "$PROJECT_ID" \
  "auto" \
  "$SPECS_DIR" \
  4

# --- Phase 3: Results ---
echo "[=] Phase 3: Collecting Results"
python3 "${REPO_ROOT}/sailr_cegir/collect_results.py" \
  --mode-root "${REPO_ROOT}/se_runs/sailr_cegir/${PROJECT_NAME}" \
  --src-root "$SRC_ROOT" \
  --out-dir "${REPO_ROOT}/stailor_report_pack_${PROJECT_NAME}"

echo "[✓] Pipeline Finished."
