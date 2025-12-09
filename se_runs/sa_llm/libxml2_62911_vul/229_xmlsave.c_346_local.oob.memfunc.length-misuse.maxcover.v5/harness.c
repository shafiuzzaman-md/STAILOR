#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlSaveCtxtPtr ctxt;
    char *encoding;
    int size;

    // Initialize libxml2
    xmlInitParser();

    // Create a minimal XML document
    doc = xmlNewDoc(BAD_CAST "1.0");
    node = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, node);

    // Make encoding symbolic
    size = 10;
    encoding = (char *)malloc(size * sizeof(char));
    klee_make_symbolic(encoding, size * sizeof(char), "encoding");

    // Call xmlSaveToBuffer which internally calls xmlNewSaveCtxt
    // xmlSaveToBuffer will allocate a save context and call memset on it
    xmlBufferPtr buf = xmlBufferCreate();
    ctxt = xmlSaveToBuffer(buf, encoding, 0);

    // If ctxt is created, we have reached the memset line
    if (ctxt != NULL) {
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlSaveClose(ctxt);
        xmlBufferFree(buf);
    } else {
        // Clean up buffer if ctxt creation failed
        xmlBufferFree(buf);
    }

    // Clean up document
    xmlFreeDoc(doc);
    xmlCleanupParser();
    free(encoding);

    return 0;
}