#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSAXHandler sax;
    void *userData;

    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_make_symbolic(&userData, sizeof(userData), "userData");

    xmlParserCtxtPtr ctxt = xmlCreatePushParserCtxt(&sax, userData, NULL, 0, NULL);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeParserCtxt(ctxt);
    }

    return 0;
}