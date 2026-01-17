#!/bin/bash
# run_full_verification.sh
# Usage: ./run_full_verification.sh -m <mode>

# --- CONFIGURATION ---
SERVER_USER="adsadmin"
SERVER_HOST="piccolo.cs.ucsb.edu"
PROXY_USER="shafi"
PROXY_HOST="maracas.cs.ucsb.edu"

# Remote path (Must end with slash /)
REMOTE_PATH="/home/adsadmin/shafi/STAILOR/se_runs/sailr_cegir/"

# Local paths
LOCAL_RUNS_DIR="se_runs/sailr_cegir"
LOCAL_SRC_ROOT="dataset/libxml2" 
OUTPUT_DIR="./final_report_pack"

# Python Scripts
REPORT_SCRIPT="eval_scripts/generate_final_report.py"
PREP_SCRIPT="eval_scripts/oss_fuzz_prep.py"

# Docker
DOCKER_IMAGE="gcr.io/oss-fuzz/libxml2"

# ---------------------------------------------------------

MODE="remote"
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -m|--mode) MODE="$2"; shift ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
    shift
done

echo "======================================================="
echo "   STAILOR SMART VERIFICATION PIPELINE"
echo "   Mode: $MODE"
echo "======================================================="

# Ensure local dir exists
mkdir -p "$LOCAL_RUNS_DIR"

# Define connection options using arrays (Safer than eval)
RSYNC_BASE=(-avz --partial --append-verify)
SOURCE=""

if [[ "$MODE" == "remote" ]]; then
    # -e takes multiple arguments, so we keep it as one string in the array logic
    SSH_CMD="ssh -J $PROXY_USER@$PROXY_HOST"
    SOURCE="$SERVER_USER@$SERVER_HOST:$REMOTE_PATH"
elif [[ "$MODE" == "proxy" ]]; then
    SSH_CMD="ssh"
    SOURCE="$SERVER_USER@$SERVER_HOST:$REMOTE_PATH"
elif [[ "$MODE" == "server" ]]; then
    SSH_CMD=""
    SOURCE="$REMOTE_PATH"
else
    echo "[!] Error: Invalid mode '$MODE'."
    exit 1
fi

# Helper to run rsync with or without SSH
run_rsync() {
    if [[ -n "$SSH_CMD" ]]; then
        rsync "${RSYNC_BASE[@]}" -e "$SSH_CMD" "$@"
    else
        rsync "${RSYNC_BASE[@]}" "$@"
    fi
}

# --- STEP 1: FETCH SUMMARIES ONLY ---
echo ""
echo "[1/3] Fetching summary.tsv files..."

# Fetch structure and summaries (exclude everything else)
# Note: quoting '*' prevents shell expansion
run_rsync --include '*/' --include 'summary.tsv' --exclude '*' "$SOURCE" "$LOCAL_RUNS_DIR/"

# --- STEP 2: PARSE CONFIRMED BUGS ---
echo "      Parsing summaries for CONFIRMED bugs..."
TARGET_LIST="confirmed_targets.txt"
> "$TARGET_LIST"

# Find all downloaded summary.tsv files
find "$LOCAL_RUNS_DIR" -name "summary.tsv" | while read summary_file; do
    PROJ_DIR=$(dirname "$summary_file")
    PROJ_NAME=$(basename "$PROJ_DIR")
    
    # Grep for Confirmed bugs
    grep "H2_BUG_CONFIRMED" "$summary_file" | awk -v p="$PROJ_NAME" '{print p"/"$1"/"}' >> "$TARGET_LIST"
done

BUG_COUNT=$(wc -l < "$TARGET_LIST")
if [ "$BUG_COUNT" -eq 0 ]; then
    echo "[!] No CONFIRMED bugs found in summaries. Exiting."
    exit 0
fi

echo "      Found $BUG_COUNT confirmed bugs. Downloading artifacts..."

# --- STEP 3: DOWNLOAD TARGETED DIRECTORIES ---
echo ""
echo "[2/3] Downloading bug artifacts..."

# Download only the folders listed in confirmed_targets.txt
run_rsync \
    --files-from="$TARGET_LIST" \
    --exclude '**/*.ll' \
    --exclude '**/*.bc' \
    --exclude '**/*.istats' \
    --exclude '**/*.stats' \
    --exclude '**/*.pdf' \
    --exclude '**/klee-out-*/assembly.ll' \
    --exclude '**/klee-out-*/run.istats' \
    "$SOURCE" "$LOCAL_RUNS_DIR/"

echo "[✓] Smart Download complete."

# --- STEP 4: GENERATE & VERIFY ---
echo ""
echo "[3/3] Generating Artifacts & Verifying..."

if [ ! -f "$REPORT_SCRIPT" ] || [ ! -f "$PREP_SCRIPT" ]; then
    echo "[!] Error: Python scripts not found in 'eval_scripts/'."
    exit 1
fi

# A. Generate Report (UPDATED WITH --src-root)
python3 "$REPORT_SCRIPT" \
    --runs-root "$LOCAL_RUNS_DIR" \
    --src-root "$LOCAL_SRC_ROOT" \
    --ground-truth "cybergym_data.csv" \
    --output-dir "$OUTPUT_DIR" > /dev/null

# B. Generate Prep Files
python3 "$PREP_SCRIPT" --runs-root "$LOCAL_RUNS_DIR" --output-dir "$OUTPUT_DIR"

if [ ! -d "$OUTPUT_DIR/oss_fuzz_prep" ]; then
    echo "[!] Error: 'oss_fuzz_prep' folder was not created."
    exit 1
fi

# C. Run Verification in Docker
SUMMARY_LOG="$OUTPUT_DIR/verification_summary.txt"
echo "VERIFICATION SUMMARY - $(date)" > "$SUMMARY_LOG"
echo "---------------------------------------------------" >> "$SUMMARY_LOG"

echo "      Pulling Docker image ($DOCKER_IMAGE)..."
docker pull "$DOCKER_IMAGE" || echo "[!] Warning: Failed to pull image."

VERIFIED_COUNT=0

# Loop through generated prep folders
shopt -s nullglob
for bug_dir in "$OUTPUT_DIR/oss_fuzz_prep"/*/; do
    BUG_NAME=$(basename "$bug_dir")
    echo "      Testing: $BUG_NAME..."
    
    LOG_FILE="$bug_dir/verification.log"
    chmod +x "$bug_dir/build_helper.sh"

    docker run --rm \
        -v "$(realpath "$bug_dir")":/verify \
        -w /verify \
        -e ASAN_OPTIONS="abort_on_error=1:symbolize=1:detect_leaks=0" \
        "$DOCKER_IMAGE" \
        /bin/bash -c "./build_helper.sh" > "$LOG_FILE" 2>&1
    
    if grep -q "AddressSanitizer:.*overflow" "$LOG_FILE" || \
       grep -q "AddressSanitizer:.*use-after-free" "$LOG_FILE" || \
       grep -q "SEGV" "$LOG_FILE"; then
        echo "      [VERIFIED] Crash confirmed!"
        echo "[VERIFIED] $BUG_NAME" >> "$SUMMARY_LOG"
        VERIFIED_COUNT=$((VERIFIED_COUNT+1))
    else
        echo "      [FAILED]   No crash detected. (See log below)"
        echo "[FAILED]   $BUG_NAME" >> "$SUMMARY_LOG"
        # Print last 3 lines of failure to see WHY (Compilation error? Run error?)
        tail -n 3 "$LOG_FILE" | sed 's/^/          /' 
    fi
done

echo ""
echo "[4/3] Generating Crash Reports (description.txt & error.txt)..."
GEN_REPORT_SCRIPT="eval_scripts/generate_crash_report.py"

if [ -f "$GEN_REPORT_SCRIPT" ]; then
    # We pass the same OUTPUT_DIR defined at the top of your script
    python3 "$GEN_REPORT_SCRIPT" --output-dir "$OUTPUT_DIR"
else
    echo "[!] Warning: $GEN_REPORT_SCRIPT not found. Skipping report generation."
fi

echo ""
echo "======================================================="
echo "   FINAL RESULTS"
echo "   Verified: $VERIFIED_COUNT / $BUG_COUNT"
echo "======================================================="