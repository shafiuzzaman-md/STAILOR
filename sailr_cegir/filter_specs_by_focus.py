#!/usr/bin/env python3
"""filter_specs_by_focus.py — Filter spec JSONs to only include files matching focus patterns.

Moves non-matching specs to a .filtered/ subdirectory (not deleted, recoverable).

Usage:
    python3 filter_specs_by_focus.py \
        --specs-dir specs/libxml2_62911_vul/ \
        --focus-file se_config/my_project/focus_modules.txt \
        --focus-config se_config/my_project/config.json
"""
import argparse, fnmatch, json, os, shutil
from pathlib import Path
from typing import List, Tuple


def parse_focus_file(path: str) -> Tuple[List[str], List[str]]:
    """Parse focus_modules.txt → (include_patterns, exclude_patterns)."""
    includes, excludes = [], []
    with open(path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            if line.startswith('!'):
                excludes.append(line[1:])
            else:
                includes.append(line)
    return includes, excludes


def parse_focus_config(path: str) -> Tuple[List[str], List[str]]:
    """Parse config.json focus fields → (include_patterns, exclude_patterns)."""
    try:
        cfg = json.loads(Path(path).read_text(encoding='utf-8'))
        focus = cfg.get('focus', {})
        includes = focus.get('modules', [])
        excludes = focus.get('exclude', [])
        return includes, excludes
    except Exception:
        return [], []


def matches_patterns(filepath: str, patterns: List[str]) -> bool:
    """Check if filepath matches any of the glob patterns."""
    for pat in patterns:
        if fnmatch.fnmatch(filepath, pat):
            return True
        # Also match basename
        if fnmatch.fnmatch(os.path.basename(filepath), pat):
            return True
    return False


def main():
    parser = argparse.ArgumentParser(description="Filter specs by focus modules")
    parser.add_argument('--specs-dir', required=True, help='Directory containing spec JSONs')
    parser.add_argument('--focus-file', help='Path to focus_modules.txt')
    parser.add_argument('--focus-config', help='Path to config.json with focus fields')
    args = parser.parse_args()
    
    includes, excludes = [], []
    
    if args.focus_file and os.path.exists(args.focus_file):
        fi, fe = parse_focus_file(args.focus_file)
        includes.extend(fi)
        excludes.extend(fe)
    
    if args.focus_config and os.path.exists(args.focus_config):
        ci, ce = parse_focus_config(args.focus_config)
        includes.extend(ci)
        excludes.extend(ce)
    
    if not includes and not excludes:
        print("[i] No focus patterns found, keeping all specs")
        return
    
    print(f"[i] Focus: {len(includes)} include patterns, {len(excludes)} exclude patterns")
    
    specs_dir = Path(args.specs_dir)
    filtered_dir = specs_dir / '.filtered'
    filtered_dir.mkdir(exist_ok=True)
    
    kept = 0
    filtered = 0
    
    for spec_path in sorted(specs_dir.glob('*.json')):
        try:
            spec = json.loads(spec_path.read_text(encoding='utf-8'))
            vul_file = spec.get('vul_file', '')
            
            # Check excludes first
            if excludes and matches_patterns(vul_file, excludes):
                shutil.move(str(spec_path), str(filtered_dir / spec_path.name))
                filtered += 1
                continue
            
            # Check includes (if specified, file must match at least one)
            if includes and not matches_patterns(vul_file, includes):
                shutil.move(str(spec_path), str(filtered_dir / spec_path.name))
                filtered += 1
                continue
            
            kept += 1
        except Exception:
            kept += 1  # Keep files we can't parse
    
    print(f"[i] Kept {kept} specs, filtered {filtered} (moved to {filtered_dir})")


if __name__ == '__main__':
    main()
