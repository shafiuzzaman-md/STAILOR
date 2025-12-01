#!/usr/bin/env python3
"""
llm_infer_entrypoints.py

Use an LLM to infer symbolic-execution entrypoints for specs that don't
already have an "entrypoint" field.

For each *.json in --spec-dir:
  - load spec
  - if "entrypoint" present and not --overwrite: skip
  - infer source file + line + ruleId
  - read C source from --src-root
  - ask LLM (via external prompt file) which function is the best entrypoint
  - write "entrypoint" back into the spec JSON (in-place)

Environment:
  - Uses OPENAI_API_KEY if set, otherwise DEEPSEEK_API_KEY.
"""

from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
from typing import Optional, Iterable

from openai import OpenAI


def pick_api_key() -> str:
    api_key = os.environ.get("OPENAI_API_KEY") or os.environ.get("DEEPSEEK_API_KEY")
    if not api_key:
        raise SystemExit(
            "No API key found. Set OPENAI_API_KEY or DEEPSEEK_API_KEY in the environment."
        )
    return api_key


def load_client(api_base: Optional[str]) -> OpenAI:
    api_key = pick_api_key()
    if api_base:
        return OpenAI(api_key=api_key, base_url=api_base)
    return OpenAI(api_key=api_key)


def find_field(d: dict, candidates: Iterable[str]) -> Optional[str]:
    for k in candidates:
        if k in d and d[k]:
            return d[k]
    return None


def load_prompt_template(path: Path) -> str:
    if not path.is_file():
        raise SystemExit(f"Prompt template not found: {path}")
    return path.read_text(encoding="utf-8")


def build_prompt(
    prompt_template: str,
    spec: dict,
    src_code: str,
) -> str:
    rule_id = spec.get("ruleId") or spec.get("rule") or "unknown-rule"
    line = (
        spec.get("line")
        or spec.get("startLine")
        or spec.get("location", {}).get("startLine")
        or "unknown"
    )
    file_name = spec.get("file") or spec.get("source_file") or spec.get("filename") or "unknown"

    return prompt_template.format(
        rule_id=rule_id,
        file_name=file_name,
        line=line,
        src_code=src_code,
    )


def call_llm_for_entrypoint(
    client: OpenAI,
    model: str,
    prompt_template: str,
    spec: dict,
    src_code: str,
) -> str:
    prompt = build_prompt(prompt_template, spec, src_code)
    resp = client.chat.completions.create(
        model=model,
        temperature=0.0,
        messages=[
            {
                "role": "system",
                "content": "You are a precise C static-analysis assistant. Always respond with valid JSON.",
            },
            {"role": "user", "content": prompt},
        ],
    )
    content = resp.choices[0].message.content.strip()

    # Try to parse JSON (with a small safety net)
    try:
        data = json.loads(content)
    except json.JSONDecodeError:
        start = content.find("{")
        end = content.rfind("}")
        if start == -1 or end == -1 or end <= start:
            raise ValueError(f"LLM did not return JSON: {content!r}")
        data = json.loads(content[start : end + 1])

    entry = data.get("entrypoint")
    if not entry or not isinstance(entry, str):
        raise ValueError(f"No 'entrypoint' field in LLM response: {data!r}")
    return entry.strip()


def main() -> None:
    ap = argparse.ArgumentParser(
        description="Infer entrypoints for specs using an LLM and write them into the spec JSON."
    )
    ap.add_argument(
        "--spec-dir", required=True, help="Directory containing *.json specs"
    )
    ap.add_argument(
        "--src-root",
        required=True,
        help="Root of project sources (spec file paths are relative to this)",
    )
    ap.add_argument(
        "--model",
        required=True,
        help="Model name (e.g., deepseek-chat or gpt-4.1-mini)",
    )
    ap.add_argument(
        "--api-base",
        default=None,
        help="Optional API base URL (e.g., https://api.deepseek.com)",
    )
    ap.add_argument(
        "--prompt-file",
        default="prompts/entrypoint_prompt.txt",
        help="Path to the prompt template file (default: prompts/entrypoint_prompt.txt)",
    )
    ap.add_argument(
        "--overwrite",
        action="store_true",
        help="If set, overwrite existing 'entrypoint' in specs; otherwise, skip those.",
    )
    ap.add_argument(
        "--max-bytes",
        type=int,
        default=40000,
        help="Truncate source file to this many bytes for the prompt (default: 40000).",
    )

    args = ap.parse_args()

    spec_dir = Path(args.spec_dir)
    src_root = Path(args.src_root)
    prompt_path = Path(args.prompt_file)

    if not spec_dir.is_dir():
        raise SystemExit(f"Spec dir not found: {spec_dir}")
    if not src_root.is_dir():
        raise SystemExit(f"Source root not found: {src_root}")

    prompt_template = load_prompt_template(prompt_path)
    client = load_client(args.api_base)

    specs = sorted(spec_dir.glob("*.json"))
    if not specs:
        raise SystemExit(f"No *.json specs found in {spec_dir}")

    print(f"[i] Found {len(specs)} specs under {spec_dir}")

    updated = 0
    skipped_have_entry = 0
    skipped_missing_file = 0
    errors = 0

    for spec_path in specs:
        print(f"\n[i] Spec: {spec_path.name}")
        with spec_path.open("r", encoding="utf-8") as f:
            spec = json.load(f)

        if "entrypoint" in spec and spec["entrypoint"] and not args.overwrite:
            print("  [skip] entrypoint already present; use --overwrite to recompute.")
            skipped_have_entry += 1
            continue

        src_rel = find_field(spec, ["file", "source_file", "filename"])
        if not src_rel:
            print("  [skip] spec has no file/source_file/filename")
            skipped_missing_file += 1
            continue

        src_path = src_root / src_rel
        if not src_path.is_file():
            print(f"  [skip] source file not found: {src_path}")
            skipped_missing_file += 1
            continue

        src_bytes = src_path.read_bytes()
        if len(src_bytes) > args.max_bytes:
            print(f"  [info] Truncating source file to {args.max_bytes} bytes for prompt")
            src_bytes = src_bytes[: args.max_bytes]
        src_text = src_bytes.decode("utf-8", errors="replace")

        try:
            entry = call_llm_for_entrypoint(
                client, args.model, prompt_template, spec, src_text
            )
            print(f"  [ok] LLM entrypoint: {entry}")
            spec["entrypoint"] = entry

            with spec_path.open("w", encoding="utf-8") as f:
                json.dump(spec, f, indent=2, sort_keys=True)
            updated += 1
        except Exception as e:
            print(f"  [ERR] LLM inference failed: {e!r}")
            errors += 1

    print("\n[done] Entry point inference summary:")
    print(f"  Specs total          : {len(specs)}")
    print(f"  Updated with LLM     : {updated}")
    print(f"  Skipped (had entry)  : {skipped_have_entry}")
    print(f"  Skipped (no file)    : {skipped_missing_file}")
    print(f"  Errors               : {errors}")


if __name__ == "__main__":
    main()
