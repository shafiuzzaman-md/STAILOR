#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandler sax;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&sax, sizeof(sax), "sax");
    
    xmlInitSAXParserCtxt(ctxt, &sax, NULL);
    
    return 0;
}