#!/bin/bash
# setup_env.sh: Installs Prerequisites, KLEE, and CodeQL

set -e  # Exit on error
REPO_ROOT=$(pwd)

echo "[*] Installing System Packages..."
sudo apt update && sudo apt install -y \
    build-essential autoconf automake libtool pkg-config cmake ripgrep \
    python3 python3-pip git-lfs unzip wget \
    llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev \
    libsqlite3-dev zlib1g-dev liblzma-dev libicu-dev

echo "[*] Normalizing LLVM tool names (llvm-link)..."
# WLLVM expects `llvm-link` to be discoverable on PATH; Ubuntu often only ships `llvm-link-14`.
if ! command -v llvm-link >/dev/null 2>&1; then
    if [ -x /usr/bin/llvm-link-14 ]; then
        sudo mkdir -p /usr/local/bin
        sudo ln -sf /usr/bin/llvm-link-14 /usr/local/bin/llvm-link
        hash -r
        echo "    -> Linked /usr/local/bin/llvm-link -> /usr/bin/llvm-link-14"
    else
        echo "[!] /usr/bin/llvm-link-14 not found; LLVM 14 may not be installed correctly."
        exit 1
    fi
else
    echo "    -> llvm-link already present: $(command -v llvm-link)"
fi

# Set Clang-14 as default
echo "[*] Setting Clang-14 as default..."
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14

echo "[*] Installing Python Dependencies..."
pip install --upgrade openai requests pyyaml wllvm

echo "[*] Configuring WLLVM defaults..."
# Ensure predictable WLLVM behavior across shells/sessions.
if ! grep -q "WLLVM_LLVM_LINK" ~/.bashrc; then
    {
        echo ""
        echo "# --- STAILOR / WLLVM defaults ---"
        echo "export LLVM_COMPILER=clang"
        echo "export WLLVM_LLVM_LINK=llvm-link"
    } >> ~/.bashrc
fi

echo "[*] Building KLEE (with uClibc)..."
mkdir -p ~/tools && cd ~/tools

# Build klee-uclibc
if [ ! -d "klee-uclibc" ]; then
    git clone https://github.com/klee/klee-uclibc.git
    cd klee-uclibc
    ./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14
    make -j"$(nproc)"
    cd ..
fi

# Build KLEE
if [ ! -d "klee" ]; then
    git clone https://github.com/klee/klee.git
    cd klee
    mkdir build && cd build
    cmake .. \
      -DCMAKE_C_COMPILER=clang-14 \
      -DCMAKE_CXX_COMPILER=clang++-14 \
      -DLLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config \
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
    python3 install_codeql.py
    codeql pack download codeql/cpp-queries
    codeql pack install rules/oob-pack
fi

echo "[✓] Environment Setup Complete. Please run: source ~/.bashrc"
