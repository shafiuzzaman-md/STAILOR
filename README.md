# SAILR
Automated pipeline for CodeQL-based and LLM-assisted symbolic execution with KLEE.

## Prerequisites
### System packages
```
sudo apt update && sudo apt install -y \
    unzip wget git python3 python3-pip \
    build-essential autoconf automake libtool pkg-config \
    cmake zlib1g-dev liblzma-dev libicu-dev \
    git-lfs
```

### Compiler toolchain (LLVM/Clang 14):
```
sudo apt-get install -y llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev

sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14 \
  --slave /usr/bin/clang-cpp clang-cpp /usr/bin/clang-cpp-14

sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/lib/llvm-14/bin/llvm-link 140
sudo update-alternatives --install /usr/bin/opt       opt       /usr/lib/llvm-14/bin/opt       140

```
Verify:
```
clang --version
llvm-link --version
opt --version
```
All should print 14.0.6.

Python dependencies:
```
pip install --upgrade openai --break-system-packages
python3 -m pip install --user requests pyyaml --break-system-packages
```
### Build KLEE:
```
# Install dependencies
sudo apt-get update
sudo apt-get install -y libsqlite3-dev

mkdir -p ~/tools && cd ~/tools

# Build klee-uclibc
git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14
make -j2
cd ..

# Build KLEE
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
echo 'export PATH=$HOME/tools/klee/build/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```


Verify:

```
which klee
klee --version
ls ~/tools/klee/include/klee/klee.h
```
### Install CodeQL
```
python3 install_codeql.py
source ~/.bashrc
```
## Extract dataset (example)
Source code:
```
python3 extract_from_cybergym.py arvo:62911 libxml2
```
Metadata for ground truth:
```
python3 fetch_cybergym_data.py --repo-dir ./cybergym_data arvo:62911
```
## Static Analysis Phase
### Download queries (example)
```
codeql pack download codeql/cpp-queries
codeql pack install rules/oob-pack
```
```
codeql pack install rules/uaf-pack \
  --search-path "/home/shafi/codeql-cli/codeql:/home/shafi/.codeql/packages"
```
### Run CodeQL (example)
chmod +x codeql_scan.sh 
```
./codeql_scan.sh \
  PROJECT_NAME=libxml2_62911_vul \
  SRC_ROOT=./dataset/62911/libxml2_62911_vul \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/oob-pack/suites/oob-read.qls" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false
```

### Extract Vul Specs (example)
```
python3 scripts/make_vul_specs.py \
  --findings sa_outputs/libxml2_62911_vul/findings.json \
  --facts sa_outputs/libxml2_62911_vul/fact_pack.json \
  --out specs/libxml2_62911_vul
```

## LLM Refinement (example)

export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY

chmod +x run_pipeline.sh 
```
./run_pipeline.sh \
  --sa-out sa_outputs/libxml2_62911_vul \
  --dataset dataset \
  --target "62911/libxml2_62911_vul:dict.c:541" \
  --rule local.oob.memfunc.length-misuse \
  --spec specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \
  --model deepseek-chat \
  --api-base https://api.deepseek.com
```


  
