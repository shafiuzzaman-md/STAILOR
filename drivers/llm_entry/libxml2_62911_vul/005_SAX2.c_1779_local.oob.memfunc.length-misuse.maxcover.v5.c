#include <klee/klee.h>
#include "SAX2.c"
#include "parser.h"
#include "tree.h"

int main() {
    xmlParserCtxtPtr ctxt;
    const xmlChar *str;
    int len;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_assume(ctxt != NULL);
    
    klee_make_symbolic(&ctxt->dictNames, sizeof(ctxt->dictNames), "dictNames");
    klee_make_symbolic(&ctxt->options, sizeof(ctxt->options), "options");
    klee_make_symbolic(&ctxt->freeElems, sizeof(ctxt->freeElems), "freeElems");
    klee_make_symbolic(&ctxt->freeElemsNr, sizeof(ctxt->freeElemsNr), "freeElemsNr");
    klee_make_symbolic(&ctxt->dict, sizeof(ctxt->dict), "dict");

    char str_buffer[64];
    klee_make_symbolic(str_buffer, sizeof(str_buffer), "str_buffer");
    str = (const xmlChar*)str_buffer;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 64);

    xmlSAX2TextNode(ctxt, str, len);

    return 0;
}