#!/usr/bin/env python3
"""
get_releases_from_arvo_id_nodb.py

Given one or more ARVO/CyberGym vulnerability IDs (e.g., 62911 66502):

1. Uses ARVO Docker images:
     n132/arvo:<id>-vul
     n132/arvo:<id>-fix
   to discover the vulnerable and fixed commits by:

   - searching for a .git directory (usually under /src)
   - cd'ing into the project root
   - running 'git rev-parse HEAD'

2. Uses a *local* upstream git repo (e.g., libxml2) to find the nearest
   release tag for each commit via 'git describe'.

3. Appends one JSON object per ID to an output file in JSON Lines format
   (JSONL). By default, the file is:
      arvo_release_map.jsonl

   Each line is a dict of the form:
   {
     "arvo_id": 62911,
     "vulnerable": { "commit": "...", "tag": "...", "release": "..." },
     "fixed":     { "commit": "...", "tag": "...", "release": "..." }
   }

Example (libxml2):

  python3 get_releases_from_arvo_id_nodb.py \
      --repo /path/to/libxml2 \
      62911 66502

  # or specify a custom output file
  python3 get_releases_from_arvo_id_nodb.py \
      --repo /path/to/libxml2 \
      --out my_versions.jsonl \
      62911
"""

import argparse
import json
import subprocess
import sys
from pathlib import Path


# ---------------------- helpers ----------------------

def run_cmd(cmd, cwd=None) -> str:
    """Run a command and return stdout (stripped)."""
    try:
        out = subprocess.check_output(
            cmd,
            stderr=subprocess.STDOUT,
            cwd=cwd,
            text=True,
        )
        return out.strip()
    except subprocess.CalledProcessError as e:
        print(f"[!] Command failed: {' '.join(cmd)}", file=sys.stderr)
        print(e.output, file=sys.stderr)
        raise


def run_git(repo: Path, *args: str) -> str:
    """Run a git command inside the upstream repo."""
    cmd = ["git", "-C", str(repo)] + list(args)
    return run_cmd(cmd)


def find_commit_from_docker(arvo_id: int, flavor: str) -> str | None:
    """
    Run the ARVO Docker image n132/arvo:<id>-<flavor> to discover a commit.

    flavor: 'vul' or 'fix'

    Strategy:
      - Inside container, search under /src for a .git directory
      - cd into its parent (the project root)
      - run 'git rev-parse HEAD'
    """
    assert flavor in ("vul", "fix")
    image = f"n132/arvo:{arvo_id}-{flavor}"
    print(f"[i] Attempting to get {flavor} commit from Docker image {image} ...", file=sys.stderr)

    # Pull image (will no-op if already present)
    try:
        run_cmd(["docker", "pull", image])
    except Exception:
        print(f"[!] Failed to pull Docker image {image}. Is Docker installed and logged in?", file=sys.stderr)
        return None

    inner_script = r"""
set -e
if [ -d /src ]; then
  root=$(find /src -maxdepth 6 -name .git -type d | head -n1 || true)
else
  root=$(find / -maxdepth 10 -name .git -type d | head -n1 || true)
fi
if [ -z "$root" ]; then
  echo "NO_GIT_ROOT"
  exit 1
fi
proj=${root%/.git}
cd "$proj"
git rev-parse HEAD
"""

    try:
        commit = run_cmd([
            "docker", "run", "--rm", image,
            "bash", "-lc", inner_script
        ])
    except Exception:
        return None

    if commit == "NO_GIT_ROOT" or not commit:
        print(f"[!] Could not locate project .git inside container for {image}", file=sys.stderr)
        return None

    return commit.strip()


def commit_to_tag(repo: Path, commit: str | None, label: str):
    """Map a commit to a tag + normalized release string."""
    if commit is None:
        return None, None

    try:
        tag = run_git(repo, "describe", "--tags", "--abbrev=0", commit)
    except Exception:
        print(f"[i] 'git describe' failed for {label}; trying 'git tag --contains' fallback ...", file=sys.stderr)
        try:
            tag_list = run_git(repo, "tag", "--contains", commit)
        except Exception:
            print(f"[!] Could not find any tag containing the commit for {label}.", file=sys.stderr)
            return None, None
        tags = [t.strip() for t in tag_list.splitlines() if t.strip()]
        if not tags:
            print(f"[!] No tags contain this commit for {label}.", file=sys.stderr)
            return None, None
        tags.sort()
        tag = tags[0]

    release = tag[1:] if tag.startswith("v") else tag
    return tag, release


# ---------------------- main ----------------------

def main():
    ap = argparse.ArgumentParser(
        description="Map ARVO/CyberGym ID(s) to upstream release tags for vulnerable and fixed versions (no arvo.db)."
    )
    ap.add_argument(
        "arvo_ids",
        type=int,
        nargs="+",
        help="One or more ARVO/CyberGym vulnerability IDs (e.g., 62911 66502)",
    )
    ap.add_argument(
        "--repo",
        required=True,
        help="Path to cloned upstream git repo (e.g., libxml2)",
    )
    ap.add_argument(
        "--out",
        default="arvo_release_map.jsonl",
        help="Output JSONL file (append mode). Default: arvo_release_map.jsonl",
    )
    args = ap.parse_args()

    repo = Path(args.repo).resolve()
    if not (repo / ".git").is_dir():
        print(f"[!] {repo} does not look like a git repo (missing .git)", file=sys.stderr)
        sys.exit(1)

    out_path = Path(args.out).resolve()
    print(f"[i] Results will be appended to: {out_path}", file=sys.stderr)

    # Open output file in append mode once
    with out_path.open("a", encoding="utf-8") as f_out:
        for arvo_id in args.arvo_ids:
            print(f"\n=== ARVO ID: {arvo_id} ===")
            # 1) Get commits from Docker
            vul_commit = find_commit_from_docker(arvo_id, "vul")
            fix_commit = find_commit_from_docker(arvo_id, "fix")

            if vul_commit is None and fix_commit is None:
                print(f"[!] Could not determine vulnerable or fixed commit for {arvo_id} from Docker images.", file=sys.stderr)
                # still write a stub record so it's visible in the log file
                result = {
                    "arvo_id": arvo_id,
                    "vulnerable": {"commit": None, "tag": None, "release": None},
                    "fixed":      {"commit": None, "tag": None, "release": None},
                }
                f_out.write(json.dumps(result) + "\n")
                f_out.flush()
                continue

            print(f"ARVO ID: {arvo_id}")
            print(f"  Vulnerable commit: {vul_commit if vul_commit else '<unknown>'}")
            print(f"  Fixed commit:      {fix_commit if fix_commit else '<unknown>'}")

            # 2) Map commits to tags
            vul_tag, vul_release = commit_to_tag(repo, vul_commit, "vulnerable")
            fix_tag, fix_release = commit_to_tag(repo, fix_commit, "fixed")

            if vul_tag:
                print(f"  Vulnerable tag:    {vul_tag}")
                print(f"  Vulnerable rel:    {vul_release}")
            else:
                print("  Vulnerable tag:    <unknown>")

            if fix_tag:
                print(f"  Fixed tag:        {fix_tag}")
                print(f"  Fixed rel:        {fix_release}")
            else:
                print("  Fixed tag:        <unknown>")

            # 3) Append JSONL record
            result = {
                "arvo_id": arvo_id,
                "vulnerable": {
                    "commit": vul_commit,
                    "tag": vul_tag,
                    "release": vul_release,
                },
                "fixed": {
                    "commit": fix_commit,
                    "tag": fix_tag,
                    "release": fix_release,
                },
            }
            f_out.write(json.dumps(result) + "\n")
            f_out.flush()
            print(f"[i] Appended record for ARVO {arvo_id} to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
