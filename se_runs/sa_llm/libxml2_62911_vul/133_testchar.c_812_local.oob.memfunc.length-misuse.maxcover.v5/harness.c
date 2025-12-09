#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    char *buf;
    int i;

    /* Initialize the library */
    LIBXML_TEST_VERSION

    /* Create a parser context */
    doc = xmlReadMemory("<root/>", 7, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }
    ctxt = xmlCreateDocParserCtxt("<root/>");
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Start parsing a document chunk */
    xmlParseChunk(ctxt, "<d>", 3, 0);

    /*
     * Create a chunk longer than XML_PARSER_BIG_BUFFER_SIZE (300) ending
     * with an incomplete UTF-8 sequence.
     */
    buf = xmlMalloc(1000 * 2 + 1);
    if (buf == NULL) {
        xmlFreeParserCtxt(ctxt);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Symbolic loop condition? We'll just follow the snippet exactly. */
    for (i = 0; i < 2000; i += 2) {
        /* Target line 812: memcpy(buf + i, "\xCE\xB1", 2); */
        memcpy(buf + i, "\xCE\xB1", 2);
        /* Insert reachability marker for the vulnerable path */
        if (i == 0) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }
    buf[i] = '\xCE';
    xmlParseChunk(ctxt, buf, 2001, 0);
    xmlFree(buf);

    xmlParseChunk(ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(ctxt, NULL, 0, 0);

    /* Cleanup */
    xmlFreeParserCtxt(ctxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}