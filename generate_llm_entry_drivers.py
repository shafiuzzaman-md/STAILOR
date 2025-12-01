#!/usr/bin/env python3
"""
generate_llm_entry_drivers.py

LLM Harness (entrypoint-only):

For each spec:
  specs/<project_name>/<SPEC_ID>.json

We expect the spec to contain:
  - "entrypoint": name of entry function
  - "file" (or "source_file"/"filename"): path to the C file (relative to --src-root)

We generate a driver at:
  drivers/llm_entry/<project_name>/<SPEC_ID>.c

The LLM:
  - sees the prompt from prompts/llm_entry_harness.prompt
  - plus metadata (entrypoint name, source path)
  - plus the full/truncated C source
  - returns ONLY a main() harness (no includes)

The script then wraps that harness with:
  #include "<SRC_BASE>"
"""

from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
from typing import Optional

from openai import OpenAI


# ---------- API helpers ----------

def pick_api_key() -> str:
    api_key = os.environ.get("OPENAI_API_KEY") or os.environ.get("DEEPSEEK_API_KEY")
    if not api_key:
        raise SystemExit("No API key found. Set OPENAI_API_KEY or DEEPSEEK_API_KEY.")
    return api_key


def load_client(api_base: Optional[str]) -> OpenAI:
    api_key = pick_api_key()
    if api_base:
        return OpenAI(api_key=api_key, base_url=api_base)
    return OpenAI(api_key=api_key)


# ---------- prompt construction ----------

def build_harness_prompt(
    template_text: str,
    src_rel: str,
    entrypoint: str,
    src_code: str,
) -> str:
    """
    Build the user prompt for the LLM.

    We do NOT use .format() on template_text, to avoid brace issues.
    Instead we append a clear "CONTEXT" section with the metadata and code.
    """
    return (
        template_text
        + "\n\n==================== CONTEXT ====================\n\n"
        + f"Entry function name: {entrypoint}\n"
        + f"Source file (relative): {src_rel}\n\n"
        + "The harness C file will start with a line like:\n\n"
        + f'    #include "{Path(src_rel).name}"\n\n'
        + "Therefore:\n"
        + f"  - Do NOT write any #include lines.\n"
        + f"  - Do NOT forward-declare {entrypoint}; it is in the included file.\n\n"
        + f"Below is the full C source that defines `{entrypoint}`:\n\n"
        + "```c\n"
        + src_code
        + "\n```\n"
    )


def call_llm_for_harness(
    client: OpenAI,
    model: str,
    prompt: str,
) -> str:
    resp = client.chat.completions.create(
        model=model,
        temperature=0.0,
        messages=[
            {
                "role": "system",
                "content": (
                    "You are a precise C and KLEE harness assistant. "
                    "Always respond with valid, compilable C code and "
                    "follow the user instructions exactly."
                ),
            },
            {
                "role": "user",
                "content": prompt,
            },
        ],
    )
    content = resp.choices[0].message.content or ""
    code = content.strip()

    # If the model accidentally wrapped in ``` fences, strip them.
    if code.startswith("```"):
        lines = code.splitlines()
        # drop first line (``` or ```c) and any trailing ```
        if lines:
            lines = lines[1:]
        if lines and lines[-1].strip().startswith("```"):
            lines = lines[:-1]
        code = "\n".join(lines)

    return code.strip()


# ---------- main ----------

def main() -> None:
    ap = argparse.ArgumentParser(
        description="Generate LLM entrypoint-only harness drivers for all specs."
    )
    ap.add_argument(
        "--project-name",
        required=True,
        help="Project name (used in driver path), e.g. libxml2_62911_vul",
    )
    ap.add_argument(
        "--src-root",
        required=True,
        help="Root of project sources; spec file paths are relative to this.",
    )
    ap.add_argument(
        "--spec-dir",
        required=True,
        help="Directory containing *.json specs.",
    )
    ap.add_argument(
        "--model",
        required=True,
        help="LLM model name, e.g. deepseek-chat or gpt-4.1-mini.",
    )
    ap.add_argument(
        "--api-base",
        default=None,
        help="Optional API base URL, e.g. https://api.deepseek.com",
    )
    ap.add_argument(
        "--prompt-file",
        default="prompts/llm_entry_harness.prompt",
        help="Path to harness prompt template (default: prompts/llm_entry_harness.prompt)",
    )
    ap.add_argument(
        "--max-bytes",
        type=int,
        default=40000,
        help="Truncate source file to this many bytes for the prompt (default: 40000).",
    )
    ap.add_argument(
        "--overwrite",
        action="store_true",
        help="Overwrite existing drivers if they exist; otherwise skip.",
    )
    args = ap.parse_args()

    project_name = args.project_name
    src_root = Path(args.src_root)
    spec_dir = Path(args.spec_dir)
    prompt_path = Path(args.prompt_file)

    if not src_root.is_dir():
        raise SystemExit(f"Source root not found: {src_root}")
    if not spec_dir.is_dir():
        raise SystemExit(f"Spec dir not found: {spec_dir}")
    if not prompt_path.is_file():
        raise SystemExit(f"Prompt file not found: {prompt_path}")

    template_text = prompt_path.read_text(encoding="utf-8")

    client = load_client(args.api_base)

    specs = sorted(spec_dir.glob("*.json"))
    if not specs:
        raise SystemExit(f"No *.json specs found in {spec_dir}")

    mode = "llm_entry"
    driver_root = Path("drivers") / mode / project_name
    driver_root.mkdir(parents=True, exist_ok=True)

    print(f"[i] MODE         = {mode}")
    print(f"[i] PROJECT_NAME = {project_name}")
    print(f"[i] SRC_ROOT     = {src_root}")
    print(f"[i] SPEC_DIR     = {spec_dir}")
    print(f"[i] DRIVER_ROOT  = {driver_root}")
    print(f"[i] Specs found  = {len(specs)}")

    generated = 0
    skipped_no_entry = 0
    skipped_no_file = 0
    skipped_existing = 0
    errors = 0

    for spec_path in specs:
        spec_basename = spec_path.name
        spec_id = spec_basename[:-5] if spec_basename.endswith(".json") else spec_basename

        print(f"\n[i] Spec: {spec_basename} (SPEC_ID={spec_id})")

        with spec_path.open("r", encoding="utf-8") as f:
            spec = json.load(f)

        entrypoint = (
            spec.get("entrypoint")
            or spec.get("entry_function")
            or spec.get("entry")
            or spec.get("entry_func")
        )
        if not entrypoint:
            print("  [skip] no entrypoint in spec; run llm_infer_entrypoints.py first.")
            skipped_no_entry += 1
            continue

        src_rel = spec.get("file") or spec.get("source_file") or spec.get("filename")
        if not src_rel:
            print("  [skip] spec has no file/source_file/filename")
            skipped_no_file += 1
            continue

        src_path = src_root / src_rel
        if not src_path.is_file():
            print(f"  [skip] source file not found: {src_path}")
            skipped_no_file += 1
            continue

        driver_path = driver_root / f"{spec_id}.c"
        if driver_path.exists() and not args.overwrite:
            print(f"  [skip] driver already exists (use --overwrite to regenerate): {driver_path}")
            skipped_existing += 1
            continue

        src_bytes = src_path.read_bytes()
        if len(src_bytes) > args.max_bytes:
            print(f"  [info] Truncating source file to {args.max_bytes} bytes for prompt")
            src_bytes = src_bytes[: args.max_bytes]
        src_text = src_bytes.decode("utf-8", errors="replace")

        try:
            prompt = build_harness_prompt(
                template_text=template_text,
                src_rel=str(src_rel),
                entrypoint=str(entrypoint),
                src_code=src_text,
            )
            harness_body = call_llm_for_harness(client, args.model, prompt)

            print(f"  [gen] Writing driver: {driver_path}")
            with driver_path.open("w", encoding="utf-8") as out:
                out.write(
f"""// Auto-generated LLM_ENTRY driver
// Project   : {project_name}
// Spec ID   : {spec_id}
// Spec file : {spec_path}
// Source    : {src_rel}
// Entry     : {entrypoint}

#include "{Path(src_rel).name}"

{harness_body}
"""
                )
            generated += 1
        except Exception as e:
            print(f"  [ERR] LLM harness generation failed: {e!r}")
            errors += 1

    print("\n[done] LLM entry harness generation summary:")
    print(f"  Specs total           : {len(specs)}")
    print(f"  Drivers generated     : {generated}")
    print(f"  Skipped (no entry)    : {skipped_no_entry}")
    print(f"  Skipped (no file)     : {skipped_no_file}")
    print(f"  Skipped (existing)    : {skipped_existing}")
    print(f"  Errors                : {errors}")


if __name__ == "__main__":
    main()
