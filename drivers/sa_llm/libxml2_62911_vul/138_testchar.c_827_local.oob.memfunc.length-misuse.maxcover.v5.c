#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    // Initialize libxml2
    LIBXML_TEST_VERSION
    xmlSetStructuredErrorFunc(NULL, errorHandler);

    // Call the function containing the suspicious line
    int result = testUTF8Chunks();

    // The suspicious line is at testchar.c:827
    // We need to create a symbolic assertion based on the memcmp bounds check
    // The loop iterates from i=25 to i<25+1001*7, accessing out[i] through memcmp
    // We'll assert that the access is within bounds
    
    // Since we can't easily access the local variables from testUTF8Chunks,
    // we'll create a minimal version that reproduces the issue
    xmlParserCtxtPtr ctxt;
    xmlChar *out;
    int outSize;
    char *buf;
    int i;

    ctxt = xmlCreatePushParserCtxt(NULL, NULL, NULL, 0, NULL);
    xmlParseChunk(ctxt, "<d>", 3, 0);

    // Create symbolic buffer for the problematic case
    buf = xmlMalloc(1000 * 2 + 1);
    for (i = 0; i < 2000; i += 2)
        memcpy(buf + i, "\xCE\xB1", 2);
    buf[i] = '\xCE';
    xmlParseChunk(ctxt, buf, 2001, 0);
    xmlFree(buf);

    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);

    xmlDocDumpMemory(ctxt->myDoc, &out, &outSize);
    
    // Assertion for the suspicious line 827
    // The loop accesses out[i] through memcmp where i ranges from 25 to 25+1001*7
    // We need to ensure out has sufficient length
    klee_assert(outSize >= 25 + 1001 * 7 + 5); // +5 for "</d>\n" at the end
    
    xmlFree(out);
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    
    xmlCleanupParser();
    return 0;
}