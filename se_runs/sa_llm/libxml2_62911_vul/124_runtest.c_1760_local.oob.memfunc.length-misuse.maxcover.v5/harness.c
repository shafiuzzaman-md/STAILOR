#include <libxml/parser.h>
#include <libxml/HTMLparser.h>
#include <string.h>
#include <klee/klee.h>

extern xmlSAXHandler emptySAXHandler;

int main(void) {
    char filename[256];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[255] = '\0';

    int ret;
    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    if (ctxt == NULL) {
        return 1;
    }
    if (ctxt->sax == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(ctxt->sax, &emptySAXHandler, sizeof(xmlSAXHandler));

    xmlCtxtUseOptions(ctxt, options);
    xmlParseDocument(ctxt);
    ret = ctxt->wellFormed ? 0 : ctxt->errNo;
    if (ctxt->myDoc != NULL) {
        xmlFreeDoc(ctxt->myDoc);
    }
    xmlFreeParserCtxt(ctxt);

    return 0;
}