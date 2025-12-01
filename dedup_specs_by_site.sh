#!/usr/bin/env bash
#
# dedup_specs_by_site.sh
#
# For specs with names like:
#   000_dict.c_541_local.oob.memfunc.length-misuse.json
#   164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5.json
#   170_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5.json
#
# keep exactly ONE spec per (file,line) key (e.g., dict.c_541),
# preferring *.maxcover.v5.json, and delete the others.
#
# Usage:
#   # dry run (default)
#   ./dedup_specs_by_site.sh specs/libxml2_62911_vul
#
#   # actually delete duplicates
#   DRY_RUN=0 ./dedup_specs_by_site.sh specs/libxml2_62911_vul

set -euo pipefail

SPEC_DIR="${1:-specs/libxml2_62911_vul}"
DRY_RUN="${DRY_RUN:-1}"   # 1 = just show; 0 = rm

cd "${SPEC_DIR}"

echo "[i] Working in: $(pwd)"
echo "[i] DRY_RUN=${DRY_RUN} (1=show only, 0=delete)"

shopt -s nullglob

declare -A KEEP

# 1) First, prefer maxcover specs as canonical
for f in *.json; do
  [[ "$f" != *".json" ]] && continue

  # key is "<file>_<line>", i.e., fields 2 and 3: dict.c_541
  key="$(echo "$f" | cut -d_ -f2-3)"

  # only consider maxcover in this pass
  [[ "$f" != *"maxcover.v5.json" ]] && continue

  # record if not already set
  if [[ -z "${KEEP[$key]:-}" ]]; then
    KEEP["$key"]="$f"
  fi
done

# 2) Then, fill in any remaining keys with non-maxcover specs
for f in *.json; do
  [[ "$f" != *".json" ]] && continue
  [[ "$f" == *"maxcover.v5.json" ]] && continue

  key="$(echo "$f" | cut -d_ -f2-3)"

  if [[ -z "${KEEP[$key]:-}" ]]; then
    KEEP["$key"]="$f"
  fi
done

# 3) Now walk all files and delete those that are NOT the chosen KEEP[key]
DELETED=0
TOTAL=0

for f in *.json; do
  [[ "$f" != *".json" ]] && continue
  TOTAL=$((TOTAL + 1))

  key="$(echo "$f" | cut -d_ -f2-3)"
  keep="${KEEP[$key]:-}"

  # if something went weird and the key isn't known, keep it
  if [[ -z "${keep}" ]]; then
    echo "[warn] no KEEP target for key=${key}, keeping ${f}"
    continue
  fi

  if [[ "$f" == "$keep" ]]; then
    # this is the canonical spec for this site
    continue
  fi

  echo "[rm] key=${key}  keep=${keep}  delete=${f}"
  DELETED=$((DELETED + 1))
  if [[ "${DRY_RUN}" -eq 0 ]]; then
    rm -f -- "$f"
  fi
done

shopt -u nullglob

echo
echo "[done] Total specs seen : ${TOTAL}"
echo "[done] Unique (file,line): ${#KEEP[@]}"
echo "[done] Duplicates ${DRY_RUN:+(would)} removed: ${DELETED}"
