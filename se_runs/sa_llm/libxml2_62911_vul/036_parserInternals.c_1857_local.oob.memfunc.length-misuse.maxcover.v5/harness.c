#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandlerPtr sax;
    xmlSAXHandler sax_struct;
    void *userData;

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return 0;

    sax = &sax_struct;
    klee_make_symbolic(&sax_struct, sizeof(xmlSAXHandler), "sax_struct");
    klee_make_symbolic(&userData, sizeof(void*), "userData");

    if (sax->initialized == XML_SAX2_MAGIC) {
        memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
    } else {
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
    }
    ctxt->userData = userData ? userData : ctxt;

    xmlFreeParserCtxt(ctxt);
    return 0;
}