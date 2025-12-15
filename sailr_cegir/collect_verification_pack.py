#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
collect_verification_pack.py

Single "results collection" utility for SAILR-CEGIR / SA+LLM runs that combines:
  1) Post-hoc aggregation (counts.tsv, summary_agg.tsv, html)
  2) Strict bug-only artifact collection into a verification_pack/
  3) (Optional) Full harness/ directory capture (including klee-out-* traces)

Designed to be robust across layouts:
  MODE_ROOT/<SPEC>/run_meta.json
  MODE_ROOT/<SPEC>/harness/{harness.c,klee-out-*,klee-last,...}
  MODE_ROOT/<SPEC>/ctx/{spec.json,vul_snippet_annotated.txt}
  MODE_ROOT/<SPEC>/logs/*.stderr.txt
  MODE_ROOT/summary.tsv
  MODE_ROOT/llm_usage.tsv

Usage:
  python3 collect_results_pack.py --mode-root se_runs/sailr_cegir/libxml2_62911_vul

Common options:
  --out-dir verification_pack
  --include-harness-dir            (default: true)
  --bugs-only                      (default: true; ignores reach-only)
  --run-aggregate                  (default: true)
"""

from __future__ import annotations

import argparse
import csv
import html
import json
import shutil
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Any, List, Optional, Tuple


# -----------------------------
# Helpers
# -----------------------------

def eprint(msg: str) -> None:
    print(msg, file=sys.stderr)

def safe_read_json(path: Path) -> Optional[Dict[str, Any]]:
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return None

def safe_copy(src: Path, dest: Path) -> None:
    if not src.exists():
        return
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dest)

def copytree_filtered(src: Path, dest: Path, exclude_suffixes: Tuple[str, ...] = ()) -> None:
    """
    Copy a directory tree while optionally excluding files by suffix.
    """
    if not src.exists() or not src.is_dir():
        return

    def _ignore(dirpath: str, names: List[str]) -> List[str]:
        ignored: List[str] = []
        for nm in names:
            p = Path(dirpath) / nm
            if p.is_file() and exclude_suffixes and p.suffix in exclude_suffixes:
                ignored.append(nm)
        return ignored

    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(src, dest, dirs_exist_ok=True, ignore=_ignore if exclude_suffixes else None)

def get_last_stderr(spec_dir: Path) -> Optional[Path]:
    logs_dir = spec_dir / "logs"
    if not logs_dir.exists():
        return None
    candidates = sorted(logs_dir.glob("*.stderr.txt"))
    return candidates[-1] if candidates else None

def _try_index(try_dir: Path) -> int:
    """Extract numeric index from try_XX; unknown formats sort early."""
    name = try_dir.name
    if name.startswith("try_"):
        try:
            return int(name.split("_", 1)[1])
        except Exception:
            return -1
    return -1

def iter_try_dirs(spec_dir: Path) -> List[Path]:
    """Return try_* directories if present; otherwise a singleton [spec_dir] for legacy layouts."""
    tries = [d for d in spec_dir.iterdir() if d.is_dir() and d.name.startswith("try_")]
    if not tries:
        return [spec_dir]
    return sorted(tries, key=_try_index)

def get_klee_dirs_under(root: Path) -> List[Path]:
    """Find KLEE output directories directly under a root: klee-last, klee-out-*"""
    out: List[Path] = []
    if not root.exists() or not root.is_dir():
        return out
    kl = root / "klee-last"
    if kl.exists() and kl.is_dir():
        out.append(kl)
    for d in sorted(root.glob("klee-out-*")):
        if d.is_dir():
            out.append(d)
    return out

def get_klee_dirs(spec_dir: Path) -> List[Path]:
    """
    Finds KLEE output directories across the common layouts:
      - <spec>/harness/{klee-last,klee-out-*}
      - <spec>/try_XX/{klee-last,klee-out-*}
      - <spec>/try_XX/harness/{klee-last,klee-out-*}
    """
    out: List[Path] = []

    # Legacy layout: <spec>/harness/
    out.extend(get_klee_dirs_under(spec_dir / "harness"))

    # New layout: per-try directories
    for tdir in iter_try_dirs(spec_dir):
        out.extend(get_klee_dirs_under(tdir))
        out.extend(get_klee_dirs_under(tdir / "harness"))

    # Dedupe while preserving order
    seen = set()
    uniq: List[Path] = []
    for p in out:
        if p not in seen:
            uniq.append(p)
            seen.add(p)
    return uniq

def find_best_try_dir(spec_dir: Path) -> Optional[Path]:
    """Pick the most relevant try_* dir for artifact copying (latest with any KLEE output; prefer assert hits)."""
    tries = [d for d in spec_dir.iterdir() if d.is_dir() and d.name.startswith("try_")]
    if not tries:
        return None

    scored: List[Tuple[Tuple[int, int, int], Path]] = []
    for t in tries:
        klee_dirs = get_klee_dirs_under(t) + get_klee_dirs_under(t / "harness")
        if not klee_dirs:
            continue

        # Prefer tries that contain any *.assert.err
        has_assert = 0
        for kd in klee_dirs:
            try:
                if any(kd.rglob("*.assert.err")):
                    has_assert = 1
                    break
            except Exception:
                pass

        score = (has_assert, len(klee_dirs), _try_index(t))
        scored.append((score, t))

    if not scored:
        return sorted(tries, key=_try_index)[-1]

    scored.sort(key=lambda x: x[0])
    return scored[-1][1]


# -----------------------------
# Aggregation (from summary.tsv + run_meta.json)
# -----------------------------

@dataclass
class SummaryRow:
    spec_stem: str
    cls: str
    completed_paths: int
    time_sec: float

def read_summary(summary_path: Path) -> List[SummaryRow]:
    if not summary_path.exists():
        return []
    lines = [ln.strip() for ln in summary_path.read_text(encoding="utf-8").splitlines() if ln.strip()]
    if not lines:
        return []
    start = 0
    if "spec_stem" in lines[0]:
        start = 1
    out: List[SummaryRow] = []
    for ln in lines[start:]:
        parts = ln.split("\t")
        if len(parts) < 4:
            continue
        spec_stem, cls, paths_s, time_s = parts[:4]
        try:
            paths = int(paths_s)
        except ValueError:
            paths = 0
        try:
            t = float(time_s)
        except ValueError:
            t = 0.0
        out.append(SummaryRow(spec_stem=spec_stem, cls=cls, completed_paths=paths, time_sec=t))
    return out

def parse_llm_usage(llm_usage_path: Path) -> Tuple[int, int, int]:
    """
    Returns (prompt_tokens, completion_tokens, total_tokens).
    Expected columns: ... prompt_tokens completion_tokens total_tokens at indices 5,6,7.
    """
    if not llm_usage_path.exists():
        return (0, 0, 0)
    p = c = t = 0
    try:
        with llm_usage_path.open("r", encoding="utf-8") as f:
            reader = csv.reader(f, delimiter="\t")
            header = next(reader, None)
            if not header:
                return (0, 0, 0)
            for row in reader:
                if len(row) < 8:
                    continue
                try:
                    p += int(row[5])
                    c += int(row[6])
                    t += int(row[7])
                except ValueError:
                    continue
    except Exception:
        return (0, 0, 0)
    return (p, c, t)

def write_aggregate_outputs(mode_root: Path, llm_usage_log: Optional[Path] = None) -> None:
    """
    Writes:
      counts.tsv/csv
      summary_agg.tsv/csv/html
    """
    summary_path = mode_root / "summary.tsv"
    rows = read_summary(summary_path)
    if not rows:
        eprint(f"[i] No summary rows found at: {summary_path}")
        return

    # Class counts and time
    count_E = count_H0 = count_H1 = count_H2 = 0
    attempt = 0
    total_time = 0.0

    # Assertions
    count_Vul_specs = 0
    count_Reach_specs = 0
    sum_VulnAsserts = 0
    sum_ReachAsserts = 0
    count_Vul_only = 0
    count_Reach_only = 0
    count_Vul_and_Reach = 0
    count_FP = 0  # placeholder
    num_timeout = 0
    timed_specs = 0

    # Map for later use by collector
    for r in rows:
        attempt += 1
        total_time += r.time_sec
        if r.cls == "E":
            count_E += 1
        elif r.cls == "H0":
            count_H0 += 1
            timed_specs += 1
        elif r.cls == "H1":
            count_H1 += 1
            timed_specs += 1
        elif r.cls == "H2":
            count_H2 += 1
            timed_specs += 1
        else:
            count_E += 1

        meta = safe_read_json(mode_root / r.spec_stem / "run_meta.json")
        klee = (meta or {}).get("klee", {})
        num_vuln = 0
        num_reach = 0

        try:
            if "num_vuln_assert" in klee:
                num_vuln = int(klee.get("num_vuln_assert", 0))
            else:
                num_vuln = 1 if klee.get("bug_assert_hit", False) else 0
        except Exception:
            num_vuln = 0

        try:
            if "num_reach_assert" in klee:
                num_reach = int(klee.get("num_reach_assert", 0))
            else:
                num_reach = 1 if klee.get("reach_assert_hit", False) else 0
        except Exception:
            num_reach = 0

        sum_VulnAsserts += num_vuln
        sum_ReachAsserts += num_reach
        if num_vuln > 0:
            count_Vul_specs += 1
        if num_reach > 0:
            count_Reach_specs += 1
        if num_vuln > 0 and num_reach == 0:
            count_Vul_only += 1
        elif num_vuln == 0 and num_reach > 0:
            count_Reach_only += 1
        elif num_vuln > 0 and num_reach > 0:
            count_Vul_and_Reach += 1

    # Tokens
    llm_path = llm_usage_log if llm_usage_log else (mode_root / "llm_usage.tsv")
    prompt_tok, comp_tok, total_tok = parse_llm_usage(llm_path) if llm_path else (0, 0, 0)

    # Outputs
    counts_tsv = mode_root / "counts.tsv"
    counts_csv = mode_root / "counts.csv"
    summary_agg_tsv = mode_root / "summary_agg.tsv"
    summary_agg_csv = mode_root / "summary_agg.csv"
    summary_agg_html = mode_root / "summary_agg.html"

    counts_headers = [
        "E", "HO", "H1", "H2",
        "Vul", "VulnAsserts", "FP", "time(s)",
        "attempt", "prompt_tokens", "completion_tokens", "total_tokens",
    ]
    counts_row = [
        count_E, count_H0, count_H1, count_H2,
        count_Vul_specs, sum_VulnAsserts, count_FP, total_time,
        attempt, prompt_tok, comp_tok, total_tok,
    ]

    mode_name = mode_root.parent.name if mode_root.parent else ""
    project_name = mode_root.name
    avg_vuln_per_pos = (sum_VulnAsserts / count_Vul_specs) if count_Vul_specs > 0 else 0.0
    avg_reach_per_pos = (sum_ReachAsserts / count_Reach_specs) if count_Reach_specs > 0 else 0.0

    summary_headers = [
        "MODE", "PROJECT", "attempt", "E", "H0", "H1", "H2",
        "Vul", "VulnAsserts", "ReachSpecs", "ReachAsserts",
        "VulOnlySpecs", "ReachOnlySpecs", "VulAndReachSpecs",
        "FP", "time(s)", "prompt_tokens", "completion_tokens", "total_tokens",
        "timeouts", "timed_specs", "AvgVulnPerPos", "AvgReachPerPos",
    ]
    summary_row = [
        mode_name, project_name, attempt,
        count_E, count_H0, count_H1, count_H2,
        count_Vul_specs, sum_VulnAsserts,
        count_Reach_specs, sum_ReachAsserts,
        count_Vul_only, count_Reach_only, count_Vul_and_Reach,
        count_FP, total_time,
        prompt_tok, comp_tok, total_tok,
        num_timeout, timed_specs,
        round(avg_vuln_per_pos, 4), round(avg_reach_per_pos, 4),
    ]

    with counts_tsv.open("w", encoding="utf-8", newline="") as f:
        w = csv.writer(f, delimiter="\t")
        w.writerow(counts_headers)
        w.writerow(counts_row)

    with counts_csv.open("w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(counts_headers)
        w.writerow(counts_row)

    with summary_agg_tsv.open("w", encoding="utf-8", newline="") as f:
        w = csv.writer(f, delimiter="\t")
        w.writerow(summary_headers)
        w.writerow(summary_row)

    with summary_agg_csv.open("w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(summary_headers)
        w.writerow(summary_row)

    with summary_agg_html.open("w", encoding="utf-8") as f:
        f.write("<html><head><meta charset='utf-8'><title>SAILR-CEGIR Aggregate</title></head><body>\n")
        f.write("<h2>SAILR-CEGIR Aggregate</h2>\n")
        f.write("<table border='1' cellspacing='0' cellpadding='4'>\n<tr>")
        for h in summary_headers:
            f.write(f"<th>{html.escape(str(h))}</th>")
        f.write("</tr>\n<tr>")
        for v in summary_row:
            f.write(f"<td>{html.escape(str(v))}</td>")
        f.write("</tr>\n</table>\n</body></html>\n")


# -----------------------------
# Collector (verification_pack)
# -----------------------------

def is_confirmed_bug(meta: Dict[str, Any]) -> bool:
    klee = meta.get("klee", {})
    # Prefer explicit numeric counts if present
    if "num_vuln_assert" in klee:
        try:
            return int(klee.get("num_vuln_assert", 0)) > 0
        except Exception:
            pass
    if klee.get("bug_assert_hit", False):
        return True
    if str(klee.get("status", "")).lower() in {"assertion_bug", "bug"}:
        return True
    return False

def is_reach_only(meta: Dict[str, Any]) -> bool:
    klee = meta.get("klee", {})
    num_vuln = 0
    num_reach = 0
    try:
        num_vuln = int(klee.get("num_vuln_assert", 0)) if "num_vuln_assert" in klee else (1 if klee.get("bug_assert_hit", False) else 0)
    except Exception:
        num_vuln = 0
    try:
        num_reach = int(klee.get("num_reach_assert", 0)) if "num_reach_assert" in klee else (1 if klee.get("reach_assert_hit", False) else 0)
    except Exception:
        num_reach = 0
    return (num_vuln == 0) and (num_reach > 0)

def build_summary_map(mode_root: Path) -> Dict[str, SummaryRow]:
    m: Dict[str, SummaryRow] = {}
    for r in read_summary(mode_root / "summary.tsv"):
        m[r.spec_stem] = r
    return m

def collect_verification_pack(
    mode_root: Path,
    out_root: Path,
    include_harness_dir: bool = True,
    bugs_only: bool = True,
    include_reach_only: bool = False,
    exclude_harness_suffixes: Tuple[str, ...] = (),
) -> int:
    """
    Collect confirmed bugs into out_root/<spec>.

    include_harness_dir=True copies the entire harness material for the selected try_XX
    (or legacy <spec>/harness) into <pack>/<spec>/harness, including klee-out-* traces.
    """
    if out_root.exists():
        shutil.rmtree(out_root)
    out_root.mkdir(parents=True, exist_ok=True)

    summary_map = build_summary_map(mode_root)

    collected = 0
    index_rows: List[List[str]] = []
    index_header = [
        "spec_stem",
        "class",
        "completed_paths",
        "time_sec",
        "klee_status",
        "bug_assert_hit",
        "reach_assert_hit",
        "num_vuln_assert",
        "num_reach_assert",
        "pack_dir",
    ]

    for spec_dir in sorted(mode_root.iterdir()):
        if not spec_dir.is_dir():
            continue

        meta_path = spec_dir / "run_meta.json"
        if not meta_path.exists():
            continue

        meta = safe_read_json(meta_path)
        if meta is None:
            continue

        bug = is_confirmed_bug(meta)
        reach_only = is_reach_only(meta)

        if bugs_only and not bug:
            if not (include_reach_only and reach_only):
                continue

        # ---- copy ----
        dest_dir = out_root / spec_dir.name
        dest_dir.mkdir(parents=True, exist_ok=True)

        # Context & spec
        safe_copy(spec_dir / "ctx/vul_snippet_annotated.txt", dest_dir / "source_context.txt")
        safe_copy(spec_dir / "ctx/spec.json", dest_dir / "spec.json")
        safe_copy(meta_path, dest_dir / "run_meta.json")

        # Logs
        last_stderr = get_last_stderr(spec_dir)
        if last_stderr:
            safe_copy(last_stderr, dest_dir / "logs/last_run.stderr.txt")

        # ---- Harness / KLEE artifacts ----
        # Layouts vary:
        #   legacy: <spec>/harness/{harness.c,klee-out-*}
        #   try-based: <spec>/try_XX/harness/ + siblings in <spec>/try_XX/
        best_try = find_best_try_dir(spec_dir)
        harness_base = best_try if best_try else spec_dir

        # Record which try was selected (useful for audits)
        if best_try is not None:
            (dest_dir / "selected_try.txt").write_text(best_try.name + "\n", encoding="utf-8")

        # Prefer copying harness artifacts into <pack>/<spec>/harness
        harness_dest = dest_dir / "harness"

        # 1) Copy an explicit harness/ directory if present
        if include_harness_dir:
            if (harness_base / "harness").is_dir():
                copytree_filtered(
                    harness_base / "harness",
                    harness_dest,
                    exclude_suffixes=exclude_harness_suffixes,
                )
            elif (spec_dir / "harness").is_dir():
                # Fallback for legacy layout even when try_* exists but harness_base lacks harness/
                copytree_filtered(
                    spec_dir / "harness",
                    harness_dest,
                    exclude_suffixes=exclude_harness_suffixes,
                )

            # 2) Also copy KLEE output dirs that may live next to harness/
            for root in [harness_base, harness_base / "harness", spec_dir / "harness"]:
                for kd in get_klee_dirs_under(root):
                    copytree_filtered(kd, harness_dest / kd.name, exclude_suffixes=exclude_harness_suffixes)

            # 3) Copy harness*.c files that are often emitted at try_XX root
            for cand in sorted(harness_base.glob("harness*.c")):
                safe_copy(cand, harness_dest / cand.name)
            # Also handle the common single harness.c under legacy layout
            safe_copy(harness_base / "harness.c", harness_dest / "harness.c")

        else:
            # Minimal traces across all tries/legacy dirs
            trace_dir = dest_dir / "traces"
            for k_dir in get_klee_dirs(spec_dir):
                for err in k_dir.glob("*.err"):
                    safe_copy(err, trace_dir / err.name)
                    stem = err.name.split(".")[0]
                    ktest = k_dir / f"{stem}.ktest"
                    if ktest.exists():
                        safe_copy(ktest, trace_dir / ktest.name)

        # Index row
        klee = meta.get("klee", {})
        klee_status = str(klee.get("status", "unknown"))
        bug_hit = bool(klee.get("bug_assert_hit", False)) or (int(klee.get("num_vuln_assert", 0)) > 0 if "num_vuln_assert" in klee else False)
        reach_hit = bool(klee.get("reach_assert_hit", False)) or (int(klee.get("num_reach_assert", 0)) > 0 if "num_reach_assert" in klee else False)
        num_vuln = int(klee.get("num_vuln_assert", 1 if bug_hit else 0)) if klee else 0
        num_reach = int(klee.get("num_reach_assert", 1 if reach_hit else 0)) if klee else 0

        sr = summary_map.get(spec_dir.name, SummaryRow(spec_stem=spec_dir.name, cls="?", completed_paths=0, time_sec=0.0))
        index_rows.append([
            spec_dir.name,
            sr.cls,
            str(sr.completed_paths),
            f"{sr.time_sec:.6f}",
            klee_status,
            "1" if bug_hit else "0",
            "1" if reach_hit else "0",
            str(num_vuln),
            str(num_reach),
            str(dest_dir.relative_to(out_root)),
        ])

        collected += 1

    # Write pack index
    index_path = out_root / "index.tsv"
    with index_path.open("w", encoding="utf-8", newline="") as f:
        w = csv.writer(f, delimiter="\t")
        w.writerow(index_header)
        for r in index_rows:
            w.writerow(r)

    return collected


# -----------------------------
# CLI
# -----------------------------

def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser(description="Aggregate + collect SAILR-CEGIR results into a verification pack.")
    ap.add_argument("--mode-root", required=True, help="e.g., se_runs/sailr_cegir/libxml2_62911_vul")
    ap.add_argument("--out-dir", default="verification_pack", help="Output directory (relative to --mode-root unless absolute).")

    ap.add_argument("--run-aggregate", action="store_true", default=True, help="Write counts.tsv and summary_agg.* (default: on).")
    ap.add_argument("--no-aggregate", action="store_true", help="Disable aggregation outputs.")

    ap.add_argument("--llm-usage-log", help="Optional path to llm_usage.tsv (defaults to <mode-root>/llm_usage.tsv).")

    ap.add_argument("--include-harness-dir", action="store_true", default=True, help="Copy entire <spec>/harness/ into the pack (default: on).")
    ap.add_argument("--no-harness-dir", action="store_true", help="Do not copy full harness/, only minimal traces and harness.c.")
    ap.add_argument("--exclude-harness-suffix", action="append", default=[], help="Exclude these file suffixes from the copied harness/ tree (repeatable), e.g., --exclude-harness-suffix .bc")

    ap.add_argument("--bugs-only", action="store_true", default=True, help="Collect only confirmed bugs (default: on).")
    ap.add_argument("--include-reach-only", action="store_true", default=False, help="Also collect reach-only specs (ignored if --bugs-only=off).")
    return ap.parse_args()

def main() -> None:
    args = parse_args()

    mode_root = Path(args.mode_root)
    if not mode_root.exists():
        raise SystemExit(f"[!] mode-root not found: {mode_root}")

    # Out dir resolution
    out_root = Path(args.out_dir)
    if not out_root.is_absolute():
        out_root = mode_root / out_root

    llm_usage_log = Path(args.llm_usage_log) if args.llm_usage_log else None

    do_agg = args.run_aggregate and not args.no_aggregate
    include_harness = args.include_harness_dir and not args.no_harness_dir
    exclude_suffixes: Tuple[str, ...] = tuple(args.exclude_harness_suffix or [])

    if do_agg:
        write_aggregate_outputs(mode_root, llm_usage_log=llm_usage_log)

    collected = collect_verification_pack(
        mode_root=mode_root,
        out_root=out_root,
        include_harness_dir=include_harness,
        bugs_only=args.bugs_only,
        include_reach_only=args.include_reach_only,
        exclude_harness_suffixes=exclude_suffixes,
    )

    print(f"[✓] Done.")
    print(f"    mode_root : {mode_root.resolve()}")
    print(f"    pack_dir  : {out_root.resolve()}")
    print(f"    collected : {collected}")

if __name__ == "__main__":
    main()
