#include <libxml/parser.h>
#include <libxml/valid.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr prev = NULL, next = NULL;
    const xmlChar* names[10];
    int max;
    int i;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document to get a node */
    doc = xmlReadMemory("<root><child/></root>", -1, NULL, NULL, 0);
    if (doc == NULL) {
        return 0;
    }
    xmlNodePtr root = xmlDocGetRootElement(doc);
    if (root == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }
    xmlNodePtr child = root->children;
    if (child == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    /* Set prev or next to a valid node */
    klee_make_symbolic(&prev, sizeof(prev), "prev");
    klee_make_symbolic(&next, sizeof(next), "next");
    /* Ensure at least one is non-null to pass the early check */
    if (prev == NULL && next == NULL) {
        /* Force one to be non-null */
        prev = child;
    }

    /* Initialize names array symbolically */
    for (i = 0; i < 10; i++) {
        klee_make_symbolic(&names[i], sizeof(names[i]), "names_i");
        /* Allow names to be NULL or point to symbolic strings */
        if (names[i] != NULL) {
            /* Assume it points to a valid string; we don't allocate here for simplicity */
        }
    }

    /* Make max symbolic, but ensure it's >0 to pass the check */
    klee_make_symbolic(&max, sizeof(max), "max");
    if (max <= 0) {
        max = 1;
    }

    /* Call the target function */
    int result = xmlAddElementDecl(NULL, prev, next, names, max, 0, 0);

    /* Place reachability marker near the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}