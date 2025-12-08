#!/usr/bin/env python3
# llm_utils.py
#
# Minimal helper for calling a DeepSeek/OpenAI-compatible chat endpoint.
#
# Usage:
#   from llm_utils import llm_chat
#
#   reply = llm_chat([
#       {"role": "system", "content": "You are a helpful assistant."},
#       {"role": "user", "content": "Write a harness for ..."}
#   ])
#
#   print(reply)  # -> model's reply string

import os
import sys
import time
import json
from typing import List, Dict, Any, Optional

import requests  # pip install requests


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


def llm_chat(
    messages: List[Dict[str, Any]],
    model: Optional[str] = None,
    api_base: Optional[str] = None,
    temperature: float = 0.2,
    max_tokens: Optional[int] = None,
    max_retries: int = 3,
    backoff_base: float = 3.0,
) -> str:
    """
    Call the chat-completions API and return the assistant's message content.

    `messages` must be a list like:
      [{"role": "system", "content": "..."}, {"role": "user", "content": "..."}]
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
            resp = requests.post(url, headers=headers, data=json.dumps(payload), timeout=60)
            resp.raise_for_status()
            data = resp.json()

            # OpenAI/DeepSeek-compatible response shape.
            return data["choices"][0]["message"]["content"]

        except Exception as e:  # noqa: BLE001
            last_err = e
            wait = backoff_base * (2 ** (attempt - 1))
            print(
                f"[!] llm_utils.llm_chat: attempt {attempt}/{max_retries} failed: {e}. "
                f"Retrying in {wait:.1f}s...",
                file=sys.stderr,
            )
            time.sleep(wait)

    # If we got here, all retries failed.
    raise RuntimeError(f"llm_chat failed after {max_retries} attempts") from last_err
