#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    xmlDocPtr doc = NULL;
    xmlParserCtxtPtr ctxt = NULL;
    xmlChar *out = NULL;
    int outSize = 0;
    int i;
    unsigned char *buf;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    if (ctxt == NULL) {
        return 1;
    }

    buf = (unsigned char *)malloc(2001);
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    for (i = 0; i < 1000; i++) {
        buf[i] = '\xCE';
        buf[i + 1] = '\xB1';
    }
    buf[2000] = '\0';

    xmlParseChunk(ctxt, (const char *)"<d>", 3, 0);
    xmlParseChunk(ctxt, (const char *)buf, 2001, 0);
    xmlFree(buf);

    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);

    doc = ctxt->myDoc;
    if (doc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    xmlDocDumpMemory(doc, &out, &outSize);

    klee_make_symbolic(&outSize, sizeof(outSize), "outSize");
    klee_assume(outSize >= 0);

    if (out != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        if (strncmp((char *)out, "<?xml version=\"1.0\"?>\n<d>", 25) != 0) {
            SAILR_ASSERT(outSize < 25);
        }
    }

    if (out != NULL) {
        xmlFree(out);
    }
    xmlFreeParserCtxt(ctxt);
    return 0;
}