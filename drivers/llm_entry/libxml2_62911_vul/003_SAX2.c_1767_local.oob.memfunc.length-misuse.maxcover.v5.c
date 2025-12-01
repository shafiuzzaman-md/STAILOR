#include <klee/klee.h>
#include "SAX2.c"

int main() {
    xmlParserCtxtPtr ctxt;
    const xmlChar *str;
    int len;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");

    xmlSAX2TextNode(ctxt, str, len);
    
    return 0;
}