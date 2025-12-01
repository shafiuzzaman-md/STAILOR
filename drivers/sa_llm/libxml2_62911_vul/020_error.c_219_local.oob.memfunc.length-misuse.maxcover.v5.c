#include <klee/klee.h>
#include "error.c"

int main() {
    xmlParserInput input;
    xmlGenericErrorFunc channel = xmlGenericError;
    void* data = xmlGenericErrorContext;

    klee_make_symbolic(&input, sizeof(input), "input");
    
    input.cur = klee_malloc(100);
    input.base = klee_malloc(100);
    input.end = input.base + 100;
    klee_make_symbolic(input.cur, 100, "input_cur");
    klee_make_symbolic(input.base, 100, "input_base");
    
    xmlParserPrintFileContextInternal(&input, channel, data);
    
    return 0;
}