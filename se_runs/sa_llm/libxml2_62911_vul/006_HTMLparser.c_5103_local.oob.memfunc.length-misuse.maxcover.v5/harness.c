#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSAXHandlerPtr sax;
    void *userData;

    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_make_symbolic(&userData, sizeof(userData), "userData");

    xmlParserCtxtPtr ctxt = htmlCreateMemoryParserCtxt("", 0);
    if (ctxt != NULL) {
        htmlFreeParserCtxt(ctxt);
    }

    ctxt = htmlCreateMemoryParserCtxt("<html>", 6);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        htmlFreeParserCtxt(ctxt);
    }

    return 0;
}