#!/usr/bin/env python3
import argparse
import csv
import re
import os
from pathlib import Path

def parse_args():
    parser = argparse.ArgumentParser(description="Auto-format CyberGym artifacts into Ground Truth CSV.")
    parser.add_argument(
        "--data-root", 
        required=True, 
        help="Root directory containing CyberGym bug folders (must contain 'error.txt' or 'output')"
    )
    parser.add_argument(
        "--output", 
        default="cybergym_data.csv", 
        help="Output CSV path"
    )
    return parser.parse_args()

def infer_cwe(log_content):
    """Map ASan error types to CWE IDs."""
    if "READ of size" in log_content:
        return "CWE-125"  # Out-of-bounds Read
    if "WRITE of size" in log_content:
        return "CWE-787"  # Out-of-bounds Write
    if "use-after-free" in log_content:
        return "CWE-416"
    if "double-free" in log_content:
        return "CWE-415"
    if "stack-buffer-overflow" in log_content:
        return "CWE-121"
    if "global-buffer-overflow" in log_content:
        return "CWE-126" # Buffer Over-read (often global)
    if "heap-buffer-overflow" in log_content:
        # Default fallback if direction is unclear (usually write, but safe to verify)
        return "CWE-122" 
    return "Unknown"

def parse_asan_log(log_path):
    """Extracts Project, File, Line, Function from ASan log."""
    try:
        content = log_path.read_text(errors="replace")
    except Exception as e:
        print(f"[!] Error reading {log_path}: {e}")
        return None

    data = {
        "project": "Unknown",
        "cwe": infer_cwe(content),
        "file": "Unknown",
        "line": 0,
        "function": "Unknown"
    }

    # 1. Parse Summary Line (Most Reliable)
    # Example: SUMMARY: AddressSanitizer: heap-buffer-overflow /src/libxml2/parser.c:12080:25 in xmlParseTryOrFinish
    summary_re = re.search(r"SUMMARY: AddressSanitizer: [\w-]+ (.*?):(\d+):\d+ in (.*)", content)
    
    if summary_re:
        full_path = summary_re.group(1)
        data["file"] = Path(full_path).name
        data["line"] = summary_re.group(2)
        data["function"] = summary_re.group(3).strip()
        
        # 2. Infer Project from Path (e.g., /src/libxml2/...)
        parts = full_path.split('/')
        if "libxml2" in full_path: 
            data["project"] = "libxml2"
        elif "openssl" in full_path: 
            data["project"] = "openssl"
        elif len(parts) > 2:
            # Fallback: Assume structure /src/PROJECT_NAME/file.c
            for p in parts:
                if p not in ["src", "out", "workspace"] and "." not in p:
                    data["project"] = p
                    break
    
    # 3. Fallback: Parse Stack Trace #0 if Summary is missing
    # Example: #0 0x5e4eb8 in xmlParseTryOrFinish /src/libxml2/parser.c:12080:25
    elif "#0" in content:
        trace_re = re.search(r"#0 \w+ in (.*?) (.*?):(\d+)", content)
        if trace_re:
            data["function"] = trace_re.group(1)
            data["file"] = Path(trace_re.group(2)).name
            data["line"] = trace_re.group(3)
            
    return data

def main():
    args = parse_args()
    root = Path(args.data_root)
    
    rows = []
    print(f"[*] Scanning {root} for 'error.txt' files...")

    # Walk directory to find all bug instances
    for path in root.rglob("error.txt"):
        print(f"  Processing: {path.parent.name}")
        info = parse_asan_log(path)
        
        if info and info["file"] != "Unknown":
            rows.append(info)
            print(f"    -> Detected: {info['project']} | {info['cwe']} | {info['file']}:{info['line']}")
        else:
            print(f"    [!] Failed to parse ASan data from {path.name}")

    if not rows:
        print("[!] No valid ASan logs found. Check directory structure.")
        return

    # Write CSV
    with open(args.output, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=["project", "cwe", "file", "line", "function"])
        writer.writeheader()
        writer.writerows(rows)
        
    print(f"\n[+] Successfully generated {args.output} with {len(rows)} entries.")

if __name__ == "__main__":
    main()