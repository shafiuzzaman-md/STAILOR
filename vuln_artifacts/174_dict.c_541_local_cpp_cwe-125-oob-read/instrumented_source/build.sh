#!/usr/bin/env bash
set -euo pipefail

ROOT="$(pwd)"
PREFIX="$ROOT/_inst"
BUILD_DIR="$ROOT/build"
NPROC="$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 4)"

echo "[codeql-build] Root: $ROOT"
echo "[codeql-build] Prefix: $PREFIX"

need() { command -v "$1" >/dev/null 2>&1 || { echo "Missing: $1"; exit 2; }; }

if [ -f "configure.ac" ] || [ -f "configure.in" ] || [ -f "autogen.sh" ]; then
  need autoreconf
  if ! command -v libtoolize >/dev/null 2>&1 && ! command -v libtool >/dev/null 2>&1; then
    echo "Missing: libtool (or libtoolize)"; exit 2
  fi
  need automake
  need pkg-config
fi

mkdir -p "$BUILD_DIR" "$PREFIX"

if [ -f "CMakeLists.txt" ]; then
  echo "[codeql-build] CMake project detected"
  cmake -S . -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_C_COMPILER="${CC:-cc}" -DCMAKE_CXX_COMPILER="${CXX:-c++}" \
        -DCMAKE_INSTALL_PREFIX="$PREFIX"
  cmake --build "$BUILD_DIR" -j"$NPROC" || true
  cmake --install "$BUILD_DIR" || true
else
  echo "[codeql-build] Autotools/Make project assumed"
  if [ -f "autogen.sh" ]; then
    ./autogen.sh || true
  elif [ ! -f "configure" ] && { [ -f "configure.ac" ] || [ -f "configure.in" ]; }; then
    autoreconf -fi || true
  fi
  if [ -f "configure" ]; then
    CC=${CC:-gcc} ./configure --without-python --prefix="$PREFIX" || true
  fi
  make -j"$NPROC" || true
  make install || true
fi

cat > "$BUILD_DIR/_probe.c" <<'EOF'
#include <stdio.h>
#ifdef __has_include
# if __has_include(<libxml/parser.h>)
#  include <libxml/parser.h>
# endif
#endif
int main() {
#ifdef LIBXML_TEST_VERSION
  xmlInitParser();
  xmlCleanupParser();
#endif
  puts("probe");
  return 0;
}
EOF

if command -v pkg-config >/dev/null 2>&1 && pkg-config --exists libxml-2.0 2>/dev/null; then
  cc $(pkg-config --cflags libxml-2.0) "$BUILD_DIR/_probe.c" \
     $(pkg-config --libs libxml-2.0) -o "$BUILD_DIR/_probe" || true
else
  cc -I"$PREFIX/include" -I"$PREFIX/include/libxml2" \
     -L"$PREFIX/lib" "$BUILD_DIR/_probe.c" \
     -lxml2 -o "$BUILD_DIR/_probe" || true
fi

echo "[codeql-build] Done."
