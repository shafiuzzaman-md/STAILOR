#!/usr/bin/env python3
"""
generate_llm_entry_drivers.py

Generate LLM-entry harnesses:

  drivers/llm_entry/<project_name>/<SPEC_ID>.c

for every:
  specs/<project_name>/<SPEC_ID>.json

LLM Harness (entrypoint):
  - Single-shot LLM-generated harness that calls the entrypoint.
  - No CodeQL spec is passed as context (beyond basic identifiers).
"""

from __future__ import annotations
import argparse
import json
import os
from pathlib import Path
import textwrap
import requests  # pip install requests

def read_text(path: Path) -> str:
  with path.open("r", encoding="utf-8") as f:
    return f.read()

def extract_code_block(text: str) -> str:
  """
  Extract the first fenced code block if present, otherwise return full text.
  """
  if "```" not in text:
    return text.strip()

  parts = text.split("```", 2)
  if len(parts) < 3:
    return text.strip()

  code_part = parts[1]
  # Strip possible language tag (e.g., ```c)
  lines = code_part.splitlines()
  if lines and lines[0].strip().startswith(("c", "C")):
    lines = lines[1:]
  return "\n".join(lines).strip()

def call_llm(api_base: str, model: str, api_key: str, system_prompt: str, user_prompt: str) -> str:
  """
  Minimal chat API call assuming OpenAI/DeepSeek-compatible interface:
    POST <api_base>/v1/chat/completions
  """
  url = api_base.rstrip("/") + "/v1/chat/completions"
  headers = {
    "Content-Type": "application/json",
    "Authorization": f"Bearer {api_key}",
  }
  payload = {
    "model": model,
    "messages": [
      {"role": "system", "content": system_prompt},
      {"role": "user",   "content": user_prompt},
    ],
    "temperature": 0.2,
  }

  resp = requests.post(url, headers=headers, json=payload, timeout=300)
  resp.raise_for_status()
  data = resp.json()
  try:
    return data["choices"][0]["message"]["content"]
  except Exception as e:
    raise RuntimeError(f"Unexpected LLM response format: {e}\n{data}") from e

def main() -> None:
  p = argparse.ArgumentParser()
  p.add_argument("--project-name", required=True,
                 help="Project ID, e.g., libxml2_62911_vul")
  p.add_argument("--spec-dir", required=True,
                 help="Directory with *.json specs")
  p.add_argument("--out-root", default="drivers/llm_entry",
                 help="Root directory for generated drivers")
  p.add_argument("--prompts-dir", default="prompts",
                 help="Directory containing prompt text files")
  p.add_argument("--system-prompt-file", default="llm_entry_system.txt",
                 help="File name (under prompts-dir) for system prompt")
  p.add_argument("--user-prompt-file", default="llm_entry_user.txt",
                 help="File name (under prompts-dir) for user prompt template")
  p.add_argument("--model", required=True,
                 help="LLM model name (e.g., deepseek-chat, gpt-4.1, etc.)")
  p.add_argument("--api-base", required=True,
                 help="LLM API base URL (e.g., https://api.deepseek.com)")
  p.add_argument("--overwrite", action="store_true",
                 help="Overwrite existing driver files")
  args = p.parse_args()

  api_key = os.environ.get("LLM_API_KEY")
  if not api_key:
    raise SystemExit("ERROR: LLM_API_KEY environment variable must be set")

  spec_dir = Path(args.spec_dir)
  if not spec_dir.is_dir():
    raise SystemExit(f"ERROR: spec dir not found: {spec_dir}")

  prompts_dir = Path(args.prompts_dir)
  system_path = prompts_dir / args.system_prompt_file
  user_path = prompts_dir / args.user_prompt_file

  system_prompt = read_text(system_path)
  user_template = read_text(user_path)

  out_root = Path(args.out_root) / args.project_name
  out_root.mkdir(parents=True, exist_ok=True)

  specs = sorted(spec_dir.glob("*.json"))
  if not specs:
    raise SystemExit(f"ERROR: no *.json specs found in {spec_dir}")

  print(f"[i] PROJECT_NAME = {args.project_name}")
  print(f"[i] SPEC_DIR     = {spec_dir}")
  print(f"[i] OUT_ROOT     = {out_root}")
  print(f"[i] MODEL        = {args.model}")
  print(f"[i] API_BASE     = {args.api_base}")
  print(f"[i] Specs found  = {len(specs)}")

  for spec_path in specs:
    spec_id = spec_path.stem
    driver_path = out_root / f"{spec_id}.c"

    print(f"\n[i] SPEC_ID = {spec_id}")
    if driver_path.exists() and not args.overwrite:
      print(f"[skip] driver exists: {driver_path}")
      continue

    # We deliberately do NOT pass the full CodeQL spec as context.
    # However, we can still mention project/spec IDs to keep drivers separate.
    user_prompt = user_template.format(
      PROJECT_NAME=args.project_name,
      SPEC_ID=spec_id,
      # You can later add entrypoint function if you have it:
      ENTRYPOINT_FN="/* TODO: fill entrypoint function name */",
    )

    print("[llm] calling model...")
    completion = call_llm(
      api_base=args.api_base,
      model=args.model,
      api_key=api_key,
      system_prompt=system_prompt,
      user_prompt=user_prompt,
    )

    code = extract_code_block(completion)
    if not code:
      print("[warn] empty code block, writing raw completion")
      code = completion

    driver_path.write_text(code + "\n", encoding="utf-8")
    print(f"[ok] wrote driver: {driver_path}")

  print("\n[done] LLM entry drivers generated.")

if __name__ == "__main__":
  main()
