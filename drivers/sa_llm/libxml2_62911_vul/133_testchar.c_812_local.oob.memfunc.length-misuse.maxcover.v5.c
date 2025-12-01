#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    LIBXML_TEST_VERSION
    xmlSetStructuredErrorFunc(NULL, errorHandler);

    xmlParserCtxtPtr ctxt;
    xmlChar *out;
    int outSize;
    char *buf;
    int i;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    xmlParseChunk(ctxt, "<d>", 3, 0);

    buf = xmlMalloc(1000 * 2 + 1);
    for (i = 0; i < 2000; i += 2) {
        klee_assert(i < 1000 * 2);
        memcpy(buf + i, "\xCE\xB1", 2);
    }
    buf[i] = '\xCE';
    xmlParseChunk(ctxt, buf, 2001, 0);
    xmlFree(buf);

    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);

    xmlDocDumpMemory(ctxt->myDoc, &out, &outSize);
    xmlFree(out);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);

    xmlCleanupParser();
    return 0;
}