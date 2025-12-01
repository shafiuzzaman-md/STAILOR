#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandler sax;
    void* userData;

    // Make ctxt symbolic
    ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");

    // Make sax symbolic
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler), "sax");

    // Make userData symbolic (pointer)
    userData = malloc(1);
    klee_make_symbolic(userData, 1, "userData");

    // Call the target function
    xmlInitSAXParserCtxt(ctxt, &sax, userData);

    // Cleanup
    free(ctxt);
    free(userData);

    return 0;
}