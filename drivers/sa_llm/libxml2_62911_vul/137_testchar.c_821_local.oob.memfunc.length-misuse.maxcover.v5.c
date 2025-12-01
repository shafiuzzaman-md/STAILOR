#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlChar *out;
    int outSize;
    char *buf;
    int i;

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
    
    klee_assert(out != NULL && outSize >= 25);
    
    if (strncmp((char *) out, "<?xml version=\"1.0\"?>\n<d>", 25) != 0) {
        fprintf(stderr, "failed UTF-8 chunk test 2-1\n");
        goto error;
    }
    for (i = 25; i < 25 + 1001 * 7; i += 7) {
        klee_assert(i + 7 <= outSize);
        if (memcmp(out + i, "&#x3B1;", 7) != 0) {
            fprintf(stderr, "failed UTF-8 chunk test 2-2 %d\n", i);
            goto error;
        }
    }
    klee_assert(i + 5 <= outSize);
    if (strcmp((char *) out + i, "</d>\n") != 0) {
        fprintf(stderr, "failed UTF-8 chunk test 2-3\n");
        goto error;
    }

error:
    xmlFree(out);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);

    return 0;
}