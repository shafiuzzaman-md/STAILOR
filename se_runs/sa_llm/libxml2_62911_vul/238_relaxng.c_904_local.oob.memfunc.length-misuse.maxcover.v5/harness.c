#include <libxml/relaxng.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr ctxt;
    xmlRelaxNGDefinePtr def;
    xmlNodePtr node;
    int defNr_init;

    ctxt = xmlRelaxNGNewParserCtxt("test.rng");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&defNr_init, sizeof(defNr_init), "defNr_init");
    klee_assume(defNr_init >= 0);
    klee_assume(defNr_init < 1000);

    ctxt->defNr = defNr_init;
    if (ctxt->defNr > 0) {
        ctxt->defTab = (xmlRelaxNGDefinePtr *) xmlMalloc(ctxt->defNr * sizeof(xmlRelaxNGDefinePtr));
        klee_assume(ctxt->defTab != NULL);
        for (int i = 0; i < ctxt->defNr; i++) {
            ctxt->defTab[i] = NULL;
        }
    } else {
        ctxt->defTab = NULL;
    }

    node = xmlNewNode(NULL, "test");
    klee_assume(node != NULL);

    def = xmlRelaxNGNewDefine(ctxt, node);
    if (def != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (ctxt->defTab != NULL) {
        xmlFree(ctxt->defTab);
    }
    xmlRelaxNGFreeParserCtxt(ctxt);
    xmlFreeNode(node);
    return 0;
}