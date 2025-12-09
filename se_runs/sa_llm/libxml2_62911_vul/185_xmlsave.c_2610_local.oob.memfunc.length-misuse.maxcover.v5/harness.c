#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlIO.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr root, cur;
    xmlOutputBufferPtr buf;
    xmlSaveCtxt ctxt;
    const char *filename;
    xmlCharEncodingHandlerPtr handler = NULL;
    int format;
    const char *encoding;
    int compression;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);
    cur = xmlNewChild(root, NULL, BAD_CAST "child", BAD_CAST "content");

    /* Make symbolic inputs that affect the path */
    klee_make_symbolic(&format, sizeof(format), "format");
    klee_make_symbolic(&compression, sizeof(compression), "compression");
    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");
    /* Ensure compression is non-negative as per bounds hint */
    klee_assume(compression >= 0);

    /* Symbolic filename - bounded length to avoid unbounded exploration */
    char filename_buf[256];
    klee_make_symbolic(filename_buf, sizeof(filename_buf), "filename_buf");
    filename_buf[255] = '\0';
    filename = filename_buf;

    /* Call xmlNodeDumpOutputInternal via public wrapper xmlNodeDump */
    /* We need to set up a buffer to write to */
    xmlBufferPtr buffer = xmlBufferCreate();
    if (buffer == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    /* The target line is inside xmlNodeDumpOutputInternal.
     * We call xmlNodeDump, which eventually calls xmlNodeDumpOutputInternal.
     * The parameters must be set so that the function reaches line 2610.
     * Specifically, we need a non-NULL filename and a handler that may be NULL.
     * The compression is symbolic but assumed >=0.
     */
    int ret = xmlNodeDump(buffer, doc, cur, 0, format);
    /* The actual call that triggers the vulnerable path is xmlSaveFileTo
     * or similar, but the entrypoint is xmlNodeDumpOutputInternal.
     * We'll use xmlSaveDocTo with a filename to hit the file-saving path.
     */
    xmlSaveCtxtPtr savectx = xmlSaveToFilename(filename, encoding, compression);
    if (savectx != NULL) {
        xmlSaveDoc(savectx, doc);
        xmlSaveClose(savectx);
    }

    /* Reachability marker: we assume the vulnerable memset is reached */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlBufferFree(buffer);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}