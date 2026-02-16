#!/bin/bash
# setup_env.sh: Installs Prerequisites, KLEE, and CodeQL
# UPDATED: Fixes update-alternatives conflict (separates clang and llvm-link)
# UPDATED: Automatically manages Python virtual environment

set -e  # Exit on error
REPO_ROOT=$(pwd)

echo "[*] Installing System Packages..."
# Added llvm-14-tools to ensure llvm-link-14 / llvm-dis-14 are available
sudo apt update && sudo apt install -y \
    build-essential autoconf automake libtool pkg-config cmake ripgrep \
    python3 python3-pip python3-venv git-lfs unzip wget \
    llvm-14 llvm-14-tools clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev \
    libsqlite3-dev zlib1g-dev liblzma-dev libicu-dev

echo "[*] Normalizing LLVM tool names..."
# WLLVM expects `llvm-link` to be discoverable on PATH
if ! command -v llvm-link >/dev/null 2>&1; then
    # Prefer the one in /usr/lib/llvm-14/bin if available, else /usr/bin
    if [ -x /usr/lib/llvm-14/bin/llvm-link ]; then
        sudo ln -sf /usr/lib/llvm-14/bin/llvm-link /usr/local/bin/llvm-link
        echo "    -> Linked /usr/local/bin/llvm-link -> /usr/lib/llvm-14/bin/llvm-link"
    elif [ -x /usr/bin/llvm-link-14 ]; then
        sudo ln -sf /usr/bin/llvm-link-14 /usr/local/bin/llvm-link
        echo "    -> Linked /usr/local/bin/llvm-link -> /usr/bin/llvm-link-14"
    else
        echo "[!] llvm-link-14 not found. LLVM 14 install might be incomplete."
        exit 1
    fi
else
    echo "    -> llvm-link already present: $(command -v llvm-link)"
fi

# Configure Alternatives (Split into separate commands to avoid conflicts)
echo "[*] Configuring default Clang/LLVM versions (Priority 200)..."

# 1. Compiler Group
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 200 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14

# 2. LLVM Tools (Configured independently to avoid 'master alternative' errors)
sudo update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-14 200
sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/bin/llvm-link-14 200
sudo update-alternatives --install /usr/bin/llvm-dis llvm-dis /usr/bin/llvm-dis-14 200
sudo update-alternatives --install /usr/bin/llvm-ar llvm-ar /usr/bin/llvm-ar-14 200
sudo update-alternatives --install /usr/bin/llvm-nm llvm-nm /usr/bin/llvm-nm-14 200

echo "[*] Setting up Python Environment..."
# Define absolute path for venv
VENV_PATH="$REPO_ROOT/venv"

# Create venv if it doesn't exist
if [ ! -f "$VENV_PATH/bin/python3" ]; then
    echo "    [i] Creating new virtual environment at $VENV_PATH..."
    python3 -m venv "$VENV_PATH"
else
    echo "    [i] Found existing virtual environment at $VENV_PATH"
fi

# Install dependencies using the SPECIFIC venv binary
echo "[*] Installing Python Dependencies..."
"$VENV_PATH/bin/pip" install --upgrade pip
"$VENV_PATH/bin/pip" install --upgrade openai requests pyyaml wllvm

echo "[*] Configuring WLLVM defaults..."
# Set LLVM_COMPILER_PATH to strictly use version 14 binaries.
if ! grep -q "WLLVM_LLVM_LINK" ~/.bashrc; then
    {
        echo ""
        echo "# --- STAILOR / WLLVM defaults ---"
        echo "export LLVM_COMPILER=clang"
        # Force wllvm to use the binaries in the llvm-14 folder, ignoring /usr/bin/clang
        echo "export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin"
        echo "export WLLVM_LLVM_LINK=llvm-link"
    } >> ~/.bashrc
fi

echo "[*] Building KLEE (with uClibc)..."
mkdir -p ~/tools && cd ~/tools

# Build klee-uclibc
if [ ! -d "klee-uclibc" ]; then
    git clone https://github.com/klee/klee-uclibc.git
    cd klee-uclibc
    # Force CC to explicit clang-14 path
    ./configure --make-llvm-lib --with-cc /usr/lib/llvm-14/bin/clang --with-llvm-config /usr/lib/llvm-14/bin/llvm-config
    make -j"$(nproc)"
    cd ..
fi

# Build KLEE
if [ ! -d "klee" ]; then
    git clone https://github.com/klee/klee.git
    cd klee
    mkdir build && cd build
    # STRICTLY enforce LLVM 14 paths for CMake
    cmake .. \
      -DCMAKE_C_COMPILER=/usr/lib/llvm-14/bin/clang \
      -DCMAKE_CXX_COMPILER=/usr/lib/llvm-14/bin/clang++ \
      -DLLVM_CONFIG_BINARY=/usr/lib/llvm-14/bin/llvm-config \
      -DENABLE_POSIX_RUNTIME=ON \
      -DKLEE_UCLIBC_PATH="$HOME/tools/klee-uclibc" \
      -DENABLE_UNIT_TESTS=OFF \
      -DENABLE_SYSTEM_TESTS=OFF \
      -DENABLE_TCMALLOC=OFF \
      -DENABLE_STP=OFF \
      -DENABLE_METASMT=OFF
    make -j"$(nproc)"

    # Add to bashrc if not present
    if ! grep -q "klee/build/bin" ~/.bashrc; then
        echo 'export PATH=$HOME/tools/klee/build/bin:$PATH' >> ~/.bashrc
    fi
fi

cd "$REPO_ROOT"

echo "[*] Installing CodeQL..."
if ! command -v codeql &> /dev/null; then
    # Assumes you have install_codeql.py in current dir
    if [ -f "install_codeql.py" ]; then
        # Use the venv python to run the installer script
        "$VENV_PATH/bin/python3" install_codeql.py
        codeql pack download codeql/cpp-queries
        codeql pack install rules/oob-pack
    else
        echo "[!] install_codeql.py not found, skipping CodeQL setup."
    fi
fi

echo "[✓] Environment Setup Complete. Please run: source ~/.bashrc"