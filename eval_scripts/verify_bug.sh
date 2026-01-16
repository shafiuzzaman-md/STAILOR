#!/bin/bash
# verify_bug.sh
# Usage: ./verify_bug.sh <PATH_TO_BUG_DIRECTORY> [DOCKER_IMAGE]

BUG_DIR="$1"
# Heuristic to guess project name from folder (e.g., libxml2_001 -> libxml2)
PROJECT_NAME=$(basename "$BUG_DIR" | cut -d'_' -f1) 
IMAGE="${2:-gcr.io/oss-fuzz/$PROJECT_NAME}"

# 1. Validation
if [ -z "$BUG_DIR" ]; then
    echo "Usage: ./verify_bug.sh <PATH_TO_BUG_DIRECTORY> [DOCKER_IMAGE]"
    echo "Example: ./verify_bug.sh ./final_report_pack/oss_fuzz_prep/libxml2_001_SAX2..."
    exit 1
fi

if [ ! -d "$BUG_DIR" ]; then
    echo "[!] Error: Directory '$BUG_DIR' does not exist."
    exit 1
fi

if [ ! -f "$BUG_DIR/build_helper.sh" ]; then
    echo "[!] Error: 'build_helper.sh' not found in $BUG_DIR."
    echo "    Did you run generate_final_report.py first?"
    exit 1
fi

# 2. Convert to Absolute Path (Required for Docker volumes)
ABS_BUG_DIR=$(realpath "$BUG_DIR")

echo "[*] Target: $ABS_BUG_DIR"
echo "[*] Image:  $IMAGE"

# 3. Pull Image
echo "[*] Pulling Docker image..."
docker pull "$IMAGE" || { echo "[!] Failed to pull image $IMAGE."; exit 1; }

# 4. Run Verification Container (Capture exit code)
docker run --rm \
    -v "$ABS_BUG_DIR":/verify \
    -w /verify \
    -e ASAN_OPTIONS="abort_on_error=1:symbolize=1:detect_leaks=0" \
    "$IMAGE" \
    /bin/bash -c "chmod +x build_helper.sh && ./build_helper.sh"

EXIT_CODE=$?

echo "---------------------------------------------------"
if [ $EXIT_CODE -eq 0 ]; then
    echo "[?] Container finished successfully (Exit Code 0)."
    echo "    - If you see no red text above, the bug did NOT trigger (Silent Run)."
else
    echo "[!] Container exited with code $EXIT_CODE."
    echo "    - If you see 'AddressSanitizer' errors above -> VERIFIED BUG (Success!)"
    echo "    - If you see 'compilation failed' errors -> Setup Issue."
fi