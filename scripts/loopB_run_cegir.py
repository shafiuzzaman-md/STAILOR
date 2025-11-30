#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
loopB_run_cegir.py

High-level LLMSE/CEGIR pipeline (single-TU mode):

  Stage 1 (outside this script):
    - derive_assertion_and_inject.py
    - instrument_inpath_and_stub.py
    Result: instrumented TU with in-path bodies and injected assertion(s).

  Stage 2 (inside this script, "S" stage):
    - LLM declares symbolic variables and grooming logic for complex structures
      (structs, pointers, nested objects) in main() / groom helpers.
    - We only allow patch-style edits; no file overwrite of the TU.
    - Snapshot: pre- and post-symbolic TU.

  Stage 3 (Phase A, clang-clean build):
    - LLM refines stubs/headers and small local patches until:
        clang -emit-llvm -c llmse_min_tu.c -> linked.bc
      succeeds.
    - Focus: error-free build via stub refinement.
    - Snapshot: TU + helper stubs after first green build.

  Stage 4 (Phase B, KLEE reachability):
    - LLM refines harness/stubs to help KLEE reach target line:
        - add missing symbolic vars
        - add klee_assume, widen ranges
        - refine stub side-effects
      without breaking build.
    - Snapshot: TU + helper stubs at point where KLEE hits klee_assert(0).

Single-TU mode details:
  - plan["instrumented_path"] points to llmse_min_tu.c
  - That TU contains in-path bodies + main()
  - We compile only this TU to out/build/linked.bc
  - We run KLEE with --entry-point=main on linked.bc.
"""
import argparse, json, os, subprocess, sys, textwrap, pathlib, re
from datetime import datetime, timezone
from pathlib import Path

HEADER_INCLUDE_RX = re.compile(r'^\s*#\s*include\s+"([^"]+)"', re.M)

# -------- small helpers for files --------
def read_json(p):
    return json.load(open(p, "r", encoding="utf-8"))

def write_json(p, obj):
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    json.dump(obj, open(p, "w", encoding="utf-8"), indent=2)

def read_txt(p):
    try:
        return open(p, "r", encoding="utf-8", errors="ignore").read()
    except Exception:
        return ""

def write_txt(p, s):
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    open(p, "w", encoding="utf-8").write(s)

def now():
    return datetime.now(timezone.utc).isoformat(timespec="seconds").replace("+00:00", "Z")

# -------- header stub helpers (legacy / compatibility) --------
def ensure_driver_header_stubs(plan):
    """
    Legacy helper: if some driver exists and includes TU-local headers
    that don't exist, synthesize tiny stubs. In single-TU mode, this
    typically does nothing but is safe to keep.
    """
    driver = plan.get("driver_path") or "out/build/klee_driver.c"
    try:
        src = read_txt(driver)
    except Exception as e:
        print(f"[w] cannot read driver for header stub: {e}")
        return

    entry_sig = (plan.get("entrypoint") or {}).get("signature", "").strip()
    if entry_sig and not entry_sig.endswith(";"):
        entry_sig = entry_sig + ";"

    driver_dir = pathlib.Path(driver).parent

    for rel in HEADER_INCLUDE_RX.findall(src):
        if not rel.endswith(".h"):
            continue
        hdr_path = (driver_dir / rel).resolve()
        if hdr_path.exists():
            continue

        lines = [
            "#pragma once",
            "#include <stddef.h>",
            "#include <stdint.h>",
        ]
        if "xmlChar" in entry_sig:
            lines.append("typedef unsigned char xmlChar;")
        if entry_sig:
            lines.append(entry_sig)
        text = "\n".join(lines) + "\n"
        write_txt(str(hdr_path), text)
        print(f"[i] Created stub header for missing include '{rel}' at {hdr_path}")

def ensure_local_klee_header(build_root: str):
    """
    Create out/build/klee/klee.h with a minimal KLEE API if needed.
    This lets us use #include "klee/klee.h" consistently.
    """
    build_root = Path(build_root)
    klee_dir = build_root / "klee"
    klee_dir.mkdir(parents=True, exist_ok=True)
    header = klee_dir / "klee.h"

    if header.exists():
        return

    header.write_text(r"""
#ifndef KLEE_KLEE_H
#define KLEE_KLEE_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void klee_make_symbolic(void *addr, size_t nbytes, const char *name);
void klee_assume(uint64_t condition);
void klee_assert(int condition);
void klee_warning(const char *msg);
void klee_abort(void) __attribute__((noreturn));

#ifdef __cplusplus
}
#endif

#endif
""")
    print(f"[i] Created local klee.h at {header}")

def maybe_stub_missing_header(stderr: str) -> str:
    """
    If clang complains about a missing local header, auto-create a tiny stub.
    """
    m = re.search(r"fatal error: '([^']+\.h)' file not found", stderr)
    if not m:
        return ""
    rel = m.group(1)
    if rel.startswith("/"):
        return ""
    dest = pathlib.Path(rel)
    try:
        dest.parent.mkdir(parents=True, exist_ok=True)
        if not dest.exists():
            dest.write_text(
                "/* LLMSE auto-stub header for missing include */\n"
                "#pragma once\n",
                encoding="utf-8",
            )
        return str(dest.resolve())
    except Exception:
        return ""

# --------- shell ----------
def sh(cmd, cwd=None, timeout=None):
    p = subprocess.Popen(
        cmd,
        cwd=cwd,
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    try:
        out, err = p.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        p.kill()
        out, err = p.communicate()
        return 124, out, err
    return p.returncode, out, err

# --------- DeepSeek call ----------
def llm_chat(messages, model="deepseek-chat", base="https://api.deepseek.com"):
    api_key = os.environ.get("DEEPSEEK_API_KEY", "")
    if not api_key:
        raise RuntimeError("DEEPSEEK_API_KEY is not set")
    import requests
    url = f"{base}/v1/chat/completions"
    payload = {"model": model, "messages": messages, "temperature": 0.2}
    headers = {"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"}
    r = requests.post(url, headers=headers, json=payload, timeout=120)
    r.raise_for_status()
    return r.json()

# --------- JSON extract from LLM ----------
def extract_json_from_text(txt):
    import re as _re, json as _json
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

# --------- apply_edits ----------
def apply_edits(edits, logs, protected_paths=None):
    """
    Apply LLM-suggested edits.

    Supported actions:

      - Overwrite / create (non-protected only):
        {
          "path": "...",
          "action": "overwrite" | "create",
          "content": "<entire file content>"
        }

      - Replace (patch; allowed on any file including TU):
        {
          "path": "...",
          "action": "replace",
          "old": "exact substring",
          "new": "replacement substring",
          "multiple": false
        }

      - Insert (patch; allowed on any file):
        {
          "path": "...",
          "action": "insert",
          "anchor": "substring to find",
          "position": "before" | "after",
          "content": "text to insert"
        }

      - Delete (patch; allowed on any file):
        {
          "path": "...",
          "action": "delete",
          "text": "<substring>"
          # OR
          "pattern": "<regex>"
        }
    """
    if protected_paths is None:
        protected_paths = set()

    applied = []

    for e in edits or []:
        p = e.get("path") or e.get("file")
        act = (e.get("action") or "overwrite").strip().lower()
        if not p:
            logs.append("[apply_edits] missing 'path'; skipping edit")
            continue

        p = str(p)
        is_protected = any(os.path.abspath(p) == os.path.abspath(pp)
                           for pp in protected_paths)

        def load_text():
            try:
                return read_txt(p)
            except Exception as ex:
                logs.append(f"[apply_edits] cannot read {p}: {ex}")
                return ""

        # --- overwrite / create (non-protected only) ---
        if act in ("overwrite", "create"):
            content = e.get("content", "")
            if is_protected:
                logs.append(
                    f"[apply_edits] refusing {act} on protected file {p}"
                )
                continue
            if content == "":
                logs.append(
                    f"[apply_edits] empty 'content' for {act} on {p}; skipping."
                )
                continue
            try:
                write_txt(p, content)
                applied.append({"path": p, "bytes": len(content), "action": act})
            except Exception as ex:
                logs.append(f"[apply_edits] failed {act} on {p}: {ex}")
            continue

        # --- replace ---
        if act == "replace":
            old = e.get("old") or e.get("pattern")
            new = e.get("new") or e.get("replacement") or ""
            if not old:
                logs.append(
                    f"[apply_edits] 'replace' on {p} missing 'old'/'pattern'; skipping."
                )
                continue
            txt = load_text()
            if not txt:
                continue

            multiple = bool(e.get("multiple"))
            if multiple:
                new_txt = txt.replace(old, new)
            else:
                new_txt = txt.replace(old, new, 1)

            if new_txt == txt:
                logs.append(
                    f"[apply_edits] 'replace' found no occurrence of given substring in {p}."
                )
                continue

            try:
                write_txt(p, new_txt)
                applied.append({
                    "path": p,
                    "action": "replace",
                    "bytes": len(new_txt),
                    "multiple": multiple,
                })
            except Exception as ex:
                logs.append(f"[apply_edits] failed replace on {p}: {ex}")
            continue

        # --- insert ---
        if act == "insert":
            content = e.get("content", "")
            if content == "":
                logs.append(
                    f"[apply_edits] empty 'content' for insert on {p}; skipping."
                )
                continue
            anchor = e.get("anchor")
            if not anchor:
                logs.append(
                    f"[apply_edits] 'insert' on {p} missing 'anchor'; skipping."
                )
                continue

            txt = load_text()
            if not txt:
                continue

            pos = txt.find(anchor)
            if pos < 0:
                logs.append(
                    f"[apply_edits] 'insert' anchor not found in {p}; skipping."
                )
                continue

            where = (e.get("position") or "after").lower()
            if where == "before":
                insert_pos = pos
            else:
                insert_pos = pos + len(anchor)

            new_txt = txt[:insert_pos] + content + txt[insert_pos:]

            try:
                write_txt(p, new_txt)
                applied.append({
                    "path": p,
                    "action": "insert",
                    "bytes": len(content),
                    "anchor": anchor,
                    "position": where,
                })
            except Exception as ex:
                logs.append(f"[apply_edits] failed insert on {p}: {ex}")
            continue

        # --- delete ---
        if act == "delete":
            txt = load_text()
            if not txt:
                continue

            delete_text = e.get("text")
            pattern = e.get("pattern")

            if delete_text:
                new_txt = txt.replace(delete_text, "")
            elif pattern:
                try:
                    rx = re.compile(pattern, re.MULTILINE | re.DOTALL)
                    new_txt = rx.sub("", txt)
                except Exception as ex:
                    logs.append(
                        f"[apply_edits] invalid regex for delete on {p}: {ex}"
                    )
                    continue
            else:
                logs.append(
                    f"[apply_edits] 'delete' on {p} missing 'text'/'pattern'; skipping."
                )
                continue

            if new_txt == txt:
                logs.append(
                    f"[apply_edits] 'delete' removed nothing in {p} (no match)."
                )
                continue

            try:
                write_txt(p, new_txt)
                applied.append({
                    "path": p,
                    "action": "delete",
                    "bytes": len(new_txt),
                })
            except Exception as ex:
                logs.append(f"[apply_edits] failed delete on {p}: {ex}")
            continue

        # --- unknown ---
        logs.append(
            f"[apply_edits] refusing unknown action '{act}' on {p}"
        )

    return applied

# --------- build / klee helpers ----------
def default_build_cmds(plan):
    """
    Single-TU mode:
      - compile plan["instrumented_path"] (llmse_min_tu.c) to out/build/linked.bc
      - include local klee header dir and any plan["include_paths"].
    """
    instr  = plan.get("instrumented_path", "out/build/instrumented/llmse_min_tu.c")
    bc     = "out/build/linked.bc"

    ccflags   = plan.get("ccflags", "-g -O0 -DKLEE -D_FORTIFY_SOURCE=0")
    includes  = " ".join([f"-I{p}" for p in plan.get("include_paths", [])])
    includes = includes + " -Iout/build -Iout/build/klee"

    cmd = f"clang -emit-llvm -c {includes} {ccflags} {instr} -o {bc}"
    return [f"bash -lc \"{cmd}\""], bc

def default_klee_cmds(plan, linked_bc, output_dir):
    """
    Run KLEE starting from 'main' in the single TU, writing to output_dir.
    """
    outdir = str(output_dir)
    cmd = (
        f'bash -lc "klee --libc=uclibc --max-time=90 --search=dfs '
        f'--entry-point=main --output-dir={outdir} {linked_bc}"'
    )
    return [cmd]

def summarize_build(ret, out, err):
    head_o = "\n".join(out.splitlines()[-50:])
    head_e = "\n".join(err.splitlines()[-50:])
    return f"[ret={ret}]\n--- stdout (tail) ---\n{head_o}\n--- stderr (tail) ---\n{head_e}\n"

def parse_klee_result(stdout, stderr):
    hit_assert0 = (
        ("assertion failed: 0" in stdout)
        or ("assert(0)" in stdout)
        or ("klee_assert(0)" in stdout)
        or ("KLEE: ERROR: ASSERTION FAIL" in stdout)
    )
    return {"hit_assert0": hit_assert0}

# --------- main ----------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--prompt", required=True)
    ap.add_argument(
        "--spec",
        help=(
            "Optional spec JSON (000_*.json). If omitted, we try to load 'spec' "
            "or 'spec_path' from the prompt JSON."
        ),
    )
    ap.add_argument("--settings", default="config/settings.yaml")
    ap.add_argument("--max-a", type=int, default=10)
    ap.add_argument("--max-b", type=int, default=10)
    ap.add_argument("--timeout", type=int, default=120)
    args = ap.parse_args()

    plan = read_json(args.plan)
    prompt0 = read_json(args.prompt)

    gen = plan.get("generated", {})

    # instrumented_path MUST be set by instrument_inpath_and_stub.py
    instrumented_path = (
        plan.get("instrumented_path")
        or gen.get("minimal_tu_c")
        or "out/build/instrumented/llmse_min_tu.c"
    )
    plan["instrumented_path"] = instrumented_path
    write_json(args.plan, plan)

    # Resolve spec (for Phase B refinement prompt)
    spec = None
    spec_path = None
    if args.spec:
        spec_path = args.spec
        spec = read_json(spec_path)
    else:
        if isinstance(prompt0, dict) and "spec" in prompt0:
            spec = prompt0["spec"]
            spec_path = prompt0.get("spec_path")
        elif isinstance(prompt0, dict) and "spec_path" in prompt0:
            spec_path = prompt0["spec_path"]
            spec = read_json(spec_path)

    if spec is None:
        raise RuntimeError(
            "No spec provided. Either pass --spec out/specs/000_<stem>.json "
            "or ensure your prompt JSON contains 'spec' or 'spec_path'."
        )

    # Header stubbing for any legacy driver (harmless if missing)
    ensure_driver_header_stubs(plan)

    out_dir = pathlib.Path("out")
    logs_dir = out_dir / "logs"
    rounds_dir = logs_dir / "rounds"
    rounds_dir.mkdir(parents=True, exist_ok=True)

    snapshot_dir = Path("out/build/snapshots")
    snapshot_dir.mkdir(parents=True, exist_ok=True)

    # Sanity: instrumented TU must exist
    if not os.path.exists(instrumented_path):
        print(f"[!] Missing instrumented TU: {instrumented_path}", file=sys.stderr)
        sys.exit(2)

    # Snapshot TU so we can inspect harness+asserts (Stage 1 → Stage 2 boundary)
    snap_inst = snapshot_dir / Path(instrumented_path).name
    write_txt(str(snap_inst), read_txt(instrumented_path))
    print(f"[i] Snapshot (post-assertion, pre-symbolic) → {snap_inst}")

    # ensure local klee.h exists before any build
    ensure_local_klee_header("out/build")

    # ------------- shared system prompt -------------
    llm_mem_build = {
        "role": "system",
        "content": (
            "You are an expert in C, KLEE, and libxml2.\n"
            "\n"
            "We are in the LLMSE/CEGIR loop. There are three roles for you:\n"
            "  (S) Symbolic/grooming stage: declare symbolic vars and grooming logic.\n"
            "  (A) Build-to-green stage: fix clang errors via stub/header refinements.\n"
            "  (B) KLEE stage: add/change symbolic vars and assumptions so KLEE can\n"
            "      reach the injected assertion (pre-vuln + klee_assert(0)), while\n"
            "      keeping the build green.\n"
            "\n"
            "Global invariants:\n"
            "- The file 'llmse_min_tu.c' (instrumented TU) is PROTECTED from full\n"
            "  overwrite: you MUST NOT regenerate it from scratch.\n"
            "- To change the TU, use PATCH-style edits only (action: 'replace' or\n"
            "  'insert' or 'delete') with small, local changes.\n"
            "- Prefer to fix type/signature mismatches by editing helper headers and\n"
            "  stubs (e.g., 'llmse_helper_stubs.h', 'llmse_groom.h', stub .c files).\n"
            "- Never introduce duplicate conflicting definitions (e.g., static vs\n"
            "  non-static with same name and signature).\n"
            "\n"
            "Edit protocol (always):\n"
            "- Return a single JSON object in a fenced ```json code block.\n"
            "- The JSON has shape: { \"edits\": [ ... ], \"commands\": { ... } }.\n"
            "- Each edit is one of:\n"
            "  1) Overwrite/create (non-protected files ONLY):\n"
            "     {\"path\":\"path/to/file.h\",\"action\":\"overwrite\",\"content\":\"<entire file>\"}\n"
            "  2) Replace (patch, allowed on ANY file including TU):\n"
            "     {\"path\":\"...\",\"action\":\"replace\",\"old\":\"<old snippet>\",\n"
            "      \"new\":\"<new snippet>\",\"multiple\":false}\n"
            "  3) Insert (patch, allowed on ANY file):\n"
            "     {\"path\":\"...\",\"action\":\"insert\",\"anchor\":\"<existing snippet>\",\n"
            "      \"position\":\"before\"|\"after\",\"content\":\"<text to insert>\"}\n"
            "  4) Delete (patch, allowed on ANY file):\n"
            "     {\"path\":\"...\",\"action\":\"delete\",\"text\":\"<substring>\"}\n"
            "\n"
            "Specific guidance per phase:\n"
            "\n"
            "(S) Symbolic / grooming stage:\n"
            "- Assume the assertion is already injected in the in-path function.\n"
            "- Your goal is to:\n"
            "    * declare symbolic variables for entrypoint arguments and any key\n"
            "      struct/object fields (including nested structs, pointers), and\n"
            "    * wire them into the harness main() or grooming helpers so they are\n"
            "      valid, non-null, and structurally consistent.\n"
            "- Use klee_make_symbolic for scalars and small buffers; for complex\n"
            "  structures, either:\n"
            "    * allocate and fill fields manually, or\n"
            "    * call an existing grooming helper like __llmse_groom_all if present.\n"
            "- Do NOT introduce deliberate compile errors; keep KLEE includes correct.\n"
            "\n"
            "(A) Build-to-green (clang) stage:\n"
            "- You see compiler errors/warnings; your goal is to fix these so\n"
            "  'clang -emit-llvm -c llmse_min_tu.c' succeeds.\n"
            "- Focus on:\n"
            "    * matching prototypes of helper functions in llmse_helper_stubs.h\n"
            "      to the actual call sites inside llmse_min_tu.c.\n"
            "    * resolving 'static declaration follows non-static' by ensuring there\n"
            "      is only one consistent prototype with the correct linkage.\n"
            "    * adding missing includes or stubbed definitions as needed.\n"
            "- Avoid changing core logic around the injected assertions unless a\n"
            "  small, local patch is absolutely necessary.\n"
            "\n"
            "(B) KLEE reachability stage:\n"
            "- Assume the build is green. You will see KLEE logs (stdout+stderr).\n"
            "- If KLEE never reaches the assertion, you may:\n"
            "    * add or widen klee_assume constraints,\n"
            "    * add new symbolic variables (e.g., for struct fields, lengths),\n"
            "    * extend grooming to avoid null derefs or trivial paths,\n"
            "    * refine stub behaviors (update globals, struct fields) without\n"
            "      breaking type signatures.\n"
            "- Do NOT make changes that would obviously break the build again.\n"
            "- Keep assertions in place; do not comment them out.\n"
            "\n"
            "Do NOT output prose. Return ONLY JSON in a fenced ```json block."
        ),
    }

    # ---------- Stage 2: Symbolic / grooming (S) ----------
    symbolic_logs = []
    user_seed = {
        "role": "user",
        "content": json.dumps(prompt0, indent=2),
    }

    iterS_tag = "S000"
    prompt_path_S = rounds_dir / f"{iterS_tag}.prompt.json"
    write_json(
        prompt_path_S,
        {
            "time": now(),
            "phase": "S",
            "seed": prompt0,
            "memory": symbolic_logs,
        },
    )

    msgs_S = [llm_mem_build, user_seed]
    rsp_S = llm_chat(msgs_S)
    rsp_S_path = rounds_dir / f"{iterS_tag}.completion.json"
    write_json(rsp_S_path, rsp_S)

    content_S = rsp_S.get("choices", [{}])[0].get("message", {}).get("content", "")
    model_json_S = extract_json_from_text(content_S)
    write_json(rounds_dir / f"{iterS_tag}.extracted.json", model_json_S)

    # In symbolic stage we allow patch edits to TU, but still forbid overwrite.
    protected_S = {os.path.abspath(instrumented_path)}
    applied_S = apply_edits(model_json_S.get("edits", []), symbolic_logs, protected_paths=protected_S)
    write_json(rounds_dir / f"{iterS_tag}.applied.json", {"applied": applied_S})

    # Snapshot TU after symbolic/grooming stage
    snap_sym = snapshot_dir / (Path(instrumented_path).stem + ".post_symbolic.c")
    write_txt(str(snap_sym), read_txt(instrumented_path))
    print(f"[i] Snapshot (post-symbolic/grooming) → {snap_sym}")

    # ============ Stage 3: Phase A (build-to-green) ============
    build_ok = False
    build_logs = []

    iterA = 0
    while iterA < args.max_a:
        iter_tag = f"A{iterA:03d}"
        prompt_path = rounds_dir / f"{iter_tag}.prompt.json"
        write_json(
            prompt_path,
            {"time": now(), "phase": "A", "seed": prompt0, "memory": build_logs},
        )

        msgs = [llm_mem_build, user_seed]
        if build_logs:
            msgs.append(
                {
                    "role": "user",
                    "content": "Previous build feedback:\n"
                    + "\n".join(build_logs[-3:]),
                }
            )
        rsp = llm_chat(msgs)
        rsp_path = rounds_dir / f"{iter_tag}.completion.json"
        write_json(rsp_path, rsp)

        content = rsp.get("choices", [{}])[0].get("message", {}).get("content", "")
        model_json = extract_json_from_text(content)
        write_json(rounds_dir / f"{iter_tag}.extracted.json", model_json)

        # Protect TU from overwrite, but allow patch actions
        protected = {os.path.abspath(instrumented_path)}
        applied = apply_edits(model_json.get("edits", []), build_logs, protected_paths=protected)
        write_json(rounds_dir / f"{iter_tag}.applied.json", {"applied": applied})

        ensure_local_klee_header("out/build")
        cmds, linked_bc = default_build_cmds(plan)
        if "commands" in model_json and "build" in model_json["commands"]:
            cmds = model_json["commands"]["build"]

        build_agg = []
        ret_last = 0
        for cmd in cmds:
            ret, out, err = sh(cmd, timeout=args.timeout)
            build_agg.append({"cmd": cmd, "ret": ret, "stdout": out, "stderr": err})
            if ret != 0:
                break
        write_json(rounds_dir / f"{iter_tag}.build.json", {"steps": build_agg})
        ret_last = build_agg[-1]["ret"]

        if ret_last != 0:
            last_err = build_agg[-1]["stderr"]
            stub_path = maybe_stub_missing_header(last_err)
            if stub_path:
                msg = (
                    f"[{iter_tag}] auto-stubbed missing header at {stub_path}; "
                    f"retrying Phase A build."
                )
                print("[i] " + msg)
                build_logs.append(msg)
                iterA += 1
                continue

        summ = summarize_build(
            ret_last, build_agg[-1]["stdout"], build_agg[-1]["stderr"]
        )
        build_logs.append(f"[{iter_tag}] build feedback:\n{summ}")

        if ret_last == 0:
            build_ok = True
            plan["linked_bc"] = linked_bc
            write_json(args.plan, plan)

            snap_build = snapshot_dir / (Path(instrumented_path).stem + ".post_build_green.c")
            write_txt(str(snap_build), read_txt(instrumented_path))
            print(f"[i] Phase A success at {iter_tag} → {linked_bc}")
            print(f"[i] Snapshot (post-build-green) → {snap_build}")
            break
        iterA += 1

    if not build_ok:
        print(
            "[!] Phase A did not reach a green build. See out/logs/rounds/* for details.",
            file=sys.stderr,
        )
        status = {
            "time": now(),
            "phaseA_build_ok": False,
            "phaseB_reached_target": False,
            "stage_symbolic_done": True,
        }
        write_json(out_dir / "status_cegir.json", status)
        sys.exit(3)

    # ============ Stage 4: Phase B (reach target with KLEE) ============
    klee_ok = False
    klee_logs = []
    linked_bc = plan.get("linked_bc", "out/build/linked.bc")

    iterB = 0
    while iterB < args.max_b:
        iter_tag = f"B{iterB:03d}"
        klee_dir = pathlib.Path("out/klee") / iter_tag
        klee_dir.mkdir(parents=True, exist_ok=True)
        print(f"[i] Phase B iteration {iter_tag} → KLEE output dir: {klee_dir}")
        klee_cmds = default_klee_cmds(plan, linked_bc, klee_dir)
        agg = []
        for cmd in klee_cmds:
            ret, out, err = sh(cmd, timeout=args.timeout)
            agg.append({"cmd": cmd, "ret": ret, "stdout": out, "stderr": err})
        write_json(rounds_dir / f"{iter_tag}.klee.json", {"steps": agg})

        res = parse_klee_result(agg[-1]["stdout"], agg[-1]["stderr"])
        if res.get("hit_assert0"):
            klee_ok = True
            snap_klee = snapshot_dir / (Path(instrumented_path).stem + ".post_klee_hit.c")
            write_txt(str(snap_klee), read_txt(instrumented_path))
            print(f"[i] Phase B success at {iter_tag} → reached target assertion.")
            print(f"[i] Snapshot (post-KLEE-hit) → {snap_klee}")
            break

        klee_summary = summarize_build(
            agg[-1]["ret"], agg[-1]["stdout"], agg[-1]["stderr"]
        )
        klee_logs.append(f"[{iter_tag}] klee feedback:\n{klee_summary}")

        refine_prompt = {
            "phase": "B",
            "goal": "Reach target statement and trigger the pre-vuln assertion then klee_assert(0)",
            "plan": plan,
            "spec": spec,
            "spec_path": spec_path,
            "last_klee_summary": klee_summary,
            "hint_protocol": textwrap.dedent(
                """
                - If path is blocked: suggest additional klee_assume or widen symbolic size/values.
                - If null deref/allocs: add minimal allocs in harness main or groomed structs.
                - If env/protocol funcs: propose stubs with realistic side-effects on state/global vars.
                - Return JSON `edits` + optional `commands`.
            """
            ).strip(),
        }

        msgs = [
            llm_mem_build,
            {"role": "user", "content": json.dumps(refine_prompt, indent=2)},
        ]
        rsp = llm_chat(msgs)
        rsp_path = rounds_dir / f"{iter_tag}.completion.json"
        write_json(rsp_path, rsp)

        content = rsp.get("choices", [{}])[0].get("message", {}).get("content", "")
        model_json = extract_json_from_text(content)
        write_json(rounds_dir / f"{iter_tag}.extracted.json", model_json)

        protected = {os.path.abspath(instrumented_path)}
        applied = apply_edits(model_json.get("edits", []), build_logs, protected_paths=protected)
        write_json(rounds_dir / f"{iter_tag}.applied.json", {"applied": applied})

        ensure_local_klee_header("out/build")
        cmds, linked_bc = default_build_cmds(plan)
        if "commands" in model_json and "build" in model_json["commands"]:
            cmds = model_json["commands"]["build"]

        build_agg = []
        for cmd in cmds:
            ret, out, err = sh(cmd, timeout=args.timeout)
            build_agg.append({"cmd": cmd, "ret": ret, "stdout": out, "stderr": err})
            if ret != 0:
                break
        write_json(rounds_dir / f"{iter_tag}.rebuild.json", {"steps": build_agg})

        iterB += 1

    status = {
        "time": now(),
        "phaseA_build_ok": build_ok,
        "phaseB_reached_target": klee_ok,
        "stage_symbolic_done": True,
    }
    write_json(out_dir / "status_cegir.json", status)
    print(f"[i] Done. Status → {status}")

if __name__ == "__main__":
    main()
