#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlIO.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlSaveCtxtPtr save;
    xmlOutputBufferPtr buf;
    xmlCharEncodingHandlerPtr handler = NULL;
    const char *encoding = NULL;
    int format;
    FILE *f;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a symbolic file pointer - we'll treat it as a FILE* for output */
    /* We'll use stdout for simplicity, but could also use a memory buffer */
    f = stdout;

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    node = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, node);

    /* Make format symbolic */
    klee_make_symbolic(&format, sizeof(format), "format");

    /* Call xmlNodeDumpOutputInternal via xmlNodeDumpOutput */
    /* We need to create an output buffer first */
    buf = xmlOutputBufferCreateFile(f, handler);
    if (buf == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    /* Create save context */
    save = xmlSaveToBuffer(buf, encoding, format);
    if (save == NULL) {
        xmlOutputBufferClose(buf);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    /* Save the document - this will eventually call xmlNodeDumpOutputInternal */
    xmlSaveDoc(save, doc);
    
    /* Place reachability assertion near the target line path */
    /* The memset at line 2468 is inside xmlNodeDumpOutputInternal when called through this chain */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlSaveClose(save);
    xmlOutputBufferClose(buf);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}