#!/usr/bin/env bash
#
# generate_llm_entry_driver.sh
#
# Single-shot LLM harness generator (entrypoint-only).
#
# Entry function is NOT provided as an argument.
# The LLM must infer/choose a suitable entrypoint for the project
# based on the prompt.
#
# Reads:
#   prompts/llm_entry_system.txt
#   prompts/llm_entry_user_<project-name>.txt
#
# Example (libxml2):
#   LLM_MODEL=deepseek-chat \
#   LLM_API_BASE=https://api.deepseek.com \
#   LLM_CLI="python3 tools/call_llm.py" \
#   ./llm_harness/generate_llm_entry_driver.sh \
#       --project-name libxml2 \
#       --src-root    dataset/libxml2_62911_vul \
#       --out-driver  drivers/llm_entry/libxml2_llm_entry.c

set -euo pipefail

PROJECT_NAME=""
SRC_ROOT=""
OUT_DRIVER=""
PROMPTS_DIR="prompts"

LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
LLM_CLI="${LLM_CLI:-python3 tools/call_llm.py}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --out-driver)   OUT_DRIVER="$2";   shift 2 ;;
    --prompts-dir)  PROMPTS_DIR="$2";  shift 2 ;;
    --llm-model)    LLM_MODEL="$2";    shift 2 ;;
    --llm-api-base) LLM_API_BASE="$2"; shift 2 ;;
    --llm-cli)      LLM_CLI="$2";      shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2; exit 1 ;;
    *)
      echo "Unexpected positional arg: $1" >&2; exit 1 ;;
  esac
done

if [[ -z "${PROJECT_NAME}" || -z "${SRC_ROOT}" || -z "${OUT_DRIVER}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --project-name <id> \\
  --src-root     <project source root> \\
  --out-driver   <path to output .c> \\
  [--prompts-dir <prompts dir, default=prompts>] \\
  [--llm-model   <model, default=\$LLM_MODEL>] \\
  [--llm-api-base <api base, default=\$LLM_API_BASE>] \\
  [--llm-cli     <client cmd, default="\$LLM_CLI">]

EOF
  exit 1
fi

mkdir -p "$(dirname "${OUT_DRIVER}")"

SYSTEM_PROMPT_FILE="${PROMPTS_DIR}/llm_entry_system.txt"
USER_PROMPT_TEMPLATE="${PROMPTS_DIR}/llm_entry_user_${PROJECT_NAME}.txt"

if [[ ! -f "${SYSTEM_PROMPT_FILE}" ]]; then
  echo "ERROR: system prompt not found: ${SYSTEM_PROMPT_FILE}" >&2
  exit 1
fi
if [[ ! -f "${USER_PROMPT_TEMPLATE}" ]]; then
  echo "ERROR: user prompt template not found for project=${PROJECT_NAME}: ${USER_PROMPT_TEMPLATE}" >&2
  exit 1
fi

SYSTEM_PROMPT=$(cat "${SYSTEM_PROMPT_FILE}")

# Very lightweight templating (for now only PROJECT_NAME and SRC_ROOT)
USER_PROMPT=$(sed \
  -e "s|{{PROJECT_NAME}}|${PROJECT_NAME}|g" \
  -e "s|{{SRC_ROOT}}|${SRC_ROOT}|g" \
  "${USER_PROMPT_TEMPLATE}"
)

echo "[i] Generating LLM entry harness for project=${PROJECT_NAME}"
echo "[i] Writing to: ${OUT_DRIVER}"
echo "[i] LLM_MODEL   = ${LLM_MODEL}"
echo "[i] LLM_API_BASE= ${LLM_API_BASE}"
echo "[i] LLM_CLI     = ${LLM_CLI}"

GEN_START=$(date +%s)

# Split LLM_CLI into argv array (so 'python3 tools/call_llm.py' works)
read -r -a LLM_CMD_ARR <<< "${LLM_CLI}"

set +e
# Call LLM and strip markdown code fences like ``` or ```c
"${LLM_CMD_ARR[@]}" \
  --model "${LLM_MODEL}" \
  --api-base "${LLM_API_BASE}" \
  --system-prompt "${SYSTEM_PROMPT}" \
  --user-prompt "${USER_PROMPT}" \
  | awk '
      # Drop any line that starts with ``` (```c, ```C, ``` etc.)
      /^[[:space:]]*```/ { next }
      { print }
    ' > "${OUT_DRIVER}"
LLM_EXIT=${PIPESTATUS[0]}
set -e

# Prefer local "klee/klee.h"
sed -i 's|#include <klee/klee.h>|#include "klee/klee.h"|' "${OUT_DRIVER}"

GEN_END=$(date +%s)
GEN_TIME=$(( GEN_END - GEN_START ))

if [[ "${LLM_EXIT}" -ne 0 ]]; then
  echo "[ERR] LLM CLI failed (exit=${LLM_EXIT}) after ${GEN_TIME}s" >&2
  exit "${LLM_EXIT}"
fi

echo "[i] LLM harness written to ${OUT_DRIVER}"
echo "[i] LLM generation time (seconds) = ${GEN_TIME}"
