#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandlerPtr sax;
    int sax_is_null;

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&sax_is_null, sizeof(sax_is_null), "sax_is_null");
    if (sax_is_null) {
        sax = NULL;
    } else {
        sax = (xmlSAXHandlerPtr) malloc(sizeof(xmlSAXHandler));
        if (sax == NULL) {
            xmlFreeParserCtxt(ctxt);
            return 0;
        }
        klee_make_symbolic(&sax->initialized, sizeof(sax->initialized), "sax_initialized");
    }

    if (ctxt->sax == NULL) {
        ctxt->sax = (xmlSAXHandler *) xmlMalloc(sizeof(xmlSAXHandler));
    }
    if (ctxt->sax == NULL) {
        xmlErrMemory(NULL, "cannot initialize parser context\n");
        if (!sax_is_null && sax != NULL) {
            free(sax);
        }
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    if (sax == NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        xmlSAXVersion(ctxt->sax, 2);
        ctxt->userData = ctxt;
    } else {
        if (sax->initialized == XML_SAX2_MAGIC) {
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        } else {
            memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
        }
    }

    if (!sax_is_null && sax != NULL) {
        free(sax);
    }
    xmlFreeParserCtxt(ctxt);
    return 0;
}