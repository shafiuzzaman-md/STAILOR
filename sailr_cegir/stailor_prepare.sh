#!/usr/bin/env bash
# stailor_prepare.sh — One-time project setup: CodeQL scan + spec generation + bitcode build
#
# Usage:  ./stailor_prepare.sh <PROJECT_ID>
# Example: ./stailor_prepare.sh 55980/libxml2_55980_vul
#
# This only needs to run ONCE per project. Re-run only if source changes.
# After this, use stailor.sh to run the agent on the generated specs.

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
            head -10 "$0" | tail -9
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
  echo "Example: $0 55980/libxml2_55980_vul --se-config se_config/my_project"
  exit 1
fi

# Validate SE_CONFIG_DIR
if [ -n "$SE_CONFIG_DIR" ]; then
    local_basename="$(basename "$SE_CONFIG_DIR")"
    if [[ "$local_basename" == "samples" || "$SE_CONFIG_DIR" == */samples/* ]]; then
        echo "[ERROR] SE_CONFIG points to the samples directory."
        echo "  Copy it first: cp -r se_config/samples/ se_config/my_project/"
        exit 1
    fi
fi

export PROJECT_ID

# --- Paths ---
REPO_ROOT="$(pwd)"
export DATASET_ROOT="${DATASET_ROOT:-${REPO_ROOT}/dataset}"
export SA_OUT_DIR="${SA_OUT_DIR:-${REPO_ROOT}/sa_outputs}"
export SRC_ROOT="$(realpath -m "${DATASET_ROOT}/${PROJECT_ID}")"
export PROJECT_NAME="$(basename "$PROJECT_ID")"
export PROJECT_BC="${SRC_ROOT}/project.bc"
export SPECS_DIR="${REPO_ROOT}/specs/${PROJECT_NAME}"

if [ ! -d "$SRC_ROOT" ]; then
  echo "[ERROR] Source directory not found: $SRC_ROOT"
  exit 1
fi

# --- Load Project Configuration ---
CONFIGS_DIR="${REPO_ROOT}/configs"
CONFIG_FILE="${CONFIGS_DIR}/${PROJECT_NAME}_config.sh"

export CMAKE_FLAGS="${CMAKE_FLAGS:--DBUILD_SHARED_LIBS=OFF}"
export CONFIGURE_FLAGS="${CONFIGURE_FLAGS:---disable-shared --enable-static}"
export EXTRA_CFLAGS="${EXTRA_CFLAGS:-}"

if [ -f "$CONFIG_FILE" ]; then
    echo "[i] Loading project config: $CONFIG_FILE"
    source "$CONFIG_FILE"
fi

# --- LLVM 14 Toolchain ---
export LLVM_COMPILER=clang
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export CC=/usr/lib/llvm-14/bin/clang
export CXX=/usr/lib/llvm-14/bin/clang++
export LLVM_LINK=/usr/lib/llvm-14/bin/llvm-link
export LLVM_DIS=/usr/lib/llvm-14/bin/llvm-dis

# --- Helper: Auto-Detect Build System ---
detect_build_cmd() {
  if [ -f "$SRC_ROOT/build.sh" ]; then
    echo "./build.sh"
  elif [ -f "$SRC_ROOT/CMakeLists.txt" ]; then
    echo "mkdir -p build && cd build && cmake .. $CMAKE_FLAGS && make -j\$(nproc)"
  elif [ -f "$SRC_ROOT/configure" ]; then
    echo "./configure $CONFIGURE_FLAGS && make -j\$(nproc)"
  else
    echo "make -j\$(nproc)"
  fi
}

# ==============================================================================
# Step 1: CodeQL Scan
# ==============================================================================
echo "[=] Step 1: Static Analysis (CodeQL)"

FINDINGS_JSON="${SA_OUT_DIR}/${PROJECT_NAME}/findings.json"
FACT_PACK_JSON="${SA_OUT_DIR}/${PROJECT_NAME}/fact_pack.json"

if [ -f "$FINDINGS_JSON" ]; then
  echo "[i] Findings already exist: $FINDINGS_JSON (skipping scan)"
else
  DETECTED_BUILD_CMD="$(detect_build_cmd)"
  echo "[i] Build command: $DETECTED_BUILD_CMD"

  ./codeql_scan.sh \
    PROJECT_NAME="$PROJECT_NAME" \
    SRC_ROOT="$SRC_ROOT" \
    BUILD_CMD="$DETECTED_BUILD_CMD" \
    QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
    CONTEXT_LINES=5 \
    ALSO_CPP=false \
    TIME_PER_RULE=true
fi

# ==============================================================================
# Step 2: Generate Vulnerability Specs
# ==============================================================================
echo "[=] Step 2: Generating Vulnerability Specs"
mkdir -p "$SPECS_DIR"

python3 scripts/make_vul_specs.py \
  --findings "$FINDINGS_JSON" \
  --facts "$FACT_PACK_JSON" \
  --out "$SPECS_DIR"

SPEC_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)
echo "[i] Generated $SPEC_COUNT specs in: $SPECS_DIR"

# ==============================================================================
# Step 2b: Merge Extra Specs from SE Config
# ==============================================================================
if [ -n "$SE_CONFIG_DIR" ]; then

    # --- Extra specs: manually written or imported from other SA tools ---
    EXTRA_SPECS_DIR="${SE_CONFIG_DIR}/extra_specs"
    if [ -d "$EXTRA_SPECS_DIR" ]; then
        EXTRA_COUNT=$(find "$EXTRA_SPECS_DIR" -name "*.json" -type f | wc -l)
        if [ "$EXTRA_COUNT" -gt 0 ]; then
            echo "[=] Step 2b: Merging $EXTRA_COUNT extra specs from ${EXTRA_SPECS_DIR}"
            for spec_file in "$EXTRA_SPECS_DIR"/*.json; do
                spec_name="$(basename "$spec_file")"
                # Prefix with "extra_" to avoid collisions with auto-generated specs
                target="${SPECS_DIR}/extra_${spec_name}"
                if [ ! -f "$target" ]; then
                    cp "$spec_file" "$target"
                    echo "  [+] Merged: $spec_name"
                else
                    echo "  [i] Already exists: $spec_name (skipping)"
                fi
            done
            SPEC_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)
            echo "[i] Total specs after merge: $SPEC_COUNT"
        fi
    fi

    # --- Vulnerability patterns: LLM-generated specs ---
    VULN_PATTERNS="${SE_CONFIG_DIR}/vuln_patterns.txt"
    if [ -f "$VULN_PATTERNS" ]; then
        echo "[=] Step 2c: Generating specs from vulnerability patterns"
        GEN_SPECS_SCRIPT="${REPO_ROOT}/scripts/gen_specs_from_patterns.py"
        if [ -f "$GEN_SPECS_SCRIPT" ]; then
            python3 "$GEN_SPECS_SCRIPT" \
                --patterns "$VULN_PATTERNS" \
                --src-root "$SRC_ROOT" \
                --out "$SPECS_DIR" \
                --prefix "pattern_"
            SPEC_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)
            echo "[i] Total specs after pattern generation: $SPEC_COUNT"
        else
            echo "[WARN] Pattern-based spec generation requires: $GEN_SPECS_SCRIPT"
            echo "  Patterns file found but generator script is missing."
        fi
    fi

    # --- Focus modules: filter specs to only include matching files ---
    FOCUS_MODULES="${SE_CONFIG_DIR}/focus_modules.txt"
    # Also check config.json for focus.modules
    FOCUS_FROM_CONFIG=""
    if [ -f "${SE_CONFIG_DIR}/config.json" ]; then
        FOCUS_FROM_CONFIG=$(python3 -c "
import json, sys
try:
    c = json.load(open('${SE_CONFIG_DIR}/config.json'))
    mods = c.get('focus', {}).get('modules', [])
    excl = c.get('focus', {}).get('exclude', [])
    if mods or excl:
        for m in mods: print('+' + m)
        for e in excl: print('!' + e)
except: pass
" 2>/dev/null || echo "")
    fi

    if [ -f "$FOCUS_MODULES" ] || [ -n "$FOCUS_FROM_CONFIG" ]; then
        echo "[=] Step 2d: Filtering specs by focus modules"
        FILTER_SCRIPT="${REPO_ROOT}/scripts/filter_specs_by_focus.py"
        if [ -f "$FILTER_SCRIPT" ]; then
            FOCUS_ARGS=()
            [ -f "$FOCUS_MODULES" ] && FOCUS_ARGS+=(--focus-file "$FOCUS_MODULES")
            [ -n "$FOCUS_FROM_CONFIG" ] && FOCUS_ARGS+=(--focus-config "${SE_CONFIG_DIR}/config.json")

            BEFORE_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)
            python3 "$FILTER_SCRIPT" --specs-dir "$SPECS_DIR" "${FOCUS_ARGS[@]}"
            AFTER_COUNT=$(find "$SPECS_DIR" -name "*.json" | wc -l)
            FILTERED=$((BEFORE_COUNT - AFTER_COUNT))
            if [ "$FILTERED" -gt 0 ]; then
                echo "[i] Filtered out $FILTERED specs (${BEFORE_COUNT} → ${AFTER_COUNT})"
            fi
            SPEC_COUNT=$AFTER_COUNT
        else
            echo "[WARN] Focus filtering requires: $FILTER_SCRIPT"
            echo "  Focus config found but filter script is missing."
        fi
    fi
fi

# ==============================================================================
# Step 3: Build Project Bitcode
# ==============================================================================
echo "[=] Step 3: Building Project Bitcode"

if [ -f "$PROJECT_BC" ]; then
  echo "[i] Bitcode already exists: $PROJECT_BC (skipping build)"
else
  bash "${REPO_ROOT}/sailr_cegir/build_project_bc.sh" "$SRC_ROOT" "$PROJECT_BC"

  # Validate
  if ! "$LLVM_DIS" -o /dev/null "$PROJECT_BC" >/dev/null 2>&1; then
    echo "[ERROR] project.bc is not valid LLVM bitcode."
    exit 1
  fi

  DEF_COUNT="$(llvm-nm-14 --defined-only "$PROJECT_BC" 2>/dev/null | wc -l | tr -d ' ')"
  echo "[i] Bitcode has $DEF_COUNT defined symbols"
  if [ "${DEF_COUNT:-0}" -le 0 ]; then
    echo "[ERROR] project.bc contains no defined symbols."
    exit 1
  fi
fi

# ==============================================================================
echo ""
echo "[✓] Preparation complete for: $PROJECT_NAME"
echo "    Specs:   $SPECS_DIR ($SPEC_COUNT files)"
echo "    Bitcode: $PROJECT_BC"
if [ -n "$SE_CONFIG_DIR" ]; then
echo "    Config:  $SE_CONFIG_DIR"
fi
echo ""
if [ -n "$SE_CONFIG_DIR" ]; then
echo "Next: run the agent with:"
echo "    SE_CONFIG=\"${SE_CONFIG_DIR}\" ./stailor.sh $PROJECT_ID"
else
echo "Next: run the agent with:"
echo "    ./stailor.sh $PROJECT_ID"
fi
