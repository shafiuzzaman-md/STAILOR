#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
make_prompt.py

Responsible for generating spec-specific system prompts.
"""

import textwrap
from pathlib import Path

# Robust path resolution
SCRIPT_DIR = Path(__file__).resolve().parent
TEMPLATE_DIR = SCRIPT_DIR.parent / "prompt_template"

def inject_mission_context(
    raw: str, 
    vul_file: str, 
    vul_line: int, 
    rule_id: str, 
    vul_statement: str,
    source_root: str
) -> str:
    """
    Injects the unified 'Target Lock' header, Assumption Invariants, and LOCATION GROUNDING.
    """
    header = textwrap.dedent(f"""
    MISSION CRITICAL: TARGET LOCK
    =============================
    1. PROJECT ROOT:     {source_root}
    2. TARGET FILE:      {vul_file}
    3. TARGET LINE:      {vul_line}
    4. RULE ID:          {rule_id}
    5. TARGET STATEMENT: {vul_statement}

    STRICT OPERATIONAL PROTOCOL:
    ----------------------------
    A. **Location Grounding (CRITICAL):**
       - You are executing inside a container. The code is located at `PROJECT ROOT`.
       - The `TARGET FILE` path provided above might be an absolute path from a different machine.
       - **RULE:** IGNORE the absolute prefix. Find the file relative to `PROJECT ROOT`.
       - **PROHIBITED:** Do NOT try to access `/mnt/...`, `/home/...`, or `/media/...`. 
       - **REQUIRED:** Use relative paths (e.g., `find . -name filename`).

    B. **Assertion Order:** `BUG_ASSERT` MUST come BEFORE `REACH_ASSERT`.
    C. **Placement:** Assertions MUST be placed IMMEDIATELY BEFORE the Target Statement.
    D. **Assumption Invariants:** Steering/Environment assumptions (klee_assume) MUST be 
       identical for both reachability and bug verification. 
       Do NOT relax constraints solely to trigger a failure.
    E. **Vulnerability Variables:** Lengths/indices MUST be fully symbolic and unconstrained.
    
    END MISSION CONTEXT
    ===================
    """)
    return header + "\n" + raw

def generate_prompts(
    vul_file: str,
    vul_line: int,
    rule_id: str,
    vul_statement: str,
    source_root: str = ".", # Default to current dir if not provided
    output_dir: Path | None = None
) -> dict[str, str]:
    templates = {
        "planner": "planner.txt",
        "builder": "klee_builder.txt",
    }
    
    results = {}
    if not TEMPLATE_DIR.exists():
        # Ideally log a warning here if templates are missing
        pass

    for key, fname in templates.items():
        src = TEMPLATE_DIR / fname
        if not src.exists():
            continue
            
        raw = src.read_text(encoding="utf-8")
        
        # Pass the source_root to the injector
        final = inject_mission_context(
            raw, 
            vul_file, 
            vul_line, 
            rule_id, 
            vul_statement, 
            source_root
        )
        
        results[key] = final
        
        if output_dir:
            output_dir.mkdir(parents=True, exist_ok=True)
            (output_dir / f"system_{key}.txt").write_text(final, encoding="utf-8")
            
    return results