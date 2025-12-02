#!/usr/bin/env bash
#
# run_manual_libxml2.sh
#
# Build and run the Manual Harness (entrypoint-level) for libxml2.
#
# Status classes (for this project-level harness):
#   E   = No bitcode generated: Build/Link Failure (Pre-SE)
#   H0  = SE ran but terminated before timeout (unsupported intrinsic,
#         external call with symbolic arg, crash, etc.), no *.assert.err
#   H1  = SE ran until timeout (--max-time hit), no *.assert.err
#   H3  = Vulnerability/assertion fired (*.assert.err produced)
#
# Example:
#   ./run_manual_libxml2.sh \
#       --src-root   dataset/libxml2_62911_vul \
#       --driver     drivers/manual_entry/libxml2_manual_entry.c \
#       --out-dir    se_runs/manual_entry/libxml2 \
#       --clang      clang-14 \
#       --klee       klee \
#       --clang-flags "-I/usr/include/libxml2" \
#       --klee-flags "--search=nurs:covnew --max-time=3600"
#

set -euo pipefail

SRC_ROOT=""
DRIVER=""
OUT_DIR="se_runs/manual_entry/libxml2"
CLANG="clang"
KLEE="klee"
LIB_BC=""
CLANG_FLAGS=""
KLEE_FLAGS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --src-root)    SRC_ROOT="$2";     shift 2 ;;
    --driver)      DRIVER="$2";       shift 2 ;;
    --out-dir)     OUT_DIR="$2";      shift 2 ;;
    --clang)       CLANG="$2";        shift 2 ;;
    --klee)        KLEE="$2";         shift 2 ;;
    --lib-bc)      LIB_BC="$2";       shift 2 ;;
    --clang-flags) CLANG_FLAGS="$2";  shift 2 ;;
    --klee-flags)  KLEE_FLAGS="$2";   shift 2 ;;
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

if [[ -z "${SRC_ROOT}" || -z "${DRIVER}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --src-root   <libxml2 source root> \\
  --driver     <path to harness .c> \\
  [--out-dir   <output dir, default=se_runs/manual_entry/libxml2>] \\
  [--clang     <clang binary, default=clang>] \\
  [--klee      <klee binary, default=klee>] \\
  [--lib-bc    <optional libxml2.bc>] \\
  [--clang-flags "<extra clang flags>"] \\
  [--klee-flags  "<extra klee flags>"]

EOF
  exit 1
fi

mkdir -p "${OUT_DIR}"

HARNESS_BC="${OUT_DIR}/libxml2_manual_entry.bc"
LINKED_BC="${OUT_DIR}/libxml2_manual_entry_linked.bc"
KLEE_OUT_BASE="${OUT_DIR}/klee-out"
STATUS_LOG="${OUT_DIR}/manual_libxml2_status.tsv"

echo "[i] SRC_ROOT   = ${SRC_ROOT}"
echo "[i] DRIVER     = ${DRIVER}"
echo "[i] OUT_DIR    = ${OUT_DIR}"
echo "[i] CLANG      = ${CLANG}"
echo "[i] KLEE       = ${KLEE}"
echo "[i] LIB_BC     = ${LIB_BC:-<none>}"

###############################################################################
# Build phase: harness -> bitcode (+ optional link with libxml2.bc)
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
  echo "[ERR] clang failed to compile harness (exit=${CLANG_EXIT})"

  echo
  echo "[summary] Manual libxml2 harness"
  echo "[summary] build_time_seconds=${BUILD_TIME}"
  echo "[summary] run_time_seconds=0"
  echo "[summary] total_time_seconds=${BUILD_TIME}"
  echo "[summary] harness_status=E"
  echo "[summary] has_klee_last=0"
  echo "[summary] num_err_files=0"
  echo "[summary] num_assert_err=0"
  echo "[summary] timeout_flag=0"

  if [[ ! -f "${STATUS_LOG}" ]]; then
    echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
  fi
  echo -e "manual_entry\tlibxml2\tE\t${BUILD_TIME}\t0\t0" >> "${STATUS_LOG}"
  exit 0
fi

TARGET_BC="${HARNESS_BC}"
if [[ -n "${LIB_BC}" ]]; then
  echo "[i] Linking harness with ${LIB_BC}"
  set +e
  llvm-link "${HARNESS_BC}" "${LIB_BC}" -o "${LINKED_BC}"
  LINK_EXIT=$?
  set -e
  if [[ "${LINK_EXIT}" -ne 0 || ! -f "${LINKED_BC}" ]]; then
    BUILD_END=$(date +%s)
    BUILD_TIME=$(( BUILD_END - BUILD_START ))
    echo "[ERR] llvm-link failed (exit=${LINK_EXIT})"

    echo
    echo "[summary] Manual libxml2 harness"
    echo "[summary] build_time_seconds=${BUILD_TIME}"
    echo "[summary] run_time_seconds=0"
    echo "[summary] total_time_seconds=${BUILD_TIME}"
    echo "[summary] harness_status=E"
    echo "[summary] has_klee_last=0"
    echo "[summary] num_err_files=0"
    echo "[summary] num_assert_err=0"
    echo "[summary] timeout_flag=0"

    if [[ ! -f "${STATUS_LOG}" ]]; then
      echo -e "mode\tproject\tharness_status\tduration_seconds\thas_klee_last\tnum_err_files" > "${STATUS_LOG}"
    fi
    echo -e "manual_entry\tlibxml2\tE\t${BUILD_TIME}\t0\t0" >> "${STATUS_LOG}"
    exit 0
  fi
  TARGET_BC="${LINKED_BC}"
fi

BUILD_END=$(date +%s)
BUILD_TIME=$(( BUILD_END - BUILD_START ))

###############################################################################
# KLEE run (handle existing klee-out safely; let KLEE create the dir)
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
TOTAL_TIME=$(( BUILD_TIME + RUN_TIME ))

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
echo "[summary] Manual libxml2 harness"
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
echo -e "manual_entry\tlibxml2\t${HARNESS_STATUS}\t${TOTAL_TIME}\t${HAS_KLEE_LAST}\t${NUM_ERR_FILES}" >> "${STATUS_LOG}"
