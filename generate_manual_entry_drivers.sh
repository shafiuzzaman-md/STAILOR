#!/usr/bin/env bash
#
# generate_manual_entry_drivers.sh
#
# Generate skeleton Manual Harness (entrypoint-only) drivers for all specs
# under a spec directory.
#
# For each spec:
#   specs/<project_name>/<SPEC_ID>.json
# we create (or overwrite) a driver at:
#   drivers/manual_entry/<project_name>/<SPEC_ID>.c
#
# The generated driver is intentionally conservative to avoid obvious
# compile errors:
#   - #includes only the source file basename (assumes clang -I<SRC_ROOT>)
#   - the call to the entrypoint is COMMENTED OUT by default with a TODO
#     so that wrong-arity signatures do not break the build immediately.

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
  ./generate_manual_entry_drivers.sh \\
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

MODE="manual_entry"
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

  # Try to infer entrypoint and source file from the spec.
  ENTRYPOINT=$(jq -r '
      .entrypoint // .entry_function // .entry // .entry_func // empty
    ' "${spec}")

  SRC_FILE=$(jq -r '
      .file // .source_file // .filename // empty
    ' "${spec}")

  if [[ -z "${ENTRYPOINT}" ]]; then
    echo "[skip] ${SPEC_ID}: no entrypoint field in spec (entrypoint/entry_function/entry not found)"
    continue
  fi

  if [[ -z "${SRC_FILE}" ]]; then
    echo "[skip] ${SPEC_ID}: no source file field in spec (file/source_file/filename not found)"
    continue
  fi

  SRC_BASE=$(basename "${SRC_FILE}")
  DRIVER_PATH="${DRIVER_ROOT}/${SPEC_ID}.c"

  echo "[gen] Writing driver: ${DRIVER_PATH}"
  cat > "${DRIVER_PATH}" <<EOF
// Auto-generated MANUAL_ENTRY driver
// Project   : ${PROJECT_NAME}
// Spec ID   : ${SPEC_ID}
// Spec file : ${spec}
// Source    : ${SRC_FILE}
// Entry     : ${ENTRYPOINT}
//
// NOTE: This is a *skeleton* manual driver intended to compile without
// obvious errors. The call to the entrypoint is commented out by default
// so you can fill in the correct argument list manually if desired.

#include "${SRC_BASE}"

int main(void) {
    // TODO: Provide concrete or symbolic arguments for \`${ENTRYPOINT}\`
    // and uncomment the call below once you know the correct signature.

    // ${ENTRYPOINT}(/* TODO: args */);

    return 0;
}
EOF

done
shopt -u nullglob

echo
echo "[done] Skeleton manual_entry drivers generated under: ${DRIVER_ROOT}"
