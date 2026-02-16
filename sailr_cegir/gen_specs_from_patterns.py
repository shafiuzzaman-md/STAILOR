#!/usr/bin/env python3
"""gen_specs_from_patterns.py — Generate vulnerability specs from pattern descriptions.

Reads vuln_patterns.txt, analyzes matching source files with LLM,
and generates spec JSONs for STAILOR to validate.

Usage:
    python3 gen_specs_from_patterns.py \
        --patterns se_config/my_project/vuln_patterns.txt \
        --src-root dataset/62911/libxml2_62911_vul \
        --out specs/libxml2_62911_vul/ \
        --prefix pattern_
"""
import argparse, json, os, re, glob, sys
from pathlib import Path
from typing import List, Dict, Optional

def parse_patterns(patterns_file: str) -> List[Dict]:
    """Parse vuln_patterns.txt into structured pattern dicts."""
    patterns = []
    current = None
    
    with open(patterns_file, 'r') as f:
        for line in f:
            line = line.rstrip()
            if line.startswith('#') or not line.strip():
                continue
            
            if line.startswith('PATTERN:'):
                if current:
                    patterns.append(current)
                current = {
                    'description': line[len('PATTERN:'):].strip(),
                    'files': [],
                    'cwe': '',
                    'hint': '',
                }
            elif current and line.strip().startswith('FILES:'):
                files_str = line.strip()[len('FILES:'):].strip()
                current['files'] = [f.strip() for f in files_str.split(',')]
            elif current and line.strip().startswith('CWE:'):
                current['cwe'] = line.strip()[len('CWE:'):].strip()
            elif current and line.strip().startswith('HINT:'):
                current['hint'] = line.strip()[len('HINT:'):].strip()
            elif current and current.get('hint') is not None and line.startswith('  '):
                # Continuation of HINT (indented lines)
                current['hint'] += ' ' + line.strip()
    
    if current:
        patterns.append(current)
    
    return patterns


def find_matching_files(src_root: str, file_patterns: List[str]) -> List[Path]:
    """Find source files matching the given glob patterns."""
    matches = []
    root = Path(src_root)
    
    for pattern in file_patterns:
        # Try as-is
        found = list(root.rglob(pattern))
        if not found:
            # Try with .c extension
            found = list(root.rglob(f"**/{pattern}"))
        matches.extend(found)
    
    # Deduplicate and filter to .c/.h files
    seen = set()
    result = []
    for f in matches:
        if f.suffix in ('.c', '.h') and str(f) not in seen:
            seen.add(str(f))
            result.append(f)
    
    return sorted(result)


def generate_specs_with_llm(pattern: Dict, source_files: List[Path], src_root: str) -> List[Dict]:
    """Use LLM to analyze source files and generate spec JSONs for a vulnerability pattern.
    
    This calls the same LLM configured via LLM_API_KEY/LLM_API_BASE/LLM_MODEL env vars.
    """
    try:
        import openai
    except ImportError:
        print("  [!] openai package not installed, skipping LLM-based generation")
        return []
    
    api_key = os.environ.get("LLM_API_KEY", "")
    api_base = os.environ.get("LLM_API_BASE", "")
    model = os.environ.get("LLM_MODEL", "")
    
    if not api_key or not model:
        print("  [!] LLM_API_KEY and LLM_MODEL required for pattern-based spec generation")
        return []
    
    # Build source context (first 500 lines of each file)
    source_context = ""
    for sf in source_files[:5]:  # Limit to 5 files to fit context
        try:
            lines = sf.read_text(errors='replace').splitlines()[:500]
            rel_path = sf.relative_to(src_root) if sf.is_relative_to(src_root) else sf.name
            source_context += f"\n--- {rel_path} ({len(lines)} lines shown) ---\n"
            source_context += '\n'.join(f"{i+1}: {l}" for i, l in enumerate(lines))
            source_context += '\n'
        except Exception:
            pass
    
    system_prompt = f"""You are a vulnerability researcher analyzing C source code.

Given a vulnerability PATTERN description and source code, identify specific locations 
where this pattern occurs. For each potential vulnerability, output a JSON spec.

PATTERN: {pattern['description']}
CWE: {pattern.get('cwe', 'unknown')}
HINT: {pattern.get('hint', '')}

Respond with a JSON array of specs. Each spec must have:
- "vul_file": filename (basename only, e.g. "parser.c")
- "vul_line": line number of the vulnerable statement
- "vul_func": function containing the vulnerability
- "entry_func": best public entry point to reach this code
- "cwe_id": "{pattern.get('cwe', '')}"
- "title": short description
- "description": detailed explanation of why this is vulnerable
- "spine": call chain from entry_func to vul_func
- "confidence": "high", "medium", or "low"

Only report real potential vulnerabilities, not theoretical ones.
If no vulnerabilities match, return an empty array [].
Respond ONLY with the JSON array, no other text."""

    client = openai.OpenAI(api_key=api_key, base_url=api_base or None)
    
    try:
        resp = client.chat.completions.create(
            model=model,
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": f"Analyze this source code:\n{source_context[:30000]}"}
            ],
            temperature=0.1,
            max_tokens=4096,
        )
        raw = resp.choices[0].message.content or ""
        
        # Parse JSON array
        clean = raw.strip()
        if '```json' in clean:
            clean = clean.split('```json')[1].split('```')[0]
        elif '```' in clean:
            clean = clean.split('```')[1].split('```')[0]
        
        specs = json.loads(clean.strip())
        if isinstance(specs, dict):
            specs = [specs]
        if not isinstance(specs, list):
            return []
        
        return specs
    except Exception as e:
        print(f"  [!] LLM call failed: {e}")
        return []


def main():
    parser = argparse.ArgumentParser(description="Generate specs from vulnerability patterns")
    parser.add_argument('--patterns', required=True, help='Path to vuln_patterns.txt')
    parser.add_argument('--src-root', required=True, help='Project source root')
    parser.add_argument('--out', required=True, help='Output specs directory')
    parser.add_argument('--prefix', default='pattern_', help='Prefix for generated spec filenames')
    args = parser.parse_args()
    
    patterns = parse_patterns(args.patterns)
    print(f"[i] Parsed {len(patterns)} vulnerability patterns")
    
    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)
    
    total_specs = 0
    for idx, pattern in enumerate(patterns):
        print(f"\n[{idx+1}/{len(patterns)}] Pattern: {pattern['description']}")
        print(f"  CWE: {pattern.get('cwe', '?')} | Files: {', '.join(pattern.get('files', ['*']))}")
        
        # Find matching source files
        file_patterns = pattern.get('files', ['*.c'])
        source_files = find_matching_files(args.src_root, file_patterns)
        
        if not source_files:
            print(f"  [!] No matching source files found")
            continue
        
        print(f"  [i] Found {len(source_files)} matching files")
        
        # Generate specs via LLM
        specs = generate_specs_with_llm(pattern, source_files, args.src_root)
        
        for spec_idx, spec in enumerate(specs):
            # Validate required fields
            if not spec.get('vul_file') or not spec.get('vul_line'):
                print(f"  [!] Skipping incomplete spec: {spec}")
                continue
            
            spec['source'] = 'llm_pattern'
            spec['pattern_description'] = pattern['description']
            
            # Generate filename
            vul_file = spec['vul_file'].replace('/', '_').replace('.', '_')
            vul_line = spec.get('vul_line', 0)
            cwe = spec.get('cwe_id', 'unknown')
            fname = f"{args.prefix}{idx}_{vul_file}_{vul_line}_cwe-{cwe}_{spec_idx}.json"
            
            out_path = out_dir / fname
            out_path.write_text(json.dumps(spec, indent=2), encoding='utf-8')
            print(f"  [+] Generated: {fname} ({spec.get('confidence', '?')} confidence)")
            total_specs += 1
    
    print(f"\n[✓] Generated {total_specs} specs from {len(patterns)} patterns")


if __name__ == '__main__':
    main()
