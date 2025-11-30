#!/usr/bin/env bash
set -euo pipefail

# One-time CodeQL scan script.

# ---- read KEY=VALUE args ----
for kv in "$@"; do export "$kv"; done

: "${PROJECT_NAME:?PROJECT_NAME is required}"
: "${SRC_ROOT:?SRC_ROOT is required}"
: "${BUILD_CMD:?BUILD_CMD is required}"
: "${QUERY_SUITES:?QUERY_SUITES is required}"

CONTEXT_LINES="${CONTEXT_LINES:-20}"
ALSO_CPP="${ALSO_CPP:-false}"
ADDITIONAL_PACKS="${ADDITIONAL_PACKS:-}"

# Tunables for CodeQL (forwarded to the Python wrapper → CodeQL CLI)
CODEQL_THREADS="${CODEQL_THREADS:-0}"         # 0 = all cores
CODEQL_RAM="${CODEQL_RAM:-80%}"
CODEQL_VERBOSITY="${CODEQL_VERBOSITY:--v}"    # -v | -vv | -vvv
CODEQL_LOG_TO_STDERR="${CODEQL_LOG_TO_STDERR:-true}"

# Build a search path:
# 1) explicit CODEQL_SEARCH_PATH if provided
# 2) else default CLI dirs
# 3) append ADDITIONAL_PACKS if set
DEFAULT_SEARCH_PATH="${CODEQL_SEARCH_PATH:-/home/shafi/codeql-cli/codeql:/home/shafi/.codeql/packages}"
if [[ -n "${ADDITIONAL_PACKS}" ]]; then
  DEFAULT_SEARCH_PATH="${DEFAULT_SEARCH_PATH}:${ADDITIONAL_PACKS}"
elif [[ -z "${ADDITIONAL_PACKS}" && " ${QUERY_SUITES} " == *" rules/"* ]]; then
  # auto-add local 'rules' when suites reference it
  ADDITIONAL_PACKS="rules"
  DEFAULT_SEARCH_PATH="${DEFAULT_SEARCH_PATH}:rules"
fi

args=(
  --project-name   "${PROJECT_NAME}"
  --source-path    "${SRC_ROOT}"
  --build-command  "${BUILD_CMD}"
  --context-lines  "${CONTEXT_LINES}"
  --overwrite
  --threads        "${CODEQL_THREADS}"
  --ram            "${CODEQL_RAM}"
  --search-path    "${DEFAULT_SEARCH_PATH}"
)

# Pass additional packs explicitly if set (some wrappers like to see both)
if [[ -n "${ADDITIONAL_PACKS}" ]]; then
  args+=( --additional-packs "${ADDITIONAL_PACKS}" )
fi

# Add suites (support multiple entries separated by spaces)
read -r -a suites <<< "${QUERY_SUITES}"
if [[ ${#suites[@]} -eq 0 ]]; then
  echo "[!] QUERY_SUITES is empty"; exit 2
fi
args+=( --query-suites "${suites[@]}" )
# Optionally include the stock cpp query pack
if [[ "${ALSO_CPP}" == "true" ]]; then
  args+=( --also-run-cpp-queries )
fi

# Always show CodeQL progress logs
if [[ "${CODEQL_LOG_TO_STDERR}" == "true" ]]; then
  args+=( --log-to-stderr )
fi
# Verbosity must be a separate flag, not a value to --log-to-stderr
if [[ -n "${CODEQL_VERBOSITY}" ]]; then
  args+=( "${CODEQL_VERBOSITY}" )
fi

echo "[i] Running CodeQL analysis once for project: ${PROJECT_NAME}"
echo "[dbg] run_codeql_analysis.py ${args[*]}"
# time the run; wrapper should use parse_known_args() and forward extra flags
LOGLEVEL=DEBUG time python3 run_codeql_analysis.py "${args[@]}"

OUT_ROOT="sa_outputs/${PROJECT_NAME}"

echo
echo "[i] Artifacts ready in ${OUT_ROOT}:"
echo " - findings.json / findings.jsonl / findings.csv"
echo " - compile_commands.json"
echo " - codeql-results.sarif"
echo " - run_meta.json"
echo " - fact_pack.json (LLM context bundle)"
echo
echo "[tip] List candidate targets from findings:"
echo "  jq -r '.results[] | \"\(.file):\(.startLine)  |  \(.ruleId)  |  \(.message)\"' ${OUT_ROOT}/findings.json | nl -ba"
