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
    int ret = 0;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    xmlParseChunk(ctxt, "<d>", 3, 0);

    buf = xmlMalloc(1000 * 2 + 1);
    for (i = 0; i < 2000; i += 2)
        memcpy(buf + i, "\xCE\xB1", 2);
    buf[i] = '\xCE';
    xmlParseChunk(ctxt, buf, 2001, 0);
    xmlFree(buf);

    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);

    xmlDocDumpMemory(ctxt->myDoc, &out, &outSize);
    
    if (strncmp((char *) out, "<?xml version=\"1.0\"?>\n<d>", 25) == 0) {
        for (i = 25; i < 25 + 1001 * 7; i += 7) {
            klee_assert(i + 7 <= outSize && "Potential out-of-bounds access in memcmp");
            if (memcmp(out + i, "&#x3B1;", 7) != 0) {
                ret += 1;
                goto error;
            }
        }
    }

error:
    xmlFree(out);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    xmlCleanupParser();
    return ret;
}