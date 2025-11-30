#!/usr/bin/env bash
#
# run_se_driver.sh
#
# Compile a single driver .c file to LLVM bitcode and run KLEE once.
#
# Output:
#   <OUT_ROOT>/<MODE>/<PROJECT_NAME>/<SPEC_ID>/
#     ├── driver.bc
#     ├── klee-out/
#     └── meta.json
#
# Example:
#   ./run_se_driver.sh \
#     --project-name  libxml2_62911_vul \
#     --spec-id       000_dict.c_541_local.oob.memfunc.length-misuse \
#     --mode          manual_entry \
#     --driver        drivers/manual_entry/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.c \
#     --src-root      ./dataset/62911/libxml2_62911_vul \
#     --out-root      se_runs \
#     --clang-flags   "-I./dataset/62911/libxml2_62911_vul/include" \
#     --klee-flags    "--search=dfs --max-time=600 --max-memory=8000"

set -euo pipefail

PROJECT_NAME=""
SPEC_ID=""
MODE=""
DRIVER=""
SRC_ROOT=""
OUT_ROOT="se_runs"
CLANG_FLAGS=""
KLEE_FLAGS=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --spec-id)      SPEC_ID="$2";      shift 2 ;;
    --mode)         MODE="$2";         shift 2 ;;
    --driver)       DRIVER="$2";       shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --out-root)     OUT_ROOT="$2";     shift 2 ;;
    --clang-flags)  CLANG_FLAGS="$2";  shift 2 ;;
    --klee-flags)   KLEE_FLAGS="$2";   shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2; exit 1 ;;
    *)
      echo "Unexpected positional arg: $1" >&2; exit 1 ;;
  esac
done

if [[ -z "$PROJECT_NAME" || -z "$SPEC_ID" || -z "$MODE" || -z "$DRIVER" || -z "$SRC_ROOT" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --project-name <id> \\
  --spec-id      <spec-stem-without-json> \\
  --mode         <manual_entry|sa_manual|llm_entry|sa_llm> \\
  --driver       <path/to/driver.c> \\
  --src-root     <project src root> \\
  [--out-root    <root output dir, default=se_runs>] \\
  [--clang-flags \"...\"] \\
  [--klee-flags  \"...\"]

EOF
  exit 1
fi

if [[ ! -f "$DRIVER" ]]; then
  echo "ERROR: driver not found: $DRIVER" >&2
  exit 1
fi

OUT_DIR="${OUT_ROOT}/${MODE}/${PROJECT_NAME}/${SPEC_ID}"
mkdir -p "${OUT_DIR}"

echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SPEC_ID      = ${SPEC_ID}"
echo "[i] MODE         = ${MODE}"
echo "[i] DRIVER       = ${DRIVER}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] OUT_DIR      = ${OUT_DIR}"

BC="${OUT_DIR}/driver.bc"
KLEE_OUT="${OUT_DIR}/klee-out"
META="${OUT_DIR}/meta.json"

rm -rf "${KLEE_OUT}"

START_TS=$(date +%s)

# Compile driver
echo "[i] Compiling driver → ${BC}"
clang-14 \
  -I"${SRC_ROOT}" \
  -emit-llvm -c "${DRIVER}" \
  -o "${BC}" \
  ${CLANG_FLAGS}

# Run KLEE
echo "[i] Running KLEE → ${KLEE_OUT}"
klee \
  --output-dir="${KLEE_OUT}" \
  ${KLEE_FLAGS} \
  "${BC}"

END_TS=$(date +%s)
ELAPSED=$((END_TS - START_TS))

cat > "${META}" <<EOF
{
  "project": "${PROJECT_NAME}",
  "spec_id": "${SPEC_ID}",
  "mode": "${MODE}",
  "driver": "${DRIVER}",
  "src_root": "${SRC_ROOT}",
  "out_dir": "${OUT_DIR}",
  "klee_out": "${KLEE_OUT}",
  "start_ts": ${START_TS},
  "end_ts": ${END_TS},
  "elapsed_sec": ${ELAPSED}
}
EOF

echo "[done] KLEE run complete for mode=${MODE}, project=${PROJECT_NAME}, spec=${SPEC_ID} (elapsed=${ELAPSED}s)"
echo "[done] Results: ${OUT_DIR}"
