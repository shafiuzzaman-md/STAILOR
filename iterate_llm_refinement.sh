#!/usr/bin/env bash
set -euo pipefail

# ---- config for this vuln ----
FINDINGS="sa/findings.json"
FACTS="sa/fact_pack.json"
CCDB="sa/compile_commands.json"
SRC_ROOT="../../../dataset/62911/libxml2_62911_vul"

STEM="dict.c_541"

SPEC="out/specs/000_${STEM}_local.oob.memfunc.length-misuse.json"
PLAN="out/plans/plan_${STEM}.json"
HISTORY="out/plans/history_${STEM}.json"

BUILD_ROOT="out/build"
INSTR_BUILD_ROOT="out/build/instrumented"

STUB_PLAN="out/plans/stub_plan_${STEM}.json"
GROOM_SEED="out/groom/groom_seed_${STEM}.json"

PROMPT="out/prompts/prompt_${STEM}.json"

MAX_A=8
MAX_B=12
TIMEOUT=120

# ---- sanity ----
if [[ -z "${DEEPSEEK_API_KEY:-}" ]]; then
  echo "[!] DEEPSEEK_API_KEY is not set in the environment." >&2
  exit 1
fi

mkdir -p out/plans out/specs out/groom out/prompts "${BUILD_ROOT}" "${INSTR_BUILD_ROOT}"

echo "[1] Making specs…"
python3 scripts/make_vul_specs.py \
  --findings "${FINDINGS}" \
  --facts "${FACTS}" \
  --out out/specs

echo "[2] Ensure plan has entrypoint (manual or LLM)…"
# If you want to force a manual entrypoint, you can pre-seed the plan JSON
# or add a small helper script that writes:
#   {
#     "entrypoint": {
#       "name": "xmlDictLookup",
#       "file": "/home/shafi/LLMSE/libxml2_62911_vul/dict.c",
#       "signature": "const xmlChar *xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len)"
#     }
#   }
# and then llm_infer_entrypoint.py will see it and skip LLM.
python3 scripts/llm_infer_entrypoint.py \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --plan "${PLAN}" \
  --provider openai \
  --api-base https://api.deepseek.com \
  --api-key-env DEEPSEEK_API_KEY \
  --model deepseek-chat

echo "[3] Enrich plan (entrypoint + in-path + metadata)…"
python3 scripts/plan_enrich.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --rewrite-driver

echo "[4] Stub synthesis (initial helper stub plan)…"
python3 scripts/synth_stubs.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --facts "${FACTS}" \
  --src-root "${SRC_ROOT}" \
  --rewrite-driver \
  --out "${STUB_PLAN}"

echo "[5] Groom seed (symbolic var + grooming skeleton hints)…"
python3 scripts/make_groom_seed.py \
  --plan "${PLAN}" \
  --stub-plan "${STUB_PLAN}" \
  --out "${GROOM_SEED}"

echo "[6] Instrument in-path + stubs + minimal TU (no LLM yet)…"
# This step builds:
#   - in-path function bodies into a single TU
#   - helper stubs (llmse_helper_stubs.*) from STUB_PLAN
#   - a minimal main() that calls the entrypoint
# and records `plan[\"instrumented_path\"]` (e.g., llmse_min_tu.c).
python3 scripts/instrument_inpath_and_stub.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --src-root "${SRC_ROOT}" \
  --build-root "${INSTR_BUILD_ROOT}" \
  --stub-plan "${STUB_PLAN}" \
  --update-plan

echo "[7] Derive + inject assertion into instrumented TU (LLM pass #1: assertion)…"
python3 scripts/derive_assertion_and_inject.py \
  --spec "${SPEC}" \
  --plan "${PLAN}" \
  --src-root "${SRC_ROOT}" \
  --build-root "${INSTR_BUILD_ROOT}" \
  --inplace \
  --provider deepseek \
  --api-base https://api.deepseek.com \
  --model deepseek-chat \
  --examples scripts/assertion_examples.json \
  --strict

echo "[8] LLM groom synthesis (LLM pass #2: symbolic decls + complex struct grooming)…"
# Now that the instrumented TU + assertion exists, we let the LLM:
#   - declare symbolic variables (structs, pointers, nested fields)
#   - add grooming code to initialize data structures
#   - possibly use the GROOM_SEED as hints.
python3 scripts/llm_synthesize_groom.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --groom-seed "${GROOM_SEED}" \
  --timeout "${TIMEOUT}"

echo "[9] Prepare loopB prompt (for build+KLEE CEGIR: stub refinement & path search)…"
python3 scripts/loopB_make_prompt.py \
  --plan "${PLAN}" \
  --spec "${SPEC}" \
  --ccdb "${CCDB}" \
  --src-root "${SRC_ROOT}" \
  --examples-build exemplars/build.jsonl \
  --examples-klee exemplars/klee.jsonl \
  --out "${PROMPT}"

echo "[10] Run CEGIR loop:"
echo "     - Phase A (LLM pass #3): clang build stub refinement (no new bugs)"
echo "     - Phase B (LLM pass #4): KLEE path refinement to reach target line"
python3 scripts/loopB_run_cegir.py \
  --plan "${PLAN}" \
  --prompt "${PROMPT}" \
  --max-a "${MAX_A}" \
  --max-b "${MAX_B}" \
  --timeout "${TIMEOUT}"

echo "[✓] Pipeline finished."
