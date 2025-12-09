#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlChar* content;
    int len;

    /* Initialize libxml2 */
    LIBXML_TEST_VERSION

    /* Create a document */
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) {
        return 1;
    }

    /* Make content symbolic */
    content = (xmlChar*)malloc(256 * sizeof(xmlChar));
    if (!content) {
        xmlFreeDoc(doc);
        return 1;
    }
    klee_make_symbolic(content, 256 * sizeof(xmlChar), "content");

    /* Make len symbolic, but ensure it's non-negative and within bounds */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 256); /* Avoid overflow in xmlStrndup */

    /* Call the function that leads to xmlNewCDataBlock */
    /* xmlNewCDataBlock is called by xmlStringGetNodeList? Not directly.
       We'll call xmlNewCDataBlock directly, as it's the function containing the target line. */
    node = xmlNewCDataBlock(doc, content, len);

    /* Reachability marker: we want to assert we reached the memset line */
    if (node) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        /* Cleanup */
        xmlFreeNode(node);
    }

    /* Cleanup */
    free(content);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}