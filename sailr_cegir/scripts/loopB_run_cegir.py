#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
loopB_run_cegir.py

SAILR: Static-Analysis guided Iterative LLM Refinement of Symbolic-Execution Harnesses.

This script implements the *loop-B* CEGIR-style refinement:

  - Phase S (optional): symbolic/grooming tweaks (currently a no-op placeholder).
  - Phase A: build-to-green for the minimal TU via clang.
    On clang failure:
      * sanitize helper stubs header (remove obviously bogus lines),
      * send the clang errors + relevant code to the LLM,
      * overwrite the TU with the updated code returned by the LLM.

Once the build succeeds, Phase B (KLEE CEGIR) can be added later in a
similar fashion.

We intentionally keep this file self-contained and conservative: no fancy
patch formats, just "rewrite llmse_min_tu.c from the LLM's updated version".
"""

from __future__ import annotations
import argparse
import json
import os
import subprocess
import sys
from pathlib import Path
from typing import List, Dict, Any, Optional

# Reuse your existing LLM utility wrapper
# (this should already exist at project root).
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
try:
    from llm_utils import llm_chat
except ImportError:
    # Fallback stub: this only fails loudly if llm_utils is missing.
    def llm_chat(messages, max_retries: int = 3, backoff_base: float = 3.0):
        raise RuntimeError("llm_utils.llm_chat not found; make sure it's on PYTHONPATH")


# Local helper sanitizer
from .helpers_sanitize import sanitize_helper_stubs_header


def run_cmd(cmd: List[str], cwd: Path | None = None) -> subprocess.CompletedProcess:
    print(f"[RUN] {' '.join(cmd)}")
    return subprocess.run(
        cmd,
        cwd=str(cwd) if cwd is not None else None,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )


def load_json(path: Path) -> Dict[str, Any]:
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def save_json(path: Path, data: Dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)


def load_prompt_messages(prompt_path: Path) -> List[Dict[str, str]]:
    """
    Prompt JSON schema is allowed to vary. We support:
      - {"messages": [ {role, content}, ... ] }
      - {"system": "...", "user": "..."}
    Otherwise we build a default minimal template.
    """
    if not prompt_path.exists():
        return [
            {
                "role": "system",
                "content": "You are an assistant that edits C harnesses so they compile "
                           "cleanly under clang -DKLEE and preserve existing klee_asserts.",
            }
        ]

    try:
        obj = load_json(prompt_path)
    except Exception:
        return [
            {
                "role": "system",
                "content": "You are an assistant that edits C harnesses so they compile "
                           "cleanly under clang -DKLEE and preserve existing klee_asserts.",
            }
        ]

    if isinstance(obj, dict) and "messages" in obj and isinstance(obj["messages"], list):
        return obj["messages"]

    if isinstance(obj, dict) and "system" in obj and "user" in obj:
        return [
            {"role": "system", "content": str(obj["system"])},
            {"role": "user", "content": str(obj["user"])},
        ]

    # Fallback
    return [
        {
            "role": "system",
            "content": "You are an assistant that edits C harnesses so they compile "
                       "cleanly under clang -DKLEE and preserve existing klee_asserts.",
        }
    ]


def extract_code_from_response(text: str) -> Optional[str]:
    """
    Extract C code from an LLM response. We accept several forms:

      ```c
      ...code...
      ```

      ```C
      ...code...
      ```

      ````
      ...code...
      ````
    """
    fences = ["```c", "```C", "```"]
    start_idx = -1
    fence_used = None
    for fence in fences:
        idx = text.find(fence)
        if idx != -1:
            start_idx = idx + len(fence)
            fence_used = fence
            break

    if start_idx == -1:
        # No fence; assume the entire content is code
        return text.strip()

    # Find closing ```
    end_idx = text.find("```", start_idx)
    if end_idx == -1:
        return text[start_idx:].strip()

    return text[start_idx:end_idx].strip()


def build_clang_cmd(work_dir: Path, tu_path: Path, out_bc: Path) -> List[str]:
    """
    Construct the clang command used for the minimal TU.

    You can customize include paths / flags here if needed.
    """
    return [
        "clang",
        "-emit-llvm",
        "-c",
        "-I.",
        "-Iout/build",
        "-Iout/build/klee",
        "-g",
        "-O0",
        "-DKLEE",
        "-D_FORTIFY_SOURCE=0",
        str(tu_path),
        "-o",
        str(out_bc),
    ]


def do_phase_S_symbolic_stub(plan: Dict[str, Any], prompt_path: Path, work_dir: Path) -> None:
    """
    Placeholder for Stage S (symbolic/grooming tweaks).

    For now, we *do not* modify any files here; we just log that Stage S is a no-op.
    You can extend this later if you want LLM-driven grooming before the build loop.
    """
    print("[S] Stage S (symbolic/grooming) is currently a no-op.")


def do_phase_A_build_to_green(
    plan: Dict[str, Any],
    prompt_path: Path,
    work_dir: Path,
    max_a: int,
    timeout: int,
) -> bool:
    """
    Phase A: compile-to-green using clang with iterative LLM refinement.

    Returns True if a green build was achieved, False otherwise.
    """
    tu_rel = plan.get("instrumented_tu", "out/build/instrumented/llmse_min_tu.c")
    tu_path = (work_dir / tu_rel).resolve()
    bc_path = (work_dir / "out/build/linked.bc").resolve()
    helper_header = (work_dir / "out/build/instrumented/llmse_helper_stubs.h").resolve()

    prompt_messages_base = load_prompt_messages(prompt_path)

    for i in range(max_a):
        print(f"[A] Iteration A{i:03d} starting...")

        # First sanitize helper stubs header to remove obviously bogus lines
        if helper_header.exists():
            sanitize_helper_stubs_header(str(helper_header))

        # Build
        cmd = build_clang_cmd(work_dir, tu_path, bc_path)
        proc = run_cmd(cmd, cwd=work_dir)

        if proc.returncode == 0:
            print(f"[A] Build succeeded at A{i:03d}.")
            return True

        print(f"[A] Build failed at A{i:03d} (ret={proc.returncode}).")
        stderr = proc.stderr
        stdout = proc.stdout

        # If this is the last attempt, just log and bail
        if i == max_a - 1:
            print("[A] Reached max_a without a green build.")
            print("[A] Final clang stderr:")
            print(stderr)
            return False

        # Read current TU (and optionally helper stubs) to give context to LLM
        try:
            tu_text = tu_path.read_text(encoding="utf-8", errors="ignore")
        except Exception as e:
            print(f"[A] ERROR: failed to read TU {tu_path}: {e}", file=sys.stderr)
            return False

        helper_text = ""
        if helper_header.exists():
            try:
                helper_text = helper_header.read_text(encoding="utf-8", errors="ignore")
            except Exception:
                helper_text = ""

        # Prepare messages
        messages = list(prompt_messages_base)  # copy
        messages.append(
            {
                "role": "user",
                "content": (
                    "You are helping fix C harness code so it compiles cleanly under "
                    "clang -DKLEE without warnings that turn into errors.\n\n"
                    "Below is the current clang build command and its stderr output, "
                    "followed by the current contents of the harness translation unit "
                    "`llmse_min_tu.c` and its helper stub header.\n\n"
                    "Your job:\n"
                    "  * Fix only the *build* issues (unknown types, bad top-level "
                    "    statements, missing includes, etc.),\n"
                    "  * Preserve existing klee_asserts and instrumentation, and\n"
                    "  * Return the *entire updated C file* for llmse_min_tu.c "
                    "    enclosed in a ```c fenced block.\n\n"
                    "Do NOT invent new business logic; only add safe stubs, "
                    "forward declarations, or includes as needed.\n\n"
                    f"=== clang stderr (attempt A{i:03d}) ===\n"
                    f"{stderr}\n"
                    "=== clang stdout ===\n"
                    f"{stdout}\n"
                    "=== current llmse_min_tu.c ===\n"
                    "```c\n"
                    f"{tu_text}\n"
                    "```\n"
                    "=== helper stubs header (for context only; edit is optional) ===\n"
                    "```c\n"
                    f"{helper_text}\n"
                    "```"
                ),
            }
        )

        # Call LLM
        print("[A] Calling LLM for build refinement...")
        try:
            resp = llm_chat(messages)
        except Exception as e:
            print(f"[A] ERROR: llm_chat failed: {e}", file=sys.stderr)
            return False

        # OpenAI / DeepSeek-like response: resp["choices"][0]["message"]["content"]
        if isinstance(resp, dict) and "choices" in resp:
            content = resp["choices"][0]["message"]["content"]
        else:
            # If your llm_chat wrapper returns content directly, support that as well.
            content = str(resp)

        updated_code = extract_code_from_response(content)
        if not updated_code:
            print("[A] WARNING: LLM response did not contain any extractable code; "
                  "skipping update for this iteration.")
            continue

        # Write updated TU
        try:
            tu_path.write_text(updated_code + "\n", encoding="utf-8")
            print(f"[A] Applied LLM update to {tu_path}")
        except Exception as e:
            print(f"[A] ERROR: failed to write updated TU: {e}", file=sys.stderr)
            return False

    return False


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser(
        description="SAILR loop-B CEGIR driver: iterative LLM refinement for clang build + (future) KLEE."
    )
    ap.add_argument("--plan", required=True, help="Path to SAILR plan JSON (per-spec).")
    ap.add_argument("--prompt", required=False, default=None,
                    help="Path to prompt JSON saved in prompts/ (optional).")
    ap.add_argument("--spec", required=False, default=None,
                    help="Static-analysis spec JSON (optional, currently unused).")
    ap.add_argument("--settings", required=False, default=None,
                    help="Global settings YAML/JSON (optional; env usually suffices).")
    ap.add_argument("--max_a", type=int, default=8,
                    help="Max iterations for Phase A (build-to-green).")
    ap.add_argument("--max_b", type=int, default=12,
                    help="Max iterations for Phase B (KLEE CEGIR) [reserved].")
    ap.add_argument("--timeout", type=int, default=300,
                    help="Per-iteration timeout in seconds (currently informational).")
    ap.add_argument("--work-dir", required=False, default=".",
                    help="Working directory containing out/build/... (default: .)")
    return ap.parse_args()


def main() -> None:
    args = parse_args()

    work_dir = Path(args.work_dir).resolve()
    plan_path = work_dir / args.plan
    prompt_path = work_dir / args.prompt if args.prompt else work_dir / "out/prompts/dummy_prompt.json"

    print(f"[i] loopB_run_cegir starting with:")
    print(f"    work_dir   = {work_dir}")
    print(f"    plan       = {plan_path}")
    print(f"    prompt     = {prompt_path if prompt_path.exists() else '(none / missing)'}")
    print(f"    max_a      = {args.max_a}")
    print(f"    max_b      = {args.max_b}")
    print(f"    timeout    = {args.timeout}")

    if not plan_path.exists():
        print(f"[!] Plan JSON not found: {plan_path}", file=sys.stderr)
        sys.exit(1)

    plan = load_json(plan_path)

    # Phase S: currently a no-op (just logging). Can be extended.
    do_phase_S_symbolic_stub(plan, prompt_path, work_dir)

    # Phase A: build-to-green with LLM refinement
    ok = do_phase_A_build_to_green(plan, prompt_path, work_dir, args.max_a, args.timeout)
    if not ok:
        print("[!] Bootstrap Phase A did not reach a green build.")
        sys.exit(1)

    # Phase B: KLEE CEGIR can be implemented later. For now we just stop here.
    print("[i] loopB_run_cegir completed Phase A successfully (green build).")
    sys.exit(0)


if __name__ == "__main__":
    main()
