#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

extern xmlSAXHandler debugSAX2Handler;

int main(void) {
    char filename[256];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[255] = '\0';

    int ret = 0;
    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    if (ctxt == NULL) {
        return 1;
    }

    if (options & XML_PARSE_SAX1) {
        memcpy(ctxt->sax, &debugSAX2Handler, sizeof(xmlSAXHandler));
        options -= XML_PARSE_SAX1;
    } else {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ctxt->sax, &debugSAX2Handler, sizeof(xmlSAXHandler));
    }

    xmlCtxtUseOptions(ctxt, options);
    xmlParseDocument(ctxt);
    ret = ctxt->wellFormed ? 0 : ctxt->errNo;
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);

    return ret;
}