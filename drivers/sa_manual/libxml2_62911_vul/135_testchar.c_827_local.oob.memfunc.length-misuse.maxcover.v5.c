#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    LIBXML_TEST_VERSION
    xmlSetStructuredErrorFunc(NULL, errorHandler);
    
    int ret = testUTF8Chunks();
    
    // KLEE assertion for potential out-of-bounds access
    // The loop at line 826-832 compares chunks of 7 bytes from 'out' buffer
    // We need to ensure we don't read beyond allocated memory
    xmlParserCtxtPtr ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    xmlChar *out;
    int outSize;
    
    // Set up similar conditions to trigger the vulnerable path
    xmlParseChunk(ctxt, "<d>", 3, 0);
    
    char *buf = xmlMalloc(1000 * 2 + 1);
    for (int i = 0; i < 2000; i += 2)
        memcpy(buf + i, "\xCE\xB1", 2);
    buf[2000] = '\xCE';
    xmlParseChunk(ctxt, buf, 2001, 0);
    xmlFree(buf);
    
    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);
    
    xmlDocDumpMemory(ctxt->myDoc, &out, &outSize);
    
    // Assertion for potential out-of-bounds memory access
    // Check that we don't read beyond the allocated output buffer
    int i;
    for (i = 25; i < 25 + 1001 * 7; i += 7) {
        klee_assert(i + 7 <= outSize);  // Ensure we don't read past buffer end
        if (memcmp(out + i, "&#x3B1;", 7) != 0) {
            break;
        }
    }
    
    xmlFree(out);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    xmlCleanupParser();
    
    return ret;
}