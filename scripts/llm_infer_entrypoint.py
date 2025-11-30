#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
llm_infer_entrypoint.py

Given:
  - spec JSON (000_*.json)
  - fact pack
  - compile_commands.json
  - src_root

Ensures plan["entrypoint"] is populated.

Priority:
  1) If manual entrypoint flags are provided (name/file/signature), use those.
  2) Else if plan already has an entrypoint, keep it.
  3) Else, use LLM (DeepSeek via OpenAI-compatible API) to infer an entrypoint.
"""

import argparse, json, os, pathlib, sys
from pathlib import Path
from datetime import datetime, timezone


def now():
    return datetime.now(timezone.utc).isoformat(timespec="seconds").replace("+00:00", "Z")


def read_json(p):
    return json.loads(Path(p).read_text(encoding="utf-8"))


def write_json(p, obj):
    Path(p).parent.mkdir(parents=True, exist_ok=True)
    Path(p).write_text(json.dumps(obj, indent=2), encoding="utf-8")


def read_txt(p, default=""):
    try:
        return Path(p).read_text(encoding="utf-8", errors="ignore")
    except Exception:
        return default


# --- simple LLM client using OpenAI-compatible endpoint (DeepSeek) ---


def llm_chat_openai_compat(
    messages,
    model: str,
    api_base: str,
    api_key_env: str,
    timeout: int = 120,
):
    api_key = os.environ.get(api_key_env, "")
    if not api_key:
        raise RuntimeError(f"{api_key_env} is not set in the environment")

    import requests

    url = api_base.rstrip("/") + "/v1/chat/completions"
    payload = {
        "model": model,
        "messages": messages,
        "temperature": 0.2,
    }
    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }
    r = requests.post(url, headers=headers, json=payload, timeout=timeout)
    r.raise_for_status()
    return r.json()


def extract_json_from_text(txt: str):
    import json as _json, re as _re

    fences = _re.findall(r"```(?:json)?\s*([\s\S]*?)```", txt, flags=_re.MULTILINE)
    candidates = fences[::-1] if fences else [txt]
    for cand in candidates:
        try:
            return _json.loads(cand)
        except Exception:
            continue
    m = _re.search(r"(\{[\s\S]*\})", txt)
    if m:
        try:
            return _json.loads(m.group(1))
        except Exception:
            pass
    return {}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--spec", required=True, help="000_*.json spec")
    ap.add_argument("--facts", required=True, help="fact_pack.json")
    ap.add_argument("--ccdb", required=True, help="compile_commands.json")
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--plan", required=True)

    # LLM controls
    ap.add_argument("--provider", default="openai")
    ap.add_argument("--api-base", required=True)
    ap.add_argument("--api-key-env", default="DEEPSEEK_API_KEY")
    ap.add_argument("--model", default="deepseek-chat")

    # Manual entrypoint overrides
    ap.add_argument("--entry-name", help="Manual entrypoint function name")
    ap.add_argument("--entry-file", help="Manual entrypoint source file (e.g., dict.c)")
    ap.add_argument("--entry-signature", help="Manual full C function signature")

    args = ap.parse_args()

    spec = read_json(args.spec)
    _facts = read_json(args.facts)
    ccdb = read_json(args.ccdb)
    src_root = Path(args.src_root)

    plan_path = Path(args.plan)
    if plan_path.exists():
        plan = read_json(plan_path)
    else:
        # minimal skeleton, NO entrypoint (may be filled manually or by LLM)
        stem = Path(args.spec).stem
        plan = {
            "schema": "llmse.harness_plan.v1",
            "stem": stem,
            "spec_id": spec.get("id"),
            "entrypoint": None,
            "in_path": [],
            "helpers": [],
            "symbolic": {"args": [], "globals": []},
            "concrete": {"values": []},
            "stubs": {"helpers": []},
            "generated": {},
            "ccdb": args.ccdb,
            "src_root": args.src_root,
        }

    # 1) Manual entrypoint given via CLI → override and return
    if args.entry_name or args.entry_file or args.entry_signature:
        missing = []
        if not args.entry_name:
            missing.append("--entry-name")
        if not args.entry_file:
            missing.append("--entry-file")
        if not args.entry_signature:
            missing.append("--entry-signature")
        if missing:
            print(
                "[!] Manual entrypoint requested but these flags are missing: "
                + ", ".join(missing),
                file=sys.stderr,
            )
            sys.exit(1)

        plan["entrypoint"] = {
            "name": args.entry_name,
            "file": args.entry_file,
            "signature": args.entry_signature.strip(),
        }
        write_json(plan_path, plan)
        print(f"[i] Using manual entrypoint from CLI → {plan['entrypoint']}")
        return

    # 2) Plan already has an entrypoint → keep it, no LLM
    if plan.get("entrypoint") and plan["entrypoint"].get("name"):
        print(f"[i] Plan already has entrypoint, skipping LLM inference: {plan['entrypoint']}")
        write_json(plan_path, plan)
        return

    # 3) No manual + no existing entrypoint → use LLM to infer
    vuln_file = spec.get("file")
    vuln_line = spec.get("line")

    code_snippet = ""
    if vuln_file and vuln_line:
        rel = Path(vuln_file)
        if not rel.is_absolute():
            rel = src_root / rel
        src_txt = read_txt(rel)
        if src_txt:
            lines = src_txt.splitlines()
            start = max(0, vuln_line - 15)
            end = min(len(lines), vuln_line + 15)
            snippet_lines = [
                f"{i+1:5d}: {l}" for i, l in enumerate(lines[start:end], start)
            ]
            code_snippet = "\n".join(snippet_lines)

    vul_msg = spec.get("message", "")
    rule_id = spec.get("rule_id") or spec.get("rule_id", "")

    system_msg = {
        "role": "system",
        "content": (
            "You are an expert in C, static analysis, and vulnerability triage.\n"
            "Your job is to identify the most appropriate entrypoint function\n"
            "for a vulnerability found by static analysis, so that symbolic\n"
            "execution can start from it.\n\n"
            "Return ONLY a JSON object in a ```json fenced block with this shape:\n"
            "```json\n"
            "{\n"
            "  \"entrypoint\": {\n"
            "    \"name\": \"...\",\n"
            "    \"file\": \"...\",\n"
            "    \"signature\": \"...\"\n"
            "  }\n"
            "}\n"
            "```\n\n"
            "Guidelines:\n"
            "- Prefer a function that is callable from outside the file (non-static)\n"
            "  and leads to the vulnerable line on at least one path.\n"
            "- If the vulnerable function itself is a public API, you may choose it.\n"
            "- Do NOT invent random function names; base your choice on the provided\n"
            "  snippet and any hints in compile_commands (file names, TU structure).\n"
        ),
    }

    user_payload = {
        "spec_id": spec.get("id"),
        "rule_id": rule_id,
        "message": vul_msg,
        "file": vuln_file,
        "line": vuln_line,
        "snippet": spec.get("context", {}).get("snippet", ""),
        "source_snippet_with_line_numbers": code_snippet,
        "ccdb_files": [cu.get("file") for cu in ccdb],
    }

    user_msg = {
        "role": "user",
        "content": json.dumps(user_payload, indent=2),
    }

    rsp = llm_chat_openai_compat(
        messages=[system_msg, user_msg],
        model=args.model,
        api_base=args.api_base,
        api_key_env=args.api_key_env,
    )

    content = rsp.get("choices", [{}])[0].get("message", {}).get("content", "")
    model_json = extract_json_from_text(content)

    ep = (model_json or {}).get("entrypoint") or {}
    name = ep.get("name")
    file_ = ep.get("file")
    sig = ep.get("signature")

    if not (name and file_ and sig):
        print("[!] LLM failed to produce a valid entrypoint JSON.", file=sys.stderr)
        print("Raw content:\n", content, file=sys.stderr)
        sys.exit(1)

    plan["entrypoint"] = {
        "name": name,
        "file": file_,
        "signature": sig.strip(),
    }

    write_json(plan_path, plan)
    print(f"[i] Inferred entrypoint via LLM → {plan['entrypoint']}")


if __name__ == "__main__":
    main()
