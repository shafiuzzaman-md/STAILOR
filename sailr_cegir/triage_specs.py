#!/usr/bin/env python3
"""triage_specs.py — Pre-LLM spec triage and prioritization.

Lightweight static checks on each spec BEFORE spending LLM tokens.
Assigns a priority tier (P0-P3) and optionally skips hopeless specs.

Usage:
    python3 triage_specs.py --specs-dir specs/libxml2_vul --src-root dataset/libxml2_vul
    python3 triage_specs.py --specs-dir specs/libxml2_vul --src-root dataset/libxml2_vul --skip-p3

Tiers:
    P0 (HIGH)   — Strong signals: known-dangerous CWE, clean function, short spine
    P1 (MEDIUM) — Decent signals but some risk factors
    P2 (LOW)    — Weak signals: huge functions, no entry, exotic CWE
    P3 (SKIP)   — Almost certainly FP or untriageable: build artifacts, dead code, etc.

Output:
    specs_dir/triage.tsv — Per-spec tier + scores + reasons
    specs_dir/triage_order.txt — Spec filenames in priority order (P0 first)

When --skip-p3 is passed, P3 specs are moved to specs_dir/skipped/.
"""

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Dict, List, Tuple


# =============================================================================
# CWE risk tiers — how likely is a CodeQL finding for this CWE to be a real bug?
# =============================================================================
CWE_HIGH_CONFIDENCE = {
    "122", "121", "120",  # Stack/heap buffer overflow
    "787", "125",          # OOB write/read
    "416",                 # Use after free
    "415",                 # Double free
    "190", "191",          # Integer overflow/underflow
    "369",                 # Divide by zero
    "123",                 # Write-what-where
    "562",                 # Return stack-allocated memory
}

CWE_MEDIUM_CONFIDENCE = {
    "119",  # Improper restriction of operations within bounds
    "476",  # NULL pointer dereference
    "401",  # Memory leak
    "772",  # Missing release of resource
    "134",  # Uncontrolled format string
    "761",  # Free pointer not at start
}

CWE_LOW_CONFIDENCE = {
    "457",  # Use of uninitialized variable (high FP rate)
    "252",  # Unchecked return value (high FP rate)
    "704",  # Incorrect type conversion (context-dependent)
}

# =============================================================================
# WMI rule ID patterns — Weird Machine Instruction detection rules
# These are custom CodeQL rules that detect exploitation chain building blocks.
# Format: rule_id prefix -> (boost_score, description)
# =============================================================================
WMI_RULE_PATTERNS = {
    "stailor/wmi-1": (25, "WMI-1:StaleRef"),
    "stailor/wmi-2": (25, "WMI-2:TypeConfusionLeak"),
    "stailor/wmi-3": (25, "WMI-3:ArbitraryFree"),
    "stailor/wmi-4": (25, "WMI-4:WriteWhatWhere"),
    "wmi-1": (20, "WMI-1:StaleRef"),
    "wmi-2": (20, "WMI-2:TypeConfusionLeak"),
    "wmi-3": (20, "WMI-3:ArbitraryFree"),
    "wmi-4": (20, "WMI-4:WriteWhatWhere"),
    # Standard CodeQL UAF rules also relevant to WMI chains
    "cpp/use-after-free": (15, "UAF"),
    "cpp/double-free": (15, "DoubleFree"),
    "cpp/return-stack-allocated-memory": (10, "ReturnStack"),
}

# Message keywords that indicate WMI-relevant exploitation primitives
WMI_MESSAGE_KEYWORDS = [
    "stale reference", "stale pointer", "dangling pointer", "dangling reference",
    "use after free", "use-after-free", "freed.*dereference", "freed.*read",
    "type confusion", "reclaim", "reoccupation",
    "arbitrary free", "controlled free", "attacker.*free",
    "write-what-where", "arbitrary write", "controlled write",
    "back-pointer", "back pointer", "not.*invalidat", "not.*null",
    "lifecycle mismatch", "double free", "double-free",
]

# Files that are almost certainly build artifacts / test code
SKIP_FILE_PATTERNS = [
    r'conftest\.c$',
    r'test[_/]', r'tests[_/]', r'_test\.c$',
    r'bench[_/]', r'benchmark',
    r'example[_/]', r'examples[_/]',
    r'tools[_/]', r'doc[_/]', r'docs[_/]',
    r'fuzz[_/]', r'fuzzer',
    r'\.pb\.c$', r'\.gen\.c$',  # Generated files
]

# Functions that are almost never the real vulnerability
SKIP_FUNCTION_PATTERNS = [
    r'^main$',
    r'^test_', r'_test$', r'^Test',
    r'^bench_', r'_bench$',
    r'^example_',
    r'^__',  # Compiler-generated
]


def load_spec(spec_path: Path) -> Dict:
    try:
        with open(spec_path) as f:
            return json.load(f)
    except Exception:
        return {}


def find_function_at_line(src_path: Path, target_line: int) -> Tuple[str, int]:
    """Find function containing target_line. Returns (func_name, func_length)."""
    if not src_path.exists():
        return ("", 0)
    try:
        src = src_path.read_text(errors="replace")
    except Exception:
        return ("", 0)

    lines = src.splitlines()
    # Simple heuristic: find function-like patterns
    func_starts = []
    for i, line in enumerate(lines, 1):
        # Match: type func_name(
        m = re.match(r'^(\w[\w\s\*]*?)\b(\w+)\s*\([^;]*$', line)
        if m and m.group(2) not in ("if", "while", "for", "switch", "return", "sizeof"):
            func_starts.append((i, m.group(2)))

    # Find which function contains target_line
    best_func = ""
    best_start = 0
    for start, name in func_starts:
        if start <= target_line:
            best_func = name
            best_start = start

    if not best_func:
        return ("", 0)

    # Estimate function length by finding next function or end of file
    func_end = len(lines)
    for start, name in func_starts:
        if start > best_start:
            func_end = start - 1
            break

    return (best_func, func_end - best_start)


def find_callers(src_path: Path, func_name: str) -> List[str]:
    """Find functions that call func_name in the same file."""
    if not src_path.exists() or not func_name:
        return []
    try:
        src = src_path.read_text(errors="replace")
    except Exception:
        return []

    callers = []
    pattern = re.compile(rf'\b{re.escape(func_name)}\s*\(')
    current_func = ""
    for line in src.splitlines():
        m = re.match(r'^(\w[\w\s\*]*?)\b(\w+)\s*\(', line)
        if m and m.group(2) not in ("if", "while", "for", "switch", "return"):
            current_func = m.group(2)
        if current_func and current_func != func_name and pattern.search(line):
            if current_func not in callers:
                callers.append(current_func)
    return callers


def is_static_function(src_path: Path, func_name: str) -> bool:
    """Check if function is declared static."""
    if not src_path.exists():
        return False
    try:
        src = src_path.read_text(errors="replace")
    except Exception:
        return False
    return bool(re.search(rf'\bstatic\b[^;]*\b{re.escape(func_name)}\s*\(', src))


def triage_spec(spec_path: Path, src_root: Path, fact_pack: Dict = None) -> Dict:
    """Score a single spec. Returns dict with tier, score, reasons."""
    spec = load_spec(spec_path)
    stem = spec_path.stem
    reasons = []
    score = 50  # Start neutral

    # --- Extract spec fields ---
    vul_file = spec.get("file", spec.get("vul_file", ""))
    vul_line = int(spec.get("line", spec.get("vul_line", 0)))
    cwe = str(spec.get("cwe_id", spec.get("cwe", "")))
    rule_id = spec.get("rule_id", spec.get("query_id", ""))
    message = spec.get("message", spec.get("description", ""))
    # Also try to extract from stem
    if not cwe:
        m = re.search(r'cwe-(\d+)', stem, re.IGNORECASE)
        if m:
            cwe = m.group(1)

    # =====================================================================
    # CHECK 1: File exists and is not a build artifact
    # =====================================================================
    if not vul_file:
        reasons.append("NO_VUL_FILE")
        return {"tier": "P3", "score": 0, "reasons": reasons, "stem": stem}

    src_file = None
    for candidate in [src_root / vul_file, *src_root.rglob(os.path.basename(vul_file))]:
        if candidate.is_file():
            src_file = candidate
            break

    if not src_file:
        reasons.append("FILE_NOT_FOUND")
        score -= 50

    for pat in SKIP_FILE_PATTERNS:
        if re.search(pat, vul_file, re.IGNORECASE):
            reasons.append(f"BUILD_ARTIFACT:{pat}")
            score -= 40
            break

    # =====================================================================
    # CHECK 2: CWE confidence tier
    # =====================================================================
    if cwe in CWE_HIGH_CONFIDENCE:
        score += 20
        reasons.append(f"CWE_{cwe}_HIGH")
    elif cwe in CWE_MEDIUM_CONFIDENCE:
        score += 10
        reasons.append(f"CWE_{cwe}_MEDIUM")
    elif cwe in CWE_LOW_CONFIDENCE:
        score -= 10
        reasons.append(f"CWE_{cwe}_LOW_FP_PRONE")
    elif cwe:
        reasons.append(f"CWE_{cwe}_UNKNOWN")
    else:
        score -= 5
        reasons.append("NO_CWE")

    # =====================================================================
    # CHECK 2b: WMI rule ID recognition
    # =====================================================================
    if rule_id:
        wmi_matched = False
        for prefix, (boost, label) in WMI_RULE_PATTERNS.items():
            if rule_id.startswith(prefix) or rule_id == prefix:
                score += boost
                reasons.append(f"WMI_RULE:{label}")
                wmi_matched = True
                break
        if not wmi_matched:
            # Also check query_id field and tags
            query_id = spec.get("query_id", "")
            tags = spec.get("tags", [])
            if isinstance(tags, list):
                tag_str = " ".join(str(t) for t in tags)
            else:
                tag_str = str(tags)
            for prefix, (boost, label) in WMI_RULE_PATTERNS.items():
                if (query_id and query_id.startswith(prefix)) or prefix in tag_str:
                    score += boost
                    reasons.append(f"WMI_TAG:{label}")
                    wmi_matched = True
                    break

    # =====================================================================
    # CHECK 3: Function exists and is reasonable size
    # =====================================================================
    func_name = ""
    func_len = 0
    if src_file and vul_line > 0:
        func_name, func_len = find_function_at_line(src_file, vul_line)

    if not func_name:
        score -= 15
        reasons.append("FUNC_NOT_FOUND")
    else:
        # Check skip patterns
        for pat in SKIP_FUNCTION_PATTERNS:
            if re.search(pat, func_name):
                score -= 30
                reasons.append(f"SKIP_FUNC:{func_name}")
                break

        if func_len > 500:
            score -= 10
            reasons.append(f"HUGE_FUNC:{func_len}lines")
        elif func_len > 200:
            score -= 5
            reasons.append(f"LARGE_FUNC:{func_len}lines")
        elif func_len > 0:
            score += 5
            reasons.append(f"FUNC_OK:{func_name}({func_len}lines)")

    # =====================================================================
    # CHECK 4: Can we find an entry point? (public caller)
    # =====================================================================
    has_entry = False
    if src_file and func_name:
        if is_static_function(src_file, func_name):
            callers = find_callers(src_file, func_name)
            public_callers = [c for c in callers if not is_static_function(src_file, c)]
            if public_callers:
                has_entry = True
                score += 10
                reasons.append(f"PUBLIC_ENTRY:{public_callers[0]}")
            elif callers:
                has_entry = True
                score += 5
                reasons.append(f"STATIC_ENTRY:{callers[0]}")
            else:
                score -= 15
                reasons.append("STATIC_NO_CALLER")
        else:
            has_entry = True
            score += 10
            reasons.append(f"PUBLIC_FUNC:{func_name}")

    # =====================================================================
    # CHECK 5: Duplicate detection — same file:line already covered?
    # =====================================================================
    # This is checked at batch level, not per-spec

    # =====================================================================
    # CHECK 6: SA message quality — does it mention specific operations?
    # =====================================================================
    if message:
        danger_keywords = ["buffer overflow", "out of bounds", "use after free",
                           "double free", "null dereference", "format string",
                           "integer overflow", "uninitialized", "heap", "stack"]
        hits = sum(1 for kw in danger_keywords if kw.lower() in message.lower())
        if hits >= 2:
            score += 10
            reasons.append(f"MSG_SPECIFIC:{hits}kw")
        elif hits == 1:
            score += 5
            reasons.append("MSG_OK")

        # WMI-specific message patterns (exploitation chain indicators)
        wmi_hits = sum(1 for kw in WMI_MESSAGE_KEYWORDS
                       if re.search(kw, message, re.IGNORECASE))
        if wmi_hits >= 2:
            score += 15
            reasons.append(f"WMI_MSG:{wmi_hits}kw")
        elif wmi_hits == 1:
            score += 8
            reasons.append("WMI_MSG_1kw")

    # =====================================================================
    # CHECK 7: Spec has call chain / data flow (richer SA data)
    # =====================================================================
    if spec.get("spine") or spec.get("call_chain") or spec.get("dataFlow"):
        score += 10
        reasons.append("HAS_CALL_CHAIN")
    if spec.get("source_context"):
        score += 5
        reasons.append("HAS_SOURCE_CTX")

    # =====================================================================
    # TIER ASSIGNMENT
    # =====================================================================
    score = max(0, min(100, score))

    if score >= 70:
        tier = "P0"
    elif score >= 50:
        tier = "P1"
    elif score >= 30:
        tier = "P2"
    else:
        tier = "P3"

    return {
        "tier": tier,
        "score": score,
        "reasons": reasons,
        "stem": stem,
        "cwe": cwe,
        "func": func_name,
        "file": vul_file,
        "line": vul_line,
    }


def triage_batch(specs_dir: Path, src_root: Path) -> List[Dict]:
    """Triage all specs in a directory."""
    spec_files = sorted(specs_dir.glob("*.json"))
    if not spec_files:
        print(f"[!] No spec files in {specs_dir}")
        return []

    # Load fact_pack if available (for duplicate detection)
    results = []
    seen_locations = {}  # file:line -> first spec stem

    for spec_path in spec_files:
        result = triage_spec(spec_path, src_root)

        # Duplicate detection
        loc_key = f"{result['file']}:{result['line']}"
        if loc_key in seen_locations and result['line'] > 0:
            result["score"] -= 20
            result["reasons"].append(f"DUPLICATE_OF:{seen_locations[loc_key]}")
            if result["score"] < 30:
                result["tier"] = "P3"
        else:
            seen_locations[loc_key] = result["stem"]

        results.append(result)

    # Sort by tier then score (descending)
    tier_order = {"P0": 0, "P1": 1, "P2": 2, "P3": 3}
    results.sort(key=lambda r: (tier_order.get(r["tier"], 9), -r["score"]))

    return results


def main():
    parser = argparse.ArgumentParser(description="Pre-LLM spec triage")
    parser.add_argument("--specs-dir", required=True, help="Directory with spec JSONs")
    parser.add_argument("--src-root", required=True, help="Project source root")
    parser.add_argument("--skip-p3", action="store_true", help="Move P3 specs to skipped/")
    parser.add_argument("--max-specs", type=int, default=0, help="Max specs to keep (0=all)")
    args = parser.parse_args()

    specs_dir = Path(args.specs_dir)
    src_root = Path(args.src_root)

    results = triage_batch(specs_dir, src_root)
    if not results:
        sys.exit(0)

    # --- Write triage.tsv ---
    tsv_path = specs_dir / "triage.tsv"
    with open(tsv_path, "w") as f:
        f.write("Tier\tScore\tSpec\tCWE\tFunc\tFile\tLine\tReasons\n")
        for r in results:
            reasons_str = "; ".join(r["reasons"])
            f.write(f"{r['tier']}\t{r['score']}\t{r['stem']}\t{r['cwe']}\t{r['func']}\t{r['file']}\t{r['line']}\t{reasons_str}\n")
    print(f"[✓] Wrote {tsv_path}")

    # --- Write priority order file ---
    order_path = specs_dir / "triage_order.txt"
    with open(order_path, "w") as f:
        for r in results:
            if r["tier"] != "P3" or not args.skip_p3:
                f.write(f"{r['stem']}.json\n")
    print(f"[✓] Wrote {order_path}")

    # --- Skip P3 if requested ---
    skipped = 0
    if args.skip_p3:
        skip_dir = specs_dir / "skipped"
        skip_dir.mkdir(exist_ok=True)
        for r in results:
            if r["tier"] == "P3":
                src = specs_dir / f"{r['stem']}.json"
                dst = skip_dir / f"{r['stem']}.json"
                if src.exists():
                    src.rename(dst)
                    skipped += 1

    # --- Apply max-specs limit ---
    limited = 0
    if args.max_specs > 0:
        kept = [r for r in results if r["tier"] != "P3" or not args.skip_p3]
        if len(kept) > args.max_specs:
            skip_dir = specs_dir / "deferred"
            skip_dir.mkdir(exist_ok=True)
            for r in kept[args.max_specs:]:
                src = specs_dir / f"{r['stem']}.json"
                dst = skip_dir / f"{r['stem']}.json"
                if src.exists():
                    src.rename(dst)
                    limited += 1

    # --- Summary ---
    tier_counts = {}
    for r in results:
        tier_counts[r["tier"]] = tier_counts.get(r["tier"], 0) + 1

    print(f"\n[TRIAGE] {len(results)} specs scored:")
    for tier in ["P0", "P1", "P2", "P3"]:
        count = tier_counts.get(tier, 0)
        if count > 0:
            label = {"P0": "HIGH", "P1": "MEDIUM", "P2": "LOW", "P3": "SKIP"}[tier]
            print(f"  {tier} ({label}): {count}")
    if skipped:
        print(f"  Moved {skipped} P3 specs to skipped/")
    if limited:
        print(f"  Deferred {limited} specs (max-specs={args.max_specs})")

    active = sum(1 for r in results if r["tier"] != "P3") if args.skip_p3 else len(results)
    print(f"\n  Active specs for agent run: {active}")


if __name__ == "__main__":
    main()