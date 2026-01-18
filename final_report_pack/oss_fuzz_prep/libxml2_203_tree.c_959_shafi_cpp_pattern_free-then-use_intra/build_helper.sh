#!/bin/bash
echo '[*] Searching for library...'
LIB_PATH=$(find /src -name 'liblibxml2.a' -o -name 'libxml2.a' -o -name 'liblibxml2.a' | head -n 1)
if [ -z "$LIB_PATH" ] || [ ! -f "$LIB_PATH" ]; then
  echo '[!] Library not found. Attempting build...'
  if [ -d "/src/libxml2" ]; then
    cd /src/libxml2
    [ -f autogen.sh ] && ./autogen.sh
    [ -f configure ] && ./configure --disable-shared --without-python
    make -j$(nproc)
    cd -
    LIB_PATH=$(find /src -name 'liblibxml2.a' -o -name 'libxml2.a' | head -n 1)
  fi
fi
if [ -z "$LIB_PATH" ]; then echo '[!] FAIL: Could not find/build library'; exit 1; fi
echo "    Using: $LIB_PATH"
echo '[*] Compiling...'
# Compile Target as C
$CC $CFLAGS -fsanitize=address -I/src/libxml2/include -I/src/libxml2/include -c target.c -o target.o
# Compile Driver as C++
$CXX $CXXFLAGS -fsanitize=address -c standalone_driver.cc -o driver.o
# Link (Minimal Deps)
$CXX $CXXFLAGS -fsanitize=address driver.o target.o "$LIB_PATH" -o reproducer -lm -lpthread

[ -f ./reproducer ] && ./reproducer crash.bin
