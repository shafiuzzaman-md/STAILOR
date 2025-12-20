#!/usr/bin/env bash
set -euo pipefail

# SAILR-CEGIR Batch Runner
# UPDATED: Parallelized 3-Stage Pipeline with CLANG_FLAGS fix

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_ROOT [JOBS]" >&2
  exit 1
fi

export PROJECT_ID="$1"        
export RULE_ID="$2"           
export SPEC_ROOT="$3"         
JOBS="${4:-4}"

# --- DEFAULTS ---
export SA_OUT_DIR="${SA_OUT_DIR:-sa_outputs}"
export DATASET_ROOT="$(realpath "${DATASET_ROOT:-dataset}")"
export LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
export LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"

export MAX_A="${MAX_A:-10}"     # Increased for complex reachability
export MAX_B="${MAX_B:-3}"     
export MAX_CYCLES="${MAX_CYCLES:-2}" # Default 2 cycles for batch
export TIMEOUT="${TIMEOUT:-300}"     

export CLANG="${CLANG:-clang-14}"
export CLANG_FLAGS="${CLANG_FLAGS:-}" # Capture env var
export KLEE="${KLEE:-klee}"
export KLEE_FLAGS="${KLEE_FLAGS:---search=nurs:covnew --max-time=60 --external-calls=all}"

export REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPTS_DIR="${REPO_ROOT}/sailr_cegir/scripts"

PROJECT_SLUG="$(basename "$PROJECT_ID")"   
SPEC_DIR="${SPEC_ROOT}/${PROJECT_SLUG}"
export SRC_ROOT="${DATASET_ROOT}/${PROJECT_ID}"
export SA_PROJECT_DIR="${SA_OUT_DIR}/${PROJECT_SLUG}"

export MODE_ROOT="se_runs/sailr_cegir/${PROJECT_SLUG}"
export SUMMARY_TSV="${MODE_ROOT}/summary.tsv"
export PROJECT_BC="${SRC_ROOT}/project.bc"

mkdir -p "${MODE_ROOT}"

echo "[i] CONFIG:"
echo "    PROJECT_ID   = ${PROJECT_ID}"
echo "    JOBS         = ${JOBS}"
echo "    CYCLES       = ${MAX_CYCLES}"

if [ ! -d "${SPEC_DIR}" ]; then
  echo "[!] Spec directory does not exist: ${SPEC_DIR}" >&2
  exit 1
fi

# --- Function: Auto-Build Bitcode ---
ensure_project_bitcode() {
    local src="$1"
    local dest="$2"

    if [ -f "$dest" ]; then
        echo "[i] Found existing bitcode: $dest"
        return 0
    fi

    echo "==============================================="
    echo "[*] Bitcode missing. Starting Auto-Build..."
    echo "==============================================="

    if ! command -v wllvm &> /dev/null; then
        echo "[!] wllvm not found. Please install it."
        exit 1
    fi

    export LLVM_COMPILER=clang
    export CC=wllvm
    export CXX=wllvm+

    pushd "$src" > /dev/null
    make clean > /dev/null 2>&1 || true
    
    if [ -f "./configure" ]; then
        ./configure --disable-shared --without-python --silent
    elif [ -f "./autogen.sh" ]; then
        ./autogen.sh --disable-shared --without-python
    fi

    make -j$(nproc) > /dev/null

    echo "[*] Extracting..."
    local TARGET_LIB=$(find .libs -maxdepth 1 -name "*.a" | head -n 1)
    if [ -z "$TARGET_LIB" ]; then 
        TARGET_LIB=$(find . -maxdepth 1 -name "*.a" | head -n 1); 
    fi

    if [ -z "$TARGET_LIB" ]; then
        echo "[!] No static library (*.a) found."
        popd > /dev/null; exit 1
    fi

    extract-bc -b "$TARGET_LIB"

    if [ -f "${TARGET_LIB}.bc" ]; then
        mv "${TARGET_LIB}.bc" "$dest"
    elif [ -f "${TARGET_LIB}.bca" ]; then
        llvm-link "${TARGET_LIB}.bca" -o "$dest"
    fi
    
    echo "[✓] Bitcode ready: $dest"
    popd > /dev/null
}

ensure_project_bitcode "${SRC_ROOT}" "${PROJECT_BC}"

# --- Cleanup Block ---
echo "[*] Cleaning build artifacts to reduce noise for Agent..."
pushd "${SRC_ROOT}" > /dev/null
if [ -f "project.bc" ]; then mv project.bc project.bc.temp_keep; fi
make clean > /dev/null 2>&1 || true
rm -f .*.o .*.lo .*.la .*.o.bc .*.lo.bc *.o *.lo *.la *.bc
if [ -f "project.bc.temp_keep" ]; then mv project.bc.temp_keep project.bc; fi
popd > /dev/null
echo "[✓] Source directory cleaned."

# --- JOB FUNCTION ---
process_spec() {
    SPEC="$1"
    STEM="$(basename "${SPEC}" .json)"
    RUN_DIR="${MODE_ROOT}/${STEM}"
    
    # Skip if we already found a Full Bug (H2)
    if [ -f "${RUN_DIR}/run_meta.json" ]; then
        if grep -q '"class": "H2"' "${RUN_DIR}/run_meta.json"; then
            echo "[SKIP] ${STEM} (Already found H2)"
            return
        fi
    fi

    echo "[START] ${STEM}"
    mkdir -p "${RUN_DIR}"

    python3 "${REPO_ROOT}/sailr_cegir/scripts/run_agent_for_spec.py" \
      --sa-out-dir "${SA_PROJECT_DIR}" \
      --dataset-root "${DATASET_ROOT}" \
      --project-id "${PROJECT_ID}" \
      --src-root "${SRC_ROOT}" \
      --spec "${SPEC}" \
      --spec-stem "${STEM}" \
      --vul-file "$(echo "${STEM}" | cut -d'_' -f2)" \
      --vul-line "$(echo "${STEM}" | cut -d'_' -f3)" \
      --rule-id "${RULE_ID}" \
      --target-vul "${PROJECT_ID}:..." \
      --llm-model "${LLM_MODEL}" \
      --llm-api-base "${LLM_API_BASE}" \
      --clang "${CLANG}" \
      --clang-flags="${CLANG_FLAGS}" \
      --klee "${KLEE}" \
      --klee-flags="${KLEE_FLAGS}" \
      --max-a "${MAX_A}" \
      --max-b "${MAX_B}" \
      --max-cycles "${MAX_CYCLES}" \
      --timeout "${TIMEOUT}" \
      --run-dir "${RUN_DIR}" \
      --summary-tsv "${SUMMARY_TSV}" \
      --project-bc "${PROJECT_BC}" > "${RUN_DIR}/batch_wrapper.log" 2>&1

    echo "[DONE] ${STEM}"
}

export -f process_spec

# --- PARALLEL EXECUTION ---
find "${SPEC_DIR}" -maxdepth 1 -type f -name "*.json" | sort | \
  xargs -P "${JOBS}" -I {} bash -c 'process_spec "$@"' _ {}

echo "[✓] Batch complete."