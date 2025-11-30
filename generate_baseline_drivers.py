#!/usr/bin/env python3
"""
generate_baseline_drivers.py

Generate baseline KLEE driver C files for each spec using a *single-shot* LLM call.

Modes (all optional; can choose subset via --modes):
  - manual_entry  -> "Manual Harness (entrypoint)"
  - sa_manual     -> "SA driven Manual Harness (entrypoint+target+assertion)"
  - llm_entry     -> "LLM Harness (entrypoint)"
  - sa_llm        -> "SA driven LLM Harness (entrypoint+target+assertion)"

Drivers are written to:
  drivers/<mode>/<project_name>/<SPEC_ID>.c

where SPEC_ID is the spec filename without .json,
e.g., 000_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5
"""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import re
import textwrap

from openai import OpenAI


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser()
    p.add_argument("--project-name", required=True,
                   help="Project name, e.g., libxml2_62911_vul")
    p.add_argument("--src-root", required=True,
                   help="Source root for the project (for including C files)")
    p.add_argument("--spec-dir", required=True,
                   help="Directory containing spec JSONs")
    p.add_argument("--modes", default="manual_entry,sa_manual,llm_entry,sa_llm",
                   help="Comma-separated subset of modes to generate "
                        "(manual_entry,sa_manual,llm_entry,sa_llm)")
    p.add_argument("--model", required=True,
                   help="LLM model name, e.g., deepseek-chat or gpt-4.1-mini")
    p.add_argument("--api-base", default=None,
                   help="Optional custom API base (e.g. https://api.deepseek.com)")
    p.add_argument("--api-key-env", default=None,
                   help="Env var name for API key (default: OPENAI_API_KEY or DEEPSEEK_API_KEY)")
    p.add_argument("--ctx-lines", type=int, default=80,
                   help="Number of lines of context around the target line")
    p.add_argument("--overwrite", action="store_true",
                   help="Overwrite existing driver files")
    return p.parse_args()


def load_api_client(args: argparse.Namespace) -> OpenAI:
    # Decide which env var to use
    key_env_candidates = []
    if args.api_key_env:
        key_env_candidates.append(args.api_key_env)
    key_env_candidates.extend(["OPENAI_API_KEY", "DEEPSEEK_API_KEY"])

    api_key = None
    for env_name in key_env_candidates:
        api_key = os.getenv(env_name)
        if api_key:
            break

    if not api_key:
        raise SystemExit(
            "ERROR: No API key found. Please set OPENAI_API_KEY or DEEPSEEK_API_KEY "
            "or pass --api-key-env pointing to an env var that holds the key."
        )

    client_kwargs = {"api_key": api_key}
    if args.api_base:
        # For DeepSeek or other compatible APIs
        client_kwargs["base_url"] = args.api_base

    return OpenAI(**client_kwargs)


def infer_entry_fn(spec: dict) -> str | None:
    # Try a few reasonable keys
    for key in ["entry_function", "entrypoint", "entry_func", "function"]:
        if key in spec and spec[key]:
            return spec[key]
    return None


def infer_vul_file(spec: dict) -> str | None:
    # Many SAILR specs use "file"
    for key in ["file", "source_file", "filename"]:
        if key in spec and spec[key]:
            return spec[key]
    return None


def infer_line(spec: dict) -> int | None:
    for key in ["line", "lineno", "target_line"]:
        if key in spec and spec[key]:
            return int(spec[key])
    return None


def infer_assert_template(spec: dict) -> str | None:
    for key in ["assert_template", "assertion", "template"]:
        if key in spec and spec[key]:
            return str(spec[key])
    return None


def extract_code_snippet(path: Path, line: int, ctx: int) -> str:
    if not path.is_file():
        return f"// WARNING: source file {path} not found."

    lines = path.read_text(errors="ignore").splitlines()
    idx = max(0, line - 1 - ctx)
    jdx = min(len(lines), line - 1 + ctx)
    snippet = []
    for i in range(idx, jdx):
        prefix = ">> " if (i + 1) == line else "   "
        snippet.append(f"{prefix}{i+1:5d}: {lines[i]}")
    return "\n".join(snippet)


def build_system_prompt() -> str:
    return textwrap.dedent(
        """\
        You are an expert in symbolic execution and KLEE driver generation.
        Your task: given some C code context and analysis metadata, write a single C file
        that acts as a standalone KLEE driver (symbolic harness).

        Requirements:
          - Output ONLY C code. No markdown, no ``` fences.
          - Include the original project code by #include-ing the relevant .c/.h file(s)
            relative to the provided SRC_ROOT. Assume the build system will add -I flags.
          - Include <klee/klee.h>.
          - Provide a main() function that:
              * Declares and initializes any inputs (symbolic or concrete).
              * Calls the specified entry function exactly once.
          - Prefer simple, robust harnesses over ultra-precise ones:
              * Use klee_make_symbolic buffers where necessary.
              * If exact struct definitions are too complex, stub or approximate them
                with fixed-size arrays and comments.
          - The generated driver must be valid C, compiling with clang-14.
        """
    )


def build_user_prompt(mode: str,
                      project_name: str,
                      spec_id: str,
                      src_root: Path,
                      spec: dict,
                      code_snippet: str) -> str:
    entry_fn = infer_entry_fn(spec) or "<UNKNOWN_ENTRY_FN>"
    vul_file = infer_vul_file(spec) or "<UNKNOWN_FILE>"
    line = infer_line(spec)
    rule_id = spec.get("rule_id") or spec.get("rule") or spec.get("id") or "<unknown-rule>"
    assert_template = infer_assert_template(spec)

    mode_desc = {
        "manual_entry": "Manual Harness (entrypoint only, no explicit assertion).",
        "sa_manual": "SA-driven Manual Harness (entrypoint + target + assertion).",
        "llm_entry": "LLM Harness (entrypoint only, no explicit assertion).",
        "sa_llm": "SA-driven LLM Harness (entrypoint + target + assertion).",
    }.get(mode, mode)

    explanation = [
        f"Project: {project_name}",
        f"SPEC_ID: {spec_id}",
        f"Baseline mode: {mode}  ({mode_desc})",
        "",
        f"Source root (for includes): {src_root}",
        f"Vulnerability file: {vul_file}",
    ]
    if line is not None:
        explanation.append(f"Suspicious line: {vul_file}:{line}")
    explanation.append(f"Rule id: {rule_id}")
    explanation.append(f"Entry function: {entry_fn}")
    if assert_template:
        explanation.append(f"Suggested assertion template: {assert_template}")
    explanation.append("")
    explanation.append("Relevant code snippet (annotated):")
    explanation.append(code_snippet)
    explanation.append("")
    explanation.append("Now synthesize a KLEE driver C file as described earlier.")
    explanation.append("")
    explanation.append("Mode-specific constraints:")

    if mode in ("manual_entry", "llm_entry"):
        explanation.append(
            "- Treat this as an entrypoint-only harness: focus on calling the entry "
            "function meaningfully with symbolic arguments, but you do NOT need to "
            "place any KLEE assertions for the vulnerability."
        )
    else:  # SA-driven modes
        explanation.append(
            "- This is a *static-analysis driven* harness: use the suspicious line "
            "and rule id to place a KLEE assertion that will fail when the "
            "potential vulnerability is triggered.\n"
            "- The assertion should be close to the reported line and based on "
            "program variables (e.g., index bounds, length vs buffer size, "
            "non-nullness), not a constant magic value."
        )

    explanation.append("")
    explanation.append(
        "Return ONLY the final C driver source, no comments outside the code, "
        "no markdown, no explanatory prose."
    )

    return "\n".join(explanation)


def call_llm(client: OpenAI, model: str, system_prompt: str, user_prompt: str) -> str:
    resp = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ],
        temperature=0.2,
    )
    content = resp.choices[0].message.content or ""
    # If the model wraps in ``` fences, strip them.
    m = re.search(r"```(?:c|C|cpp|CPP)?\s*(.*?)```", content, re.DOTALL)
    if m:
        return m.group(1).strip()
    return content.strip()


def main():
    args = parse_args()
    client = load_api_client(args)

    spec_dir = Path(args.spec_dir)
    src_root = Path(args.src_root)

    if not spec_dir.is_dir():
        raise SystemExit(f"Spec dir not found: {spec_dir}")
    if not src_root.is_dir():
        raise SystemExit(f"SRC_ROOT not found: {src_root}")

    modes = [m.strip() for m in args.modes.split(",") if m.strip()]
    system_prompt = build_system_prompt()

    spec_files = sorted(spec_dir.glob("*.json"))
    if not spec_files:
        print(f"[WARN] No specs found in {spec_dir}")
        return

    for spec_path in spec_files:
        spec_id = spec_path.stem
        print(f"\n=== SPEC {spec_id} ({spec_path}) ===")

        spec = json.loads(spec_path.read_text())
        vul_file = infer_vul_file(spec)
        line = infer_line(spec)

        if not vul_file or line is None:
            print(f"[SKIP] missing vul_file/line in spec {spec_path}")
            continue

        src_path = src_root / vul_file
        snippet = extract_code_snippet(src_path, line, ctx=args.ctx_lines)

        for mode in modes:
            out_path = Path("drivers") / mode / args.project_name / f"{spec_id}.c"
            out_path.parent.mkdir(parents=True, exist_ok=True)

            if out_path.exists() and not args.overwrite:
                print(f"[skip] {mode}: already exists ({out_path})")
                continue

            print(f"[gen]  {mode} -> {out_path}")
            user_prompt = build_user_prompt(
                mode=mode,
                project_name=args.project_name,
                spec_id=spec_id,
                src_root=src_root,
                spec=spec,
                code_snippet=snippet,
            )

            try:
                code = call_llm(client, args.model, system_prompt, user_prompt)
            except Exception as e:
                print(f"[ERROR] LLM call failed for {mode}, spec={spec_id}: {e}")
                continue

            out_path.write_text(code)
            print(f"[done] wrote {out_path}")

    print("\n[done] Baseline driver generation finished.")


if __name__ == "__main__":
    main()
