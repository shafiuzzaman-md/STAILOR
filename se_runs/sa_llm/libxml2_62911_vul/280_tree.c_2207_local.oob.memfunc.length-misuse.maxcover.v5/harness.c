#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlChar* name;
    size_t name_len;

    /* Initialize libxml2 */
    LIBXML_TEST_VERSION

    /* Create a document */
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 1;
    }

    /* Symbolic input for node name */
    name_len = 10; /* arbitrary non-zero length */
    name = (xmlChar*)malloc(name_len + 1);
    if (name == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    klee_make_symbolic(name, name_len + 1, "name");
    name[name_len] = '\0'; /* ensure null termination */

    /* Call xmlNewNode, which internally calls xmlNewNodeEatName -> xmlNewNodeInternal */
    node = xmlNewNode(NULL, name);
    if (node == NULL) {
        free(name);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Add node to document to ensure it is not freed prematurely */
    xmlDocSetRootElement(doc, node);

    /* Reachability marker: the target line 2207 is inside xmlNewNodeInternal */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    free(name);
    xmlCleanupParser();

    return 0;
}