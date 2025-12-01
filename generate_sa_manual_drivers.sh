#!/usr/bin/env bash
#
# generate_sa_manual_drivers.sh
#
# Generate skeleton SA-driven Manual Harness (entrypoint + target + assertion)
# drivers for all specs under a spec directory.
#
# For each spec:
#   specs/<project_name>/<SPEC_ID>.json
# we create (or overwrite) a driver at:
#   drivers/sa_manual/<project_name>/<SPEC_ID>.c
#
# The generated driver:
#   - includes only the source file basename (assumes clang -I<SRC_ROOT>)
#   - adds comments with SA metadata: ruleId, target file:line, message
#   - includes <klee/klee.h>
#   - leaves the entrypoint call AND klee_assert() COMMENTED OUT to avoid
#     obvious compile errors; you can fill in args/assertion manually.

set -euo pipefail

PROJECT_NAME=""
SRC_ROOT=""
SPEC_DIR=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name) PROJECT_NAME="$2"; shift 2 ;;
    --src-root)     SRC_ROOT="$2";     shift 2 ;;
    --spec-dir)     SPEC_DIR="$2";     shift 2 ;;
    -*)
      echo "Unknown option: $1" >&2; exit 1 ;;
    *)
      echo "Unexpected positional arg: $1" >&2; exit 1 ;;
  esac
done

if [[ -z "${PROJECT_NAME}" || -z "${SRC_ROOT}" || -z "${SPEC_DIR}" ]]; then
  cat >&2 <<EOF
Usage: $0 \\
  --project-name <id> \\
  --src-root     <project src root> \\
  --spec-dir     <dir with *.json specs>

Example:
  ./generate_sa_manual_drivers.sh \\
    --project-name libxml2_62911_vul \\
    --src-root ./dataset/62911/libxml2_62911_vul \\
    --spec-dir specs/libxml2_62911_vul
EOF
  exit 1
fi

if [[ ! -d "${SPEC_DIR}" ]]; then
  echo "ERROR: spec dir not found: ${SPEC_DIR}" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "ERROR: jq is required but not found on PATH" >&2
  exit 1
fi

MODE="sa_manual"
DRIVER_ROOT="drivers/${MODE}/${PROJECT_NAME}"
mkdir -p "${DRIVER_ROOT}"

echo "[i] MODE         = ${MODE}"
echo "[i] PROJECT_NAME = ${PROJECT_NAME}"
echo "[i] SRC_ROOT     = ${SRC_ROOT}"
echo "[i] SPEC_DIR     = ${SPEC_DIR}"
echo "[i] DRIVER_ROOT  = ${DRIVER_ROOT}"

shopt -s nullglob
for spec in "${SPEC_DIR}"/*.json; do
  SPEC_BASENAME=$(basename "${spec}")
  SPEC_ID="${SPEC_BASENAME%.json}"

  echo
  echo "[i] Spec: ${SPEC_BASENAME} (SPEC_ID=${SPEC_ID})"

  ENTRYPOINT=$(jq -r '
      .entrypoint // .entry_function // .entry // .entry_func // empty
    ' "${spec}")

  SRC_FILE=$(jq -r '
      .file // .source_file // .filename // empty
    ' "${spec}")

  TARGET_LINE=$(jq -r '
      .startLine // .line // .location.startLine // empty
    ' "${spec}")

  RULE_ID=$(jq -r '
      .ruleId // .rule // empty
    ' "${spec}")

  MESSAGE=$(jq -r '
      .message // .msg // empty
    ' "${spec}")

  if [[ -z "${ENTRYPOINT}" ]]; then
    echo "[skip] ${SPEC_ID}: no entrypoint field in spec"
    continue
  fi

  if [[ -z "${SRC_FILE}" ]]; then
    echo "[skip] ${SPEC_ID}: no source file field in spec"
    continue
  fi

  SRC_BASE=$(basename "${SRC_FILE}")
  DRIVER_PATH="${DRIVER_ROOT}/${SPEC_ID}.c"

  echo "[gen] Writing SA-manual driver: ${DRIVER_PATH}"
  cat > "${DRIVER_PATH}" <<EOF
// Auto-generated SA_MANUAL driver
// Project   : ${PROJECT_NAME}
// Spec ID   : ${SPEC_ID}
// Spec file : ${spec}
// Source    : ${SRC_FILE}
// Entry     : ${ENTRYPOINT}
// Rule      : ${RULE_ID}
// Target    : ${SRC_FILE}:${TARGET_LINE}
// Message   : ${MESSAGE}
//
// NOTE: This is a *skeleton* SA-driven manual driver.
//       Use the static-analysis info above to design:
//         - input setup
//         - a precise klee_assert() that captures the bug
//       Both the assertion and entrypoint call are commented out so the
//       harness compiles even before you finish the manual editing.

#include <klee/klee.h>
#include "${SRC_BASE}"

int main(void) {
    // TODO: initialize concrete / symbolic arguments for \`${ENTRYPOINT}\`
    // using klee_make_symbolic(...) as needed.

    // Example:
    // int len;
    // klee_make_symbolic(&len, sizeof(len), "len");

    // SA target info:
    //   File : ${SRC_FILE}
    //   Line : ${TARGET_LINE}
    //   Rule : ${RULE_ID}
    //   Msg  : ${MESSAGE}

    // TODO: Insert a SA-guided assertion that should fail when the bug is hit.
    // Example:
    // klee_assert(/* SA-guided condition that is violated at target */);

    // TODO: Once arguments and assertion are ready, call the entrypoint:
    // ${ENTRYPOINT}(/* TODO: args */);

    return 0;
}
EOF

done
shopt -u nullglob

echo
echo "[done] Skeleton sa_manual drivers generated under: ${DRIVER_ROOT}"
