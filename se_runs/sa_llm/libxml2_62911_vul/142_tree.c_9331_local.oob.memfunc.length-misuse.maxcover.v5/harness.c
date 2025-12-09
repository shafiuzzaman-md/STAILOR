#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc = NULL;
    xmlNodePtr root = NULL;
    xmlNodePtr clone = NULL;
    xmlNodePtr resultClone = NULL;
    xmlNodePtr parentClone = NULL;
    xmlNodePtr prevClone = NULL;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal document */
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) goto cleanup;
    root = xmlNewNode(NULL, (const xmlChar*)"root");
    if (!root) goto cleanup;
    xmlDocSetRootElement(doc, root);

    /* Make resultClone symbolic to control the path */
    int resultClone_flag;
    klee_make_symbolic(&resultClone_flag, sizeof(resultClone_flag), "resultClone_flag");
    if (resultClone_flag) {
        resultClone = root;  /* non‑NULL */
        parentClone = root;
        prevClone = NULL;
    } else {
        resultClone = NULL;
    }

    /* Simulate the allocation and memset path from xmlDOMWrapCloneNode */
    clone = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (clone == NULL) {
        /* xmlTreeErrMemory would be called, but we just skip */
        goto internal_error;
    }

    /* Reachability marker for the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The target line */
    memset(clone, 0, sizeof(xmlNode));

    /* Continue a bit to avoid dead code */
    if (resultClone != NULL) {
        clone->parent = parentClone;
        if (prevClone) {
            prevClone->next = clone;
            clone->prev = prevClone;
        }
    }

internal_error:
    /* Cleanup */
    if (clone) xmlFree(clone);
cleanup:
    if (doc) xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}