#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
make_prompt.py

Responsible for generating spec-specific system prompts.
UPDATED: Injects Mission Context, Assertion Ordering, and Rule-Specific Guidance.
"""

import textwrap
import yaml
import re
from pathlib import Path

# Robust path resolution
SCRIPT_DIR = Path(__file__).resolve().parent
TEMPLATE_DIR = SCRIPT_DIR.parent / "prompt_template"
RULES_YAML_PATH = SCRIPT_DIR / "rules.yaml"

def load_rule_guidance(rule_id: str) -> str:
    """
    Reads rules.yaml and extracts prompt_guidance for the matching rule.
    """
    if not RULES_YAML_PATH.exists():
        return ""
    
    try:
        with open(RULES_YAML_PATH, "r") as f:
            data = yaml.safe_load(f)
            
        for rule in data.get("rules", []):
            if re.search(rule['id_pattern'], rule_id):
                guidance = rule.get("prompt_guidance", {})
                sections = []
                
                if "construction" in guidance:
                    sections.append("ARCHITECTURAL GUIDANCE:\n" + 
                                    "\n".join(f"- {item}" for item in guidance["construction"]))
                if "planning" in guidance:
                    sections.append("PLANNING TIPS:\n" + 
                                    "\n".join(f"- {item}" for item in guidance["planning"]))
                if "assertion" in guidance:
                    sections.append("STRATEGIC ASSERTION HINTS:\n" + 
                                    "\n".join(f"- {item}" for item in guidance["assertion"]))
                
                if sections:
                    return "\n\n" + "\n\n".join(sections) + "\n"
    except Exception:
        pass
    return ""

def inject_mission_context(raw: str, vul_file: str, vul_line: int, rule_id: str, vul_statement: str) -> str:
    """
    Injects the unified 'Target Lock' header and Assumption Invariant rules.
    """
    rule_advice = load_rule_guidance(rule_id)

    header = textwrap.dedent(f"""
    MISSION CRITICAL: TARGET LOCK
    =============================
    1. TARGET FILE:      {vul_file}
    2. TARGET LINE:      {vul_line}
    3. RULE ID:          {rule_id}
    4. TARGET STATEMENT: {vul_statement}

    STRICT OPERATIONAL PROTOCOL:
    ----------------------------
    A. **Assertion Order:** `BUG_ASSERT` MUST come BEFORE `REACH_ASSERT`.
    B. **Placement:** Assertions MUST be placed IMMEDIATELY BEFORE the Target Statement[cite: 24, 35].
    C. **Assumption Invariants:** Steering/Environment assumptions (klee_assume) MUST be 
       identical for both reachability and bug verification[cite: 36, 37]. 
       Do NOT relax constraints solely to trigger a failure.
    D. **Vulnerability Variables:** Lengths/indices MUST be fully symbolic and unconstrained[cite: 17, 39].
    """)
    
    if rule_advice:
        header += rule_advice
        
    header += textwrap.dedent("""
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
    templates = {
        "planner": "planner.txt",
        "builder": "klee_builder.txt",
    }
    
    results = {}
    if not TEMPLATE_DIR.exists():
        raise FileNotFoundError(f"Template dir missing: {TEMPLATE_DIR}")

    for key, fname in templates.items():
        src = TEMPLATE_DIR / fname
        if not src.exists():
            continue
            
        raw = src.read_text(encoding="utf-8")
        final = inject_mission_context(raw, vul_file, vul_line, rule_id, vul_statement)
        results[key] = final
        
        if output_dir:
            output_dir.mkdir(parents=True, exist_ok=True)
            (output_dir / f"system_{key}.txt").write_text(final, encoding="utf-8")
            
    return results