#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    const char* data;
    int size;

    data = "<root xmlns='http://example.com'><child/></root>";
    size = strlen(data);

    ctxt = xmlCreateMemoryParserCtxt(data, size);
    if (ctxt == NULL) {
        return 1;
    }

    xmlParseDocument(ctxt);

    if (ctxt->myDoc) {
        xmlFreeDoc(ctxt->myDoc);
    }
    xmlFreeParserCtxt(ctxt);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}