#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlBufferPtr buf;
    xmlSaveCtxtPtr ctxt;
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (!doc) return 1;
    node = xmlNewNode(NULL, BAD_CAST "root");
    if (!node) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    /* Create a buffer */
    buf = xmlBufferCreate();
    if (!buf) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Create a save context with the buffer */
    ctxt = xmlSaveToBuffer(buf, NULL, 0);
    if (!ctxt) {
        xmlBufferFree(buf);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Save the document to the buffer */
    ret = xmlSaveDoc(ctxt, doc);
    if (ret < 0) {
        xmlSaveClose(ctxt);
        xmlBufferFree(buf);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Close the save context */
    xmlSaveClose(ctxt);

    /* Now we have a populated buffer, we want to reach the target line.
       The target line is inside xmlOutputBufferCreateBuffer, which is called
       by xmlSaveToBuffer. However, we need to trigger a path that leads to
       the memset at line 2179. We can create another output buffer using the
       same buffer to ensure the function is called again. */
    xmlOutputBufferPtr outbuf = xmlOutputBufferCreateBuffer(buf, NULL);
    if (outbuf) {
        /* If we reach here, the target line has been executed.
           Place the reachability marker. */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlOutputBufferClose(outbuf);
    }

    /* Cleanup */
    xmlBufferFree(buf);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}