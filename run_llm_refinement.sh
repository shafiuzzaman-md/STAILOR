#!/usr/bin/env bash
set -euo pipefail

###############################################################################
# CLI ARGUMENT PARSING — no hardcoded config
###############################################################################
usage() {
  cat <<EOF
Usage: $0 --sa-out DIR --dataset ROOT --target PROJECT:FILE:LINE --rule RULEID --spec PATH_OR_DIR

Required:
  --sa-out DIR               Static analysis output directory (findings.json, facts, CCDB)
  --dataset ROOT             Dataset root directory
  --target P:F:L             Target vulnerability (project:file:line)
  --rule RULEID              Vulnerability rule id (e.g., local.oob.memfunc.length-misuse)
  --spec PATH_OR_DIR         Either:
                               - Full path to spec JSON, OR
                               - Directory containing spec JSON; the script will
                                 look for 000_<file>_<line>_<rule>.json in it.

Optional:
  --model NAME               LLM model (default: deepseek-chat)
  --api-base URL             LLM API base (default: https://api.deepseek.com)
  --max-a N                  Phase A iterations (default: 8)
  --max-b N                  Phase B iterations (default: 12)
  --timeout T                Per-step timeout (default: 120)

ENV:
  DEEPSEEK_API_KEY or OPENAI_API_KEY must be set.

EOF
  exit 1
}

# Defaults
LLM_MODEL="deepseek-chat"
LLM_API_BASE="https://api.deepseek.com"
MAX_A=8
MAX_B=12
TIMEOUT=120

# Parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    --sa-out)   SA_OUT_DIR="$2"; shift 2;;
    --dataset)  DATASET_ROOT="$2"; shift 2;;
    --target)   TARGET_VUL="$2"; shift 2;;
    --rule)     RULE_ID="$2"; shift 2;;
    --spec)     SPEC_INPUT="$2"; shift 2;;
    --model)    LLM_MODEL="$2"; shift 2;;
    --api-base) LLM_API_BASE="$2"; shift 2;;
    --max-a)    MAX_A="$2"; shift 2;;
    --max-b)    MAX_B="$2"; shift 2;;
    --timeout)  TIMEOUT="$2"; shift 2;;
    -h|--help)  usage;;
    *)
      echo "[!] Unknown argument: $1" >&2
      usage
      ;;
  esac
done

# Validate required args
[[ -z "${SA_OUT_DIR:-}"    ]] && usage
[[ -z "${DATASET_ROOT:-}"  ]] && usage
[[ -z "${TARGET_VUL:-}"    ]] && usage
[[ -z "${RULE_ID:-}"       ]] && usage
[[ -z "${SPEC_INPUT:-}"    ]] && usage

###############################################################################
# Extract PROJECT / FILE / LINE
###############################################################################
PROJECT="${TARGET_VUL%%:*}"   # e.g., 62911/libxml2_62911_vul
REST="${TARGET_VUL#*:}"       # dict.c:541
VUL_FILE="${REST%%:*}"        # dict.c
VUL_LINE="${REST##*:}"        # 541
STEM="${VUL_FILE}_${VUL_LINE}"

SRC_ROOT="${DATASET_ROOT}/${PROJECT}"

###############################################################################
# Resolve SPEC path (file or directory + pattern)
###############################################################################
# Pattern we expect (but we don't hardcode the directory)
SPEC_BASENAME="000_${STEM}_${RULE_ID}.json"

if [[ -f "${SPEC_INPUT}" ]]; then
  # Exact file path given
  SPEC="${SPEC_INPUT}"
else
  # Treat SPEC_INPUT as a directory, try a few candidates
  CANDIDATES=(
    "${SPEC_INPUT}/${SPEC_BASENAME}"
    "${SA_OUT_DIR}/${SPEC_BASENAME}"
    "${SA_OUT_DIR}/specs/${SPEC_BASENAME}"
  )

  SPEC=""
  for c in "${CANDIDATES[@]}"; do
    if [[ -f "$c" ]]; then
      SPEC="$c"
      break
    fi
  done

  if [[ -z "${SPEC}" ]]; then
    echo "[!] Could not resolve SPEC file." >&2
    echo "    Tried the following locations:" >&2
    for c in "${CANDIDATES[@]}"; do
      echo "      - $c" >&2
    done
    echo >&2
    echo "    You can either:" >&2
    echo "      - Pass the full spec path with --spec /absolute/or/relative/path.json" >&2
    echo "      - Or pass a directory and ensure ${SPEC_BASENAME} exists there." >&2
    exit 1
  fi
fi

###############################################################################
# Paths
###############################################################################
FINDINGS="${SA_OUT_DIR}/findings.json"
FACTS="${SA_OUT_DIR}/fact_pack.json"
CCDB="${SA_OUT_DIR}/compile_commands.json"

PLAN="out/plans/plan_${STEM}.json"
HISTORY="out/plans/history_${STEM}.json"

BUILD_ROOT="out/build"
INSTR_BUILD_ROOT="out/build/instrumented"

STUB_PLAN="out/plans/stub_plan_${STEM}.json"
GROOM_SEED="out/groom/groom_seed_${STEM}.json"
PROMPT="out/prompts/prompt_${STEM}.json"

###############################################################################
# ENVIRONMENT CHECKS
###############################################################################
if [[ -z "${DEEPSEEK_API_KEY:-}" && -z "${OPENAI_API_KEY:-}" ]]; then
  echo "[!] No LLM API key found. Export DEEPSEEK_API_KEY or OPENAI_API_KEY." >&2
  exit 1
fi

export LLM_MODEL LLM_API_BASE

mkdir -p \
  out/specs out/plans out/groom out/prompts \
  "${BUILD_ROOT}" "${INSTR_BUILD_ROOT}"

###############################################################################
# DISPLAY CONFIG
###############################################################################
echo "[i] CONFIG:"
echo "  SA_OUT_DIR   = ${SA_OUT_DIR}"
echo "  DATASET_ROOT = ${DATASET_ROOT}"
echo "  TARGET_VUL   = ${TARGET_VUL}"
echo "  PROJECT      = ${PROJECT}"
echo "  SRC_ROOT     = ${SRC_ROOT}"
echo "  VUL_FILE     = ${VUL_FILE}"
echo "  VUL_LINE     = ${VUL_LINE}"
echo "  RULE_ID      = ${RULE_ID}"
echo "  STEM         = ${STEM}"
echo "  SPEC         = ${SPEC}"
echo "  LLM_MODEL    = ${LLM_MODEL}"
echo "  LLM_API_BASE = ${LLM_API_BASE}"
echo

###############################################################################
# PIPELINE
###############################################################################

echo "[1] Entry point inference…"
python3 scripts/llm_infer_entrypoint.py \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --plan "${PLAN}" \
  --provider openai \
  --api-base "${LLM_API_BASE}" \
  --api-key-env DEEPSEEK_API_KEY \
  --model "${LLM_MODEL}"

echo "[2] Enrich plan…"
python3 scripts/plan_enrich.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --rewrite-driver

echo "[3] Stub synthesis…"
python3 scripts/synth_stubs.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --src-root "${SRC_ROOT}" \
  --rewrite-driver \
  --out "${STUB_PLAN}"

echo "[4] Groom seed generation…"
python3 scripts/make_groom_seed.py \
  --plan "${PLAN}" \
  --stub-plan "${STUB_PLAN}" \
  --out "${GROOM_SEED}"

echo "[5] Instrumentation…"
python3 scripts/instrument_inpath_and_stub.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --src-root "${SRC_ROOT}" \
  --build-root "${INSTR_BUILD_ROOT}" \
  --stub-plan "${STUB_PLAN}" \
  --update-plan

echo "[6] LLM Assertion injection…"
python3 scripts/derive_assertion_and_inject.py \
  --spec "${SPEC}" \
  --plan "${PLAN}" \
  --src-root "${SRC_ROOT}" \
  --build-root "${INSTR_BUILD_ROOT}" \
  --inplace \
  --provider deepseek \
  --api-base "${LLM_API_BASE}" \
  --model "${LLM_MODEL}" \
  --examples scripts/assertion_examples.json \
  --strict

echo "[7] LLM Groom synthesis…"
python3 scripts/llm_synthesize_groom.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --groom-seed "${GROOM_SEED}" \
  --timeout "${TIMEOUT}"

echo "[8] Build+KLEE loop prompt…"
python3 scripts/loopB_make_prompt.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --examples-build exemplars/build.jsonl \
  --examples-klee exemplars/klee.jsonl \
  --out "${PROMPT}"

echo "[9] Run CEGIR loop…"
python3 scripts/loopB_run_cegir.py \
  --plan "${PLAN}" \
  --prompt "${PROMPT}" \
  --max-a "${MAX_A}" \
  --max-b "${MAX_B}" \
  --timeout "${TIMEOUT}"

echo "[✓] Pipeline complete."
