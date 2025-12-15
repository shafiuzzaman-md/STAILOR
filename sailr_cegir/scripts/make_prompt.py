#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
make_prompt.py

Responsible for generating spec-specific system prompts.
It reads base templates, injects "Mission Critical" context (Target File/Line),
and returns/saves the finalized prompt text.
"""

import textwrap
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
TEMPLATE_DIR = SCRIPT_DIR.parent / "prompt_template"

def inject_mission_context(raw: str, vul_file: str, vul_line: int, rule_id: str, vul_statement: str) -> str:
    header = textwrap.dedent(f"""
    MISSION CRITICAL: TARGET LOCK
    =============================
    TARGET FILE: {vul_file}
    TARGET LINE: {vul_line}
    RULE ID:     {rule_id}
    VULNERABLE STATEMENT (Target for Assertions):
    {vul_statement}

    1. Assertions (BUG_ASSERT/REACH_ASSERT) MUST be placed IMMEDIATELY BEFORE this statement.
    2. Focus ONLY on the function containing this line.
    
    END MISSION CONTEXT
    ===================
    """)
    return header + "\n" + raw

def generate_prompts(
    vul_file: str,
    vul_line: int,
    rule_id: str,
    vul_statement: str,
    output_dir: Path | None = None
) -> dict[str, str]:
    """
    Reads templates, injects context, and optionally writes to output_dir.
    Returns a dictionary mapping 'role' -> 'prompt_content'.
    """
    
    # --- FIX: Removed "assert_contract": "assertion_contract.txt" ---
    templates = {
        "planner": "planner.txt",
        "builder": "builder.txt",
        "refiner": "klee_refiner.txt"
    }

    results = {}
    
    if not TEMPLATE_DIR.exists():
        raise FileNotFoundError(
            f"[!] Prompt template directory missing: {TEMPLATE_DIR}\n"
            f"    Expected location: SAILR/sailr_cegir/prompt_template"
        )

    for key, fname in templates.items():
        src = TEMPLATE_DIR / fname
        if not src.exists():
            raise FileNotFoundError(f"[!] Template file not found: {src}")
            
        raw = src.read_text(encoding="utf-8")
        final = inject_mission_context(raw, vul_file, vul_line, rule_id, vul_statement)
        results[key] = final
        
        if output_dir:
            output_dir.mkdir(parents=True, exist_ok=True)
            (output_dir / f"system_{key}.txt").write_text(final, encoding="utf-8")
            
    return results