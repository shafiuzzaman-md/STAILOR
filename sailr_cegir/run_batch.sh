#!/usr/bin/env bash
# sailr_cegir/run_batch.sh
# Parallel Dispatcher: Finds specs and feeds them to run_worker.sh

set -euo pipefail

if [ $# -lt 3 ]; then
  echo "Usage: $0 PROJECT_ID RULE_ID SPEC_ROOT_DIR [JOBS]" >&2
  exit 1
fi

export PROJECT_ID="$1"
export RULE_ID="$2"
export SPEC_ROOT_DIR="$3"
export JOBS="${4:-4}"
export SUMMARY_TSV="$(pwd)/summary.tsv"
touch "$SUMMARY_TSV"

# Paths
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WORKER_SCRIPT="${REPO_ROOT}/sailr_cegir/run_worker.sh"
PROJECT_SLUG="$(basename "$PROJECT_ID")"

# Handle the spec directory (Standard vs Resume folders)
if [ -d "${SPEC_ROOT_DIR}/${PROJECT_SLUG}" ]; then
    TARGET_DIR="${SPEC_ROOT_DIR}/${PROJECT_SLUG}"
elif [ -d "${SPEC_ROOT_DIR}" ]; then
    TARGET_DIR="${SPEC_ROOT_DIR}"
else
    echo "[!] Spec directory not found: ${SPEC_ROOT_DIR}"
    exit 1
fi

echo "[BATCH] Target: ${PROJECT_ID}"
echo "[BATCH] Specs:  ${TARGET_DIR}"
echo "[BATCH] Jobs:   ${JOBS}"
echo "[BATCH] Worker: ${WORKER_SCRIPT}"

# Check for specs
COUNT=$(find "${TARGET_DIR}" -name "*.json" | wc -l)
if [ "$COUNT" -eq 0 ]; then
    echo "[!] No .json spec files found in ${TARGET_DIR}"
    exit 0
fi

echo "[BATCH] Found ${COUNT} specs. Starting parallel execution..."

# --- EXECUTION ---
# Uses xargs to run 'run_worker.sh' in parallel.
# -P: Parallel jobs
# -I {}: Placeholder for the file path
find "${TARGET_DIR}" -name "*.json" -print0 | \
  sort -z | \
  xargs -0 -P "${JOBS}" -I {} \
  bash "${WORKER_SCRIPT}" "${PROJECT_ID}" "${RULE_ID}" "{}"

echo ""
echo "[BATCH] All jobs finished."