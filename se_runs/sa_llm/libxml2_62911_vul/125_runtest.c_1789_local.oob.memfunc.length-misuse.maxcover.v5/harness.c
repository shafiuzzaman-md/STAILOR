#include <libxml/parser.h>
#include <libxml/HTMLparser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    char filename[256];
    int options;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");

    filename[255] = '\0';

    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    if (ctxt == NULL) {
        return 1;
    }

    if (options & XML_PARSE_SAX1) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ctxt->sax, debugSAXHandler, sizeof(xmlSAXHandler));
        options -= XML_PARSE_SAX1;
    } else {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ctxt->sax, debugSAX2Handler, sizeof(xmlSAXHandler));
    }

    xmlCtxtUseOptions(ctxt, options);
    xmlFreeParserCtxt(ctxt);

    return 0;
}