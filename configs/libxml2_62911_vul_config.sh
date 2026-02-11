# configs/libxml2_62911_vul_config.sh
export CMAKE_FLAGS="-DBUILD_SHARED_LIBS=OFF -DLIBXML2_WITH_PYTHON=OFF"
export EXTRA_CFLAGS="-D_REENTRANT -fno-inline -O0"
export EXTRA_AGENT_ARGS="--timeout 900"
export MANUAL_STUBS="xmlFatalErr,__xmlRaiseError"