#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
make_prompt.py

Centralized prompt construction for SAILR-CEGIR.

This module:
  - Loads the prompt templates (planner + builder) from a prompt directory.
  - Injects spec-specific grounding context (file/line/rule/statement).
  - Keeps the *methodology invariants* explicit:
      * Phase I: Frozen Plan (validated once)
      * Phase II: Iterative Refinement (builder cannot change what is checked)
      * Phase III: Validation/replay outside the refinement loop
"""

from __future__ import annotations

import os
from pathlib import Path
from typing import Dict


def _candidate_prompt_dirs() -> list[Path]:
    here = Path(__file__).resolve().parent
    candidates = []

    env_dir = os.environ.get("SAILR_PROMPT_DIR", "").strip()
    if env_dir:
        candidates.append(Path(env_dir).expanduser().resolve())

    # Common layouts
    candidates += [
        (here / "prompt_template").resolve(),
        (here.parent / "prompt_template").resolve(),
        here.resolve(),
    ]
    # Deduplicate while preserving order
    seen = set()
    out = []
    for p in candidates:
        if p in seen:
            continue
        seen.add(p)
        out.append(p)
    return out


def _load_template(name: str) -> str:
    for d in _candidate_prompt_dirs():
        p = d / name
        if p.exists():
            return p.read_text(encoding="utf-8", errors="replace")
    tried = "\n".join(f"  - {d / name}" for d in _candidate_prompt_dirs())
    raise FileNotFoundError(f"Prompt template '{name}' not found. Tried:\n{tried}")


def generate_prompts(
    *,
    vul_file: str,
    vul_line: int,
    rule_id: str,
    vul_statement: str,
    source_root: str,
) -> Dict[str, str]:
    """Return {'planner': <prompt>, 'builder': <prompt>} with spec grounding injected."""
    planner_tpl = _load_template("planner.txt")
    builder_tpl = _load_template("klee_builder.txt")

    grounding = f"""\
SPEC GROUNDING (do not ignore):
- Source root: {source_root}
- Vulnerable file: {vul_file}
- Vulnerable line: {vul_line}
- Rule ID: {rule_id}
- Vulnerable statement (best-effort):
  {vul_statement}
"""

    methodology = """\
METHODOLOGY INVARIANTS (must hold):
- Phase I (Frozen): Produce a single Frozen Plan (entrypoint + assertions + symbolic inputs + call sequence + stubs).
  This plan is validated once against the Plan Contract before any refinement.
- Phase II (Fluid): Refinement may ONLY change *how* to reach the fixed assertions:
    - environment modeling, stubs, assumptions, concrete assignments, path-shaping
  It MUST NOT change:
    - the target file/line, the assertion locations, the bug predicate, or which rule is being checked.
- Phase III: Validation/replay runs *after* refinement (outside the loop) to verify bug reproduction without semantic stubs.
"""

    planner_prompt = f"""{planner_tpl.strip()}\n\n{grounding}\n{methodology}\n\nOUTPUT FORMAT REQUIREMENT:
- Output JSON only (no markdown).
"""

    builder_prompt = f"""{builder_tpl.strip()}\n\n{grounding}\n{methodology}\n\nOUTPUT FORMAT REQUIREMENT:
- Output JSON only with key 'harness' containing the complete C harness (no markdown).
"""

    return {"planner": planner_prompt, "builder": builder_prompt}
