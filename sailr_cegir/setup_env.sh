#!/bin/bash
# setup_env.sh: Installs Prerequisites, KLEE, and CodeQL

set -e  # Exit on error

echo "[*] Installing System Packages..."
sudo apt update && sudo apt install -y \
    build-essential autoconf automake libtool pkg-config cmake ripgrep \
    python3 python3-pip git-lfs unzip wget \
    llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev \
    libsqlite3-dev zlib1g-dev liblzma-dev libicu-dev

# Set Clang-14 as default
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14

echo "[*] Installing Python Dependencies..."
pip install --upgrade openai requests pyyaml wllvm

echo "[*] Building KLEE (with uClibc)..."
mkdir -p ~/tools && cd ~/tools

# Build klee-uclibc
if [ ! -d "klee-uclibc" ]; then
    git clone https://github.com/klee/klee-uclibc.git
    cd klee-uclibc
    ./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14
    make -j$(nproc)
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
    make -j$(nproc)
    
    # Add to bashrc if not present
    if ! grep -q "klee/build/bin" ~/.bashrc; then
        echo 'export PATH=$HOME/tools/klee/build/bin:$PATH' >> ~/.bashrc
    fi
fi

echo "[*] Installing CodeQL..."
if ! command -v codeql &> /dev/null; then
    # Assumes you have install_codeql.py in current dir
    python3 install_codeql.py
    codeql pack download codeql/cpp-queries
    codeql pack install rules/oob-pack
fi

echo "[✓] Environment Setup Complete. Please run: source ~/.bashrc"