#!/usr/bin/env bash
#
# run_llm_libxml2.sh
#
# Build and run the LLM Harness (entrypoint-level) for libxml2.
#
# Status classes (for this project-level harness):
#   E   = No bitcode generated: Build/Link/Generation Failure (Pre-SE)
#   H0  = SE ran but terminated before timeout (unsupported intrinsic,
#         external call with symbolic arg, crash, etc.), no *.assert.err
#   H1  = SE ran until timeout (--max-time hit), no *.assert.err
#   H3  = Vulnerability/assertion fired (*.assert.err produced)
#
# Example:
#   LLM_MODEL=deepseek-chat \
#   LLM_API_BASE=https://api.deepseek.com \
#   LLM_CLI="python3 tools/call_llm.py" \
#   ./run_llm_libxml2.sh \
#       --src-root   dataset/libxml2_62911_vul \
#       --driver     drivers/llm_entry/libxml2_llm_entry.c \
#       --out-dir    se_runs/llm_entry/libxml2 \
#       --clang      clang-14 \
#       --klee       klee \
#       --clang-flags "-I/usr/include/libxml2" \
#       --klee-flags "--search=nurs:covnew --max-time=3600" \
#       --gen-script llm_harness/generate_llm_entry_driver.sh
#

set -euo pipefail

PROJECT_NAME="libxml2"

SRC_ROOT=""
DRIVER="drivers/llm_entry/libxml2_llm_entry.c"
OUT_DIR="se_runs/llm_entry/libxml2"
CLANG="clang"
KLEE="klee"
LIB_BC=""
CLANG_FLAGS=""
KLEE_FLAGS=""

# LLM generation script + env
GEN_SCRIPT="llm_harness/generate_llm_entry_driver.sh"
LLM_MODEL="${LLM_MODEL:-deepseek-chat}"
LLM_API_BASE="${LLM_API_BASE:-https://api.deepseek.com}"
LLM_CLI="${LLM_CLI:-python3 tools/call_llm.py}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2";    shift 2 ;;
    --src-root)     SRC_ROOT="$2";        shift 2 ;;
    --driver)       DRIVER="$2";          shift 2 ;;
    --out-dir)      OUT_DIR="$2";         shift 2 ;;
    --clang)        CLANG="$2";           shift 2 ;;
    --klee)         KLEE="$2";            shift 2 ;;
    --lib-bc)       LIB_BC="$2";          shift 2 ;;
    --clang-flags)  CLANG_FLAGS="$2";     shift 2 ;;
    --klee-flags)   KLEE_FLAGS="$2";      shift 2 ;;
    --gen-script)   GEN_SCRIPT="$2";      shift 2 ;;
    --model)        LLM_MODEL="$2";       shift 2 ;;
    --api-base)     LLM_API_BASE="$2";    shift 2 ;;
    --llm-cli)      LLM_CLI="$2";         shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2
      exit 1
      ;;
    *)
      echo "Unexpected positional arg: $1" >&2
      exit 1
      ;;
  esac
done

if [[ -z "${SRC_ROOT}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --src-root   <libxml2 source root> \\
  [--project-name <project id, default=libxml2>] \\
  [--driver     <path to LLM harness .c, default=drivers/llm_entry/libxml2_llm_entry.c>] \\
  [--out-dir    <output dir, default=se_runs/llm_entry/libxml2>] \\
  [--clang      <clang binary, default=clang>] \\
  [--klee       <klee binary, default=klee>] \\
  [--lib-bc     <optional libxml2.bc>] \\
  [--clang-flags "<extra clang flags>"] \\
  [--klee-flags  "<extra klee flags>"] \\
  [--gen-script  <LLM driver generator script>] \\
  [--model       <LLM model name, default from \$LLM_MODEL or deepseek-chat>] \\
  [--api-base    <LLM API base URL, default from \$LLM_API_BASE or https://api.deepseek.com>] \\
  [--llm-cli     <LLM CLI command, default from \$LLM_CLI or 'python3 tools/call_llm.py'>]

EOF
  exit 1
fi

mkdir -p "${OUT_DIR}"

HARNESS_BC="${OUT_DIR}/${PROJECT_NAME}_llm_entry.bc"
LINKED_BC="${OUT_DIR}/${PROJECT_NAME}_llm_entry_linked.bc"
KLEE_OUT_BASE="${OUT_DIR}/klee-out"
STATUS_LOG="${OUT_DIR}/llm_${PROJECT_NAME}_status.tsv"

echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT    = ${SRC_ROOT}"
echo "[i] DRIVER      = ${DRIVER}"
echo "[i] OUT_DIR     = ${OUT_DIR}"
echo "[i] CLANG       = ${CLANG}"
echo "[i] KLEE        = ${KLEE}"
echo "[i] LIB_BC      = ${LIB_BC:-<none>}"
echo "[i] GEN_SCRIPT  = ${GEN_SCRIPT}"
echo "[i] LLM_MODEL   = ${LLM_MODEL}"
echo "[i] LLM_API_BASE= ${LLM_API_BASE}"
echo "[i] LLM_CLI     = ${LLM_CLI}"

TOTAL_START=$(date +%s)

###############################################################################
# 1) LLM-based driver generation (timed separately)
###############################################################################

GEN_START=$(date +%s)

set +e
LLM_MODEL="${LLM_MODEL}" \
LLM_API_BASE="${LLM_API_BASE}" \
LLM_CLI="${LLM_CLI}" \
bash "${GEN_SCRIPT}" \
  --project-name "${PROJECT_NAME}" \
  --src-root     "${SRC_ROOT}" \
  --out-driver   "${DRIVER}"
GEN_EXIT=$?
set -e

GEN_END=$(date +%s)
GEN_TIME=$(( GEN_END - GEN_START ))

if [[ "${GEN_EXIT}" -ne 0 || ! -f "${DRIVER}" ]]; then
  TOTAL_END=$(date +%s)
  TOTAL_TIME=$(( TOTAL_END - TOTAL_START ))
  echo "[ERR] LLM driver generation failed (exit=${GEN_EXIT}), driver=${DRIVER}"

  echo
  echo "[summary] LLM libxml2 harness"
  echo "[summary] gen_time_seconds=${GEN_TIME}"
  echo "[summary] build_time_seconds=0"
  echo "[summary] run_time_seconds=0"
  echo "[summary] total_time_seconds=${TOTAL_TIME}"
  echo "[summary] harness_status=E"
  echo "[summary] has_klee_last=0"
  echo "[summary] num_err_files=0"
  echo "[summary] num_assert_err=0"
  echo "[summary] timeout_flag=0"

  if [[ ! -f "${STATUS_LOG}" ]]; then
    echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
  fi
  echo -e "llm_entry\t${PROJECT_NAME}\tE\t${TOTAL_TIME}\t0\t0" >> "${STATUS_LOG}"
  exit 0
fi

###############################################################################
# 2) Build phase: harness -> bitcode (+ optional link with libxml2.bc)
###############################################################################

BUILD_START=$(date +%s)

set +e
${CLANG} -I"${SRC_ROOT}" \
         -emit-llvm -g -O0 -c "${DRIVER}" \
         ${CLANG_FLAGS} \
         -o "${HARNESS_BC}"
CLANG_EXIT=$?
set -e

if [[ "${CLANG_EXIT}" -ne 0 || ! -f "${HARNESS_BC}" ]]; then
  BUILD_END=$(date +%s)
  BUILD_TIME=$(( BUILD_END - BUILD_START ))
  TOTAL_END=$(date +%s)
  TOTAL_TIME=$(( TOTAL_END - TOTAL_START ))
  echo "[ERR] clang failed to compile LLM harness (exit=${CLANG_EXIT})"

  echo
  echo "[summary] LLM libxml2 harness"
  echo "[summary] gen_time_seconds=${GEN_TIME}"
  echo "[summary] build_time_seconds=${BUILD_TIME}"
  echo "[summary] run_time_seconds=0"
  echo "[summary] total_time_seconds=${TOTAL_TIME}"
  echo "[summary] harness_status=E"
  echo "[summary] has_klee_last=0"
  echo "[summary] num_err_files=0"
  echo "[summary] num_assert_err=0"
  echo "[summary] timeout_flag=0"

  if [[ ! -f "${STATUS_LOG}" ]]; then
    echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
  fi
  echo -e "llm_entry\t${PROJECT_NAME}\tE\t${TOTAL_TIME}\t0\t0" >> "${STATUS_LOG}"
  exit 0
fi

TARGET_BC="${HARNESS_BC}"
LINK_TIME=0

if [[ -n "${LIB_BC}" ]]; then
  echo "[i] Linking LLM harness with ${LIB_BC}"
  LINK_START=$(date +%s)
  set +e
  llvm-link "${HARNESS_BC}" "${LIB_BC}" -o "${LINKED_BC}"
  LINK_EXIT=$?
  set -e
  LINK_END=$(date +%s)
  LINK_TIME=$(( LINK_END - LINK_START ))

  if [[ "${LINK_EXIT}" -ne 0 || ! -f "${LINKED_BC}" ]]; then
    BUILD_END=$(date +%s)
    BUILD_TIME=$(( BUILD_END - BUILD_START + LINK_TIME ))
    TOTAL_END=$(date +%s)
    TOTAL_TIME=$(( TOTAL_END - TOTAL_START ))
    echo "[ERR] llvm-link failed (exit=${LINK_EXIT})"

    echo
    echo "[summary] LLM libxml2 harness"
    echo "[summary] gen_time_seconds=${GEN_TIME}"
    echo "[summary] build_time_seconds=${BUILD_TIME}"
    echo "[summary] run_time_seconds=0"
    echo "[summary] total_time_seconds=${TOTAL_TIME}"
    echo "[summary] harness_status=E"
    echo "[summary] has_klee_last=0"
    echo "[summary] num_err_files=0"
    echo "[summary] num_assert_err=0"
    echo "[summary] timeout_flag=0"

    if [[ ! -f "${STATUS_LOG}" ]]; then
      echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
    fi
    echo -e "llm_entry\t${PROJECT_NAME}\tE\t${TOTAL_TIME}\t0\t0" >> "${STATUS_LOG}"
    exit 0
  fi
  TARGET_BC="${LINKED_BC}"
fi

BUILD_END=$(date +%s)
BUILD_TIME=$(( BUILD_END - BUILD_START + LINK_TIME ))

###############################################################################
# 3) KLEE run (handle existing klee-out safely)
###############################################################################

if [[ -d "${KLEE_OUT_BASE}" ]]; then
  TS=$(date +%Y%m%d_%H%M%S)
  echo "[i] Existing ${KLEE_OUT_BASE} found, renaming to ${KLEE_OUT_BASE}.bak_${TS}"
  mv "${KLEE_OUT_BASE}" "${KLEE_OUT_BASE}.bak_${TS}"
fi

KLEE_OUT="${KLEE_OUT_BASE}"

RUN_START=$(date +%s)

set +e
${KLEE} \
  --output-dir="${KLEE_OUT}" \
  ${KLEE_FLAGS} \
  "${TARGET_BC}"
KLEE_EXIT=$?
set -e

RUN_END=$(date +%s)
RUN_TIME=$(( RUN_END - RUN_START ))

TOTAL_END=$(date +%s)
TOTAL_TIME=$(( TOTAL_END - TOTAL_START ))

###############################################################################
# Classify harness status: E / H0 / H1 / H3
###############################################################################

HARNESS_STATUS="H0"
HAS_KLEE_LAST=0
NUM_ERR_FILES=0
NUM_ASSERT_ERR=0
TIMEOUT_FLAG=0

if [[ -d "${KLEE_OUT}" ]]; then
  HAS_KLEE_LAST=1
  NUM_ERR_FILES=$(find "${KLEE_OUT}" -maxdepth 1 -type f -name '*.err' 2>/dev/null | wc -l || echo 0)
  NUM_ASSERT_ERR=$(find "${KLEE_OUT}" -maxdepth 1 -type f -name '*.assert.err' 2>/dev/null | wc -l || echo 0)
  # KLEE prints "HaltTimer" when the max-time alarm fires
  if grep -Rqs "HaltTimer" "${KLEE_OUT}" 2>/dev/null; then
    TIMEOUT_FLAG=1
  fi
fi

if [[ "${NUM_ASSERT_ERR}" -gt 0 ]]; then
  HARNESS_STATUS="H3"      # vulnerability/assert fired
elif [[ "${TIMEOUT_FLAG}" -eq 1 ]]; then
  HARNESS_STATUS="H1"      # ran until timeout
else
  HARNESS_STATUS="H0"      # terminated early (any reason) but no assertion
fi

###############################################################################
# Report
###############################################################################

echo
echo "[summary] LLM libxml2 harness"
echo "[summary] gen_time_seconds=${GEN_TIME}"
echo "[summary] build_time_seconds=${BUILD_TIME}"
echo "[summary] run_time_seconds=${RUN_TIME}"
echo "[summary] total_time_seconds=${TOTAL_TIME}"
echo "[summary] harness_status=${HARNESS_STATUS}"
echo "[summary] has_klee_last=${HAS_KLEE_LAST}"
echo "[summary] num_err_files=${NUM_ERR_FILES}"
echo "[summary] num_assert_err=${NUM_ASSERT_ERR}"
echo "[summary] timeout_flag=${TIMEOUT_FLAG}"

if [[ ! -f "${STATUS_LOG}" ]]; then
  echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
fi
echo -e "llm_entry\t${PROJECT_NAME}\t${HARNESS_STATUS}\t${TOTAL_TIME}\t${HAS_KLEE_LAST}\t${NUM_ERR_FILES}" >> "${STATUS_LOG}"
