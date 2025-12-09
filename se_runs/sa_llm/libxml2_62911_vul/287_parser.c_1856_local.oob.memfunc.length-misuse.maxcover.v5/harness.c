#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    const xmlChar *atts[10];
    int maxatts;
    int i;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&maxatts, sizeof(maxatts), "maxatts");
    klee_assume(maxatts > 0);
    klee_assume(maxatts <= 100);

    if (ctxt->atts == NULL) {
        ctxt->atts = (const xmlChar **)xmlMalloc(maxatts * sizeof(const xmlChar *));
        if (ctxt->atts == NULL) {
            xmlFreeParserCtxt(ctxt);
            return 0;
        }
        for (i = 0; i < maxatts; i++) {
            ctxt->atts[i] = NULL;
        }
        ctxt->maxatts = maxatts;
        ctxt->attallocs = NULL;
    }

    klee_make_symbolic(&maxatts, sizeof(maxatts), "new_maxatts");
    klee_assume(maxatts > ctxt->maxatts);
    klee_assume(maxatts <= 200);

    if (xmlParserNsLookup(ctxt, (const xmlChar *)"", (const xmlChar *)"") >= 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeParserCtxt(ctxt);
    return 0;
}