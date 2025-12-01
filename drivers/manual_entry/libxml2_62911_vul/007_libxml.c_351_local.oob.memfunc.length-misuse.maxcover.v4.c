#include <klee/klee.h>
#include "python/libxml.c"

int main() {
    void* context;
    int len;
    char buffer[1024];

    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");

    xmlPythonFileRead(context, buffer, len);

    return 0;
}