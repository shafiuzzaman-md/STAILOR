#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node, copy;
    char *buffer;
    int size;

    /* Initialize libxml2 */
    LIBXML_TEST_VERSION

    /* Create a symbolic buffer for xmlReadMemory */
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size > 0);
    klee_assume(size < 1024); /* Reasonable bound */
    buffer = (char*)malloc(size);
    klee_make_symbolic(buffer, size, "buffer");

    /* Parse the buffer into a document */
    doc = xmlReadMemory(buffer, size, NULL, NULL, 0);
    if (doc == NULL) {
        free(buffer);
        return 0;
    }

    /* Get the root node */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        free(buffer);
        return 0;
    }

    /* Call xmlCopyNode, which will eventually reach xmlStaticCopyNode
       and the target line 4143 in tree.c */
    copy = xmlCopyNode(node, 1); /* 1 for recursive copy */

    /* Place reachability marker near the vulnerable memset line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    if (copy != NULL) {
        xmlFreeNode(copy);
    }
    xmlFreeDoc(doc);
    free(buffer);
    return 0;
}