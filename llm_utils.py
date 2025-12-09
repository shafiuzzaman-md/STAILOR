#!/usr/bin/env python3
# llm_utils.py
#
# Minimal helper for calling a DeepSeek/OpenAI-compatible chat endpoint,
# with lightweight usage logging to llm_usage.tsv.
#
# Usage:
#   from llm_utils import llm_chat
#
#   reply = llm_chat(
#       [
#           {"role": "system", "content": "You are a helpful assistant."},
#           {"role": "user", "content": "Write a harness for ..."},
#       ],
#       spec_id="032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5",
#   )
#
#   print(reply)  # -> model's reply string

import os
import sys
import time
import json
from typing import List, Dict, Any, Optional

import requests  # pip install requests


# Where to log token usage, per-call.
# Override with: export LLM_USAGE_LOG=/path/to/llm_usage.tsv
LLM_USAGE_LOG = os.environ.get("LLM_USAGE_LOG", "llm_usage.tsv")


def _get_api_config() -> tuple[str, str, str]:
    """
    Resolve model, api_base, api_key from environment.

    Environment variables:
      - LLM_MODEL      (default: "deepseek-chat")
      - LLM_API_BASE   (default: "https://api.deepseek.com")
      - DEEPSEEK_API_KEY or OPENAI_API_KEY  (one of them must be set)
    """
    model = os.environ.get("LLM_MODEL", "deepseek-chat")
    api_base = os.environ.get("LLM_API_BASE", "https://api.deepseek.com").rstrip("/")
    api_key = os.environ.get("DEEPSEEK_API_KEY") or os.environ.get("OPENAI_API_KEY")

    if not api_key:
        print(
            "[!] llm_utils.llm_chat: missing DEEPSEEK_API_KEY / OPENAI_API_KEY",
            file=sys.stderr,
        )
        sys.exit(1)

    return model, api_base, api_key


def _append_llm_usage(entry: Dict[str, Any]) -> None:
    """
    Append a single usage row to LLM_USAGE_LOG (TSV).

    Columns:
      timestamp, model, spec_id, call_id, attempt,
      prompt_tokens, completion_tokens, total_tokens
    """
    headers = [
        "timestamp",
        "model",
        "spec_id",
        "call_id",
        "attempt",
        "prompt_tokens",
        "completion_tokens",
        "total_tokens",
    ]

    # Create file + header if it doesn't exist yet
    need_header = not os.path.exists(LLM_USAGE_LOG)
    try:
        with open(LLM_USAGE_LOG, "a", encoding="utf-8") as f:
            if need_header:
                f.write("\t".join(headers) + "\n")
            row = "\t".join(str(entry.get(h, "")) for h in headers)
            f.write(row + "\n")
    except Exception as e:  # noqa: BLE001
        # Logging is best-effort; never break harness generation
        print(f"[!] llm_utils: failed to write LLM usage log: {e}", file=sys.stderr)


def llm_chat(
    messages: List[Dict[str, Any]],
    model: Optional[str] = None,
    api_base: Optional[str] = None,
    temperature: float = 0.2,
    max_tokens: Optional[int] = None,
    max_retries: int = 3,
    backoff_base: float = 3.0,
    spec_id: Optional[str] = None,
) -> str:
    """
    Call the chat-completions API and return the assistant's message content.

    `messages` must be a list like:
      [{"role": "system", "content": "..."}, {"role": "user", "content": "..."}]

    New:
      - `spec_id` is optional and lets you tag calls with a SA finding id,
        e.g., "032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5".
      - Each successful call appends one row to LLM_USAGE_LOG.
    """

    env_model, env_api_base, api_key = _get_api_config()
    if model is None:
        model = env_model
    if api_base is None:
        api_base = env_api_base

    url = f"{api_base}/v1/chat/completions"
    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }

    payload: Dict[str, Any] = {
        "model": model,
        "messages": messages,
        "temperature": temperature,
    }
    if max_tokens is not None:
        payload["max_tokens"] = max_tokens

    last_err: Exception | None = None

    for attempt in range(1, max_retries + 1):
        try:
            resp = requests.post(
                url,
                headers=headers,
                data=json.dumps(payload),
                timeout=60,
            )
            resp.raise_for_status()
            data = resp.json()

            # OpenAI/DeepSeek-compatible response shape.
            content = data["choices"][0]["message"]["content"]

            # Usage block is present on most providers; be defensive.
            usage = data.get("usage") or {}
            prompt_tokens = usage.get("prompt_tokens", 0)
            completion_tokens = usage.get("completion_tokens", 0)
            total_tokens = usage.get(
                "total_tokens",
                prompt_tokens + completion_tokens,
            )

            # Best-effort usage logging
            _append_llm_usage(
                {
                    "timestamp": int(time.time()),
                    "model": model,
                    "spec_id": spec_id or "",
                    "call_id": data.get("id", ""),
                    "attempt": attempt,
                    "prompt_tokens": prompt_tokens,
                    "completion_tokens": completion_tokens,
                    "total_tokens": total_tokens,
                }
            )

            return content

        except Exception as e:  # noqa: BLE001
            last_err = e
            if attempt == max_retries:
                break
            wait = backoff_base * (2 ** (attempt - 1))
            print(
                f"[!] llm_utils.llm_chat: attempt {attempt}/{max_retries} failed: {e}. "
                f"Retrying in {wait:.1f}s...",
                file=sys.stderr,
            )
            time.sleep(wait)

    # If we got here, all retries failed.
    raise RuntimeError(f"llm_chat failed after {max_retries} attempts") from last_err
