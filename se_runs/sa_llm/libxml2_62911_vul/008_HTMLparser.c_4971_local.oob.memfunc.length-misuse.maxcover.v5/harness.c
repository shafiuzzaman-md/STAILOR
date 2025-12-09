#include <libxml/HTMLparser.h>
#include <libxml/HTMLtree.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    htmlParserCtxtPtr ctxt;
    htmlSAXHandlerPtr sax = NULL;
    void* userData = NULL;

    ctxt = htmlNewParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_make_symbolic(&userData, sizeof(userData), "userData");

    if (ctxt->sax == NULL) {
        ctxt->sax = (htmlSAXHandler *) xmlMalloc(sizeof(htmlSAXHandler));
    }
    if (ctxt->sax == NULL) {
        htmlFreeParserCtxt(ctxt);
        return 0;
    }

    if (sax == NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(ctxt->sax, 0, sizeof(htmlSAXHandler));
        xmlSAX2InitHtmlDefaultSAXHandler(ctxt->sax);
        ctxt->userData = ctxt;
    } else {
        memcpy(ctxt->sax, sax, sizeof(htmlSAXHandler));
        ctxt->userData = userData ? userData : ctxt;
    }

    htmlFreeParserCtxt(ctxt);
    return 0;
}