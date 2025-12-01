#include <klee/klee.h>
#include "SAX2.c"
#include "parser.h"
#include "tree.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlChar ch_buf[1024];
    int len;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(ch_buf, sizeof(ch_buf), "ch_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    xmlSAX2Characters(ctxt, ch_buf, len);
    
    return 0;
}