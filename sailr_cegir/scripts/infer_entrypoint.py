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
  3) Else, try LLM to infer an entrypoint.
  4) NEW: If LLM fails, fall back to spec+source-based heuristic entrypoint.
"""

import argparse, json, os, pathlib, sys, re
from pathlib import Path
from datetime import datetime, timezone


def now():
    return (
        datetime.now(timezone.utc)
        .isoformat(timespec="seconds")
        .replace("+00:00", "Z")
    )


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

    fences = _re.findall(
        r"```(?:json)?\s*([\s\S]*?)```", txt, flags=_re.MULTILINE
    )
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


# NEW: best-effort extraction of a function signature from source text


def _extract_signature_from_source(src_text: str, func_name: str) -> str | None:
    """
    Heuristic: try to grab the line(s) declaring `func_name(...)` as a definition.

    This is deliberately conservative; the result is mainly for logging/metadata.
    Downstream passes should not rely on this for correctness.
    """
    if not src_text or not func_name:
        return None

    # Try to match a function definition header before the opening brace.
    # This is simplistic but usually good enough for C.
    pattern = re.compile(
        rf"""
        ^                                  # start of line
        [\w\s\*\(\),\[\]]*                 # return type + modifiers
        \b{re.escape(func_name)}\s*        # function name
        \([^;]*\)                          # param list (no ';' inside)
        \s*\{{                             # opening brace
        """,
        re.MULTILINE | re.VERBOSE,
    )
    m = pattern.search(src_text)
    if m:
        # Return the whole matched line (header only)
        line = m.group(0)
        # Strip trailing brace to keep it cleaner
        line = line.rstrip(" {")
        return line.strip()

    # Fallback: match a prototype-like line ending with ';'
    pattern_decl = re.compile(
        rf"""
        ^                                  # start of line
        [\w\s\*\(\),\[\]]*                 
        \b{re.escape(func_name)}\s*
        \([^;]*\)\s*;
        """,
        re.MULTILINE | re.VERBOSE,
    )
    m2 = pattern_decl.search(src_text)
    if m2:
        return m2.group(0).strip()

    return None


# NEW: static fallback when LLM does not yield a valid entrypoint


def fallback_entrypoint_from_spec(
    spec: dict, src_root: Path, ccdb: list[dict]
) -> dict | None:
    """
    Best-effort static inference of an entrypoint if the LLM fails.

    Strategy:
      - Use spec["file"] and spec["function"]/["callee"]/["entrypoint"].
      - Try to locate that file in ccdb; if not, fall back to src_root / file.
      - Optionally extract a human-readable signature from the TU.
    """
    vuln_file = spec.get("file")
    func_name = (
        spec.get("function")
        or spec.get("callee")
        or spec.get("entrypoint")
        or spec.get("symbol")
    )

    if not vuln_file or not func_name:
        print(
            "[!] Fallback entrypoint inference: missing vuln_file or func_name in spec",
            file=sys.stderr,
        )
        return None

    # Try to locate TU path via ccdb
    tu_path: Path | None = None
    candidates: list[Path] = []
    for cu in ccdb:
        cu_file = cu.get("file")
        if not cu_file:
            continue
        cu_path = Path(cu_file)
        if cu_path.name == Path(vuln_file).name:
            candidates.append(cu_path)

    if candidates:
        # Pick shortest full path as a heuristic
        tu_path = min(candidates, key=lambda p: len(str(p)))
    else:
        tu_path = src_root / vuln_file

    signature = None
    if tu_path and tu_path.exists():
        src_txt = read_txt(tu_path)
        signature = _extract_signature_from_source(src_txt, func_name)

    if not signature:
        signature = f"/* signature for {func_name} is unknown; see {vuln_file} */"

    return {
        "name": func_name,
        "file": vuln_file,
        "signature": signature,
    }


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
    ap.add_argument(
        "--entry-signature", help="Manual full C function signature"
    )

    args = ap.parse_args()

    spec = read_json(args.spec)
    _facts = read_json(args.facts)  # currently unused, kept for future use
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
        print(
            f"[i] Plan already has entrypoint, skipping inference: {plan['entrypoint']}"
        )
        write_json(plan_path, plan)
        return

    # 3) No manual + no existing entrypoint → prefer LLM, then static fallback
    vuln_file = spec.get("file")
    vuln_line = spec.get("line")

    code_snippet = ""
    if vuln_file and isinstance(vuln_line, int):
        rel = Path(vuln_file)
        if not rel.is_absolute():
            rel = src_root / rel
        src_txt = read_txt(rel)
        if src_txt:
            lines = src_txt.splitlines()
            # vuln_line is assumed 1-based here
            idx = max(0, vuln_line - 1)
            start = max(0, idx - 15)
            end = min(len(lines), idx + 15)
            snippet_lines = [
                f"{i:5d}: {l}" for i, l in zip(
                    range(start + 1, end + 1), lines[start:end]
                )
            ]
            code_snippet = "\n".join(snippet_lines)

    vul_msg = spec.get("message", "")
    rule_id = spec.get("rule_id") or ""

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

    ep = None

    # Try LLM first, but don't die if it misbehaves
    try:
        rsp = llm_chat_openai_compat(
            messages=[system_msg, user_msg],
            model=args.model,
            api_base=args.api_base,
            api_key_env=args.api_key_env,
        )
        content = (
            rsp.get("choices", [{}])[0]
            .get("message", {})
            .get("content", "")
        )
        model_json = extract_json_from_text(content)
        ep_candidate = (model_json or {}).get("entrypoint") or {}
        name = ep_candidate.get("name")
        file_ = ep_candidate.get("file")
        sig = ep_candidate.get("signature")

        if name and file_:
            ep = {
                "name": name,
                "file": file_,
                "signature": (sig or "").strip()
                or f"/* signature unknown; inferred name={name} */",
            }
        else:
            print(
                "[!] LLM did not produce a valid entrypoint JSON; will fall back to static inference.",
                file=sys.stderr,
            )
            if content:
                print("Raw LLM content:\n", content, file=sys.stderr)
    except Exception as e:
        print(
            f"[!] LLM entrypoint inference failed with exception: {e!r}",
            file=sys.stderr,
        )

    # If LLM failed or produced nonsense, fall back to spec+source-based inference
    if not ep:
        print(
            "[i] Falling back to static entrypoint inference from spec/source.",
            file=sys.stderr,
        )
        ep = fallback_entrypoint_from_spec(spec, src_root, ccdb)

    if not ep:
        print(
            "[!] Could not infer an entrypoint (LLM + static fallback both failed).",
            file=sys.stderr,
        )
        sys.exit(1)

    plan["entrypoint"] = ep
    write_json(plan_path, plan)
    print(f"[i] Inferred entrypoint → {plan['entrypoint']}")


if __name__ == "__main__":
    main()
