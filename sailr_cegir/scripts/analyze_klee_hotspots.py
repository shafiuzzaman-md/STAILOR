#!/usr/bin/env python3
"""
analyze_klee_hotspots.py: Identifies path explosion culprits from KLEE logs.
"""
import sys
import re
from pathlib import Path
from collections import Counter

def main():
    if len(sys.argv) < 2:
        print("Usage: analyze_klee_hotspots.py <klee_out_dir>")
        sys.exit(1)
        
    klee_dir = Path(sys.argv[1])
    warnings_path = klee_dir / "warnings.txt"
    hotspots = Counter()
    
    if warnings_path.exists():
        content = warnings_path.read_text(errors="ignore")
        # Pattern: " ... at ... in function_name"
        funcs = re.findall(r" in ([a-zA-Z0-9_]+)", content)
        for f in funcs: hotspots[f] += 1

    # Heuristic: Boost 'hash', 'compute', 'lookup'
    candidates = []
    for func, score in hotspots.most_common(20):
        if func in ["main", "klee_make_symbolic"]: continue
        if any(x in func.lower() for x in ["hash", "crypt", "compress", "lookup"]):
            score += 10
        candidates.append((func, score))

    candidates.sort(key=lambda x: x[1], reverse=True)
    if candidates:
        print("\n".join([x[0] for x in candidates[:5]]))

if __name__ == "__main__":
    main()