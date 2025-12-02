#!/usr/bin/env python3
"""
call_llm.py

Tiny CLI wrapper around an OpenAI-compatible chat completion API.

Reads:
  --model         model name (e.g., deepseek-chat)
  --api-base      base URL (e.g., https://api.deepseek.com or https://api.openai.com)
  --system-prompt system message
  --user-prompt   user message

Prints ONLY the assistant's message content to stdout (so the shell
can redirect it directly into a .c file).
"""

import argparse
import os
import sys
import json
import requests


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", required=True)
    parser.add_argument("--api-base", required=True,
                        help="Base URL, e.g., https://api.deepseek.com")
    parser.add_argument("--system-prompt", required=True)
    parser.add_argument("--user-prompt", required=True)
    parser.add_argument("--api-key-env", default="DEEPSEEK_API_KEY",
                        help="Env var name for API key (default: DEEPSEEK_API_KEY)")
    parser.add_argument("--temperature", type=float, default=0.0)
    args = parser.parse_args()

    api_key = os.getenv(args.api_key_env)
    if not api_key:
        print(f"ERROR: API key not found in environment variable {args.api_key_env}",
              file=sys.stderr)
        sys.exit(1)

    # Many providers use OpenAI-compatible /v1/chat/completions
    url = args.api_base.rstrip("/") + "/v1/chat/completions"

    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }

    payload = {
        "model": args.model,
        "temperature": args.temperature,
        "messages": [
            {"role": "system", "content": args.system_prompt},
            {"role": "user", "content": args.user_prompt},
        ],
    }

    try:
        resp = requests.post(url, headers=headers, data=json.dumps(payload), timeout=120)
    except Exception as e:
        print(f"ERROR: request failed: {e}", file=sys.stderr)
        sys.exit(1)

    if resp.status_code != 200:
        print(f"ERROR: API returned {resp.status_code}: {resp.text}", file=sys.stderr)
        sys.exit(1)

    data = resp.json()
    try:
        content = data["choices"][0]["message"]["content"]
    except Exception:
        print(f"ERROR: unexpected response format: {json.dumps(data, indent=2)}",
              file=sys.stderr)
        sys.exit(1)

    # IMPORTANT: print only the content, no extra text
    sys.stdout.write(content)


if __name__ == "__main__":
    main()
