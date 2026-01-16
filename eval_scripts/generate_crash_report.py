#!/usr/bin/env python3
import argparse
import shutil
import re
from pathlib import Path

def parse_args():
    parser = argparse.ArgumentParser(description="Generate description.txt and error.txt from verification logs")
    parser.add_argument("--output-dir", required=True, help="Path to final_report_pack directory")
    return parser.parse_args()

def analyze_log(log_path):
    """Parses the verification log to extract crash details."""
    content = log_path.read_text(errors='replace')
    
    # Defaults
    crash_type = "Unknown Crash"
    location = "Unknown Location"
    function = "Unknown Function"
    
    # 1. Detect Crash Type
    if "AddressSanitizer: SEGV" in content:
        crash_type = "SEGV (Segmentation Fault)"
        if "unknown address 0x00000000" in content:
            crash_type += " - Null Pointer Dereference"
    elif "heap-buffer-overflow" in content:
        crash_type = "Heap Buffer Overflow"
    elif "stack-buffer-overflow" in content:
        crash_type = "Stack Buffer Overflow"
    elif "heap-use-after-free" in content:
        crash_type = "Heap Use After Free"
    elif "global-buffer-overflow" in content:
        crash_type = "Global Buffer Overflow"

    # 2. Extract Location & Function (Regex for stack trace #0)
    # Matches: #0 0x... in FunctionName /path/to/File.c:Line:Col
    match = re.search(r'#0 0x[0-9a-f]+ in (.+) (.+):(\d+)', content)
    if match:
        function = match.group(1)
        file_path = match.group(2)
        line_num = match.group(3)
        # Clean up file path to show just filename
        filename = Path(file_path).name
        location = f"{filename}:{line_num}"

    return crash_type, location, function

def main():
    args = parse_args()
    output_dir = Path(args.output_dir)
    prep_dir = output_dir / "oss_fuzz_prep"

    if not prep_dir.exists():
        print(f"[!] Error: {prep_dir} does not exist.")
        return

    count = 0
    print(f"[*] Scanning {prep_dir} for verified crashes...")

    for bug_dir in prep_dir.iterdir():
        if not bug_dir.is_dir(): continue
        
        log_file = bug_dir / "verification.log"
        if not log_file.exists(): continue

        # Check if it actually crashed (grep logic in python)
        content = log_file.read_text(errors='replace')
        if "AddressSanitizer" not in content and "SEGV" not in content:
            continue

        print(f"  [+] Generating report for: {bug_dir.name}")

        # 1. Create error.txt (Copy of log)
        shutil.copy2(log_file, bug_dir / "error.txt")

        # 2. Analyze Log
        c_type, c_loc, c_func = analyze_log(log_file)

        # 3. Create description.txt
        desc_text = (
            f"Automated Crash Report\n"
            f"----------------------\n"
            f"Vulnerability Type: {c_type}\n"
            f"Function:           {c_func}\n"
            f"Location:           {c_loc}\n\n"
            f"Summary:\n"
            f"A {c_type} was detected in function '{c_func}' at {c_loc}.\n"
            f"The crash was reproduced using the attached 'crash.bin' input.\n"
            f"\n"
            f"See 'error.txt' for the full AddressSanitizer stack trace.\n"
        )
        (bug_dir / "description.txt").write_text(desc_text)
        count += 1

    print(f"\n[✓] Generated reports for {count} verified bugs.")

if __name__ == "__main__":
    main()