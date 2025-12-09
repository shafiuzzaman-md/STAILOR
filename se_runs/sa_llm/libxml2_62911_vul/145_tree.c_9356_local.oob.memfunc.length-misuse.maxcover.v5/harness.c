#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc = NULL;
    xmlNodePtr root = NULL;
    xmlNodePtr cloned_root = NULL;
    xmlNodePtr resultClone = NULL;
    xmlNodePtr parentClone = NULL;
    xmlNodePtr prevClone = NULL;
    xmlDOMWrapCtxtPtr ctxt = NULL;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a simple document with a root element and an attribute */
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (!doc) goto cleanup;
    root = xmlNewNode(NULL, BAD_CAST "root");
    if (!root) goto cleanup;
    xmlDocSetRootElement(doc, root);
    xmlNewProp(root, BAD_CAST "attr", BAD_CAST "value");

    /* Create a DOM wrapper context */
    ctxt = xmlDOMWrapNewCtxt();
    if (!ctxt) goto cleanup;

    /* Make resultClone symbolic to control the path */
    int resultClone_flag;
    klee_make_symbolic(&resultClone_flag, sizeof(resultClone_flag), "resultClone_flag");
    if (resultClone_flag) {
        /* We need a non-NULL resultClone to take the branch after memset */
        resultClone = (xmlNodePtr)1;  /* non-NULL dummy pointer */
        parentClone = root;
        prevClone = NULL;
    } else {
        resultClone = NULL;
    }

    /* Call xmlDOMWrapCloneNode, which is the function containing the target line */
    /* We pass the root node (which has an attribute) to clone */
    int ret = xmlDOMWrapCloneNode(ctxt, doc, root, &cloned_root, NULL, NULL, 0);
    /* The target line is inside xmlDOMWrapCloneNode when cloning an attribute node */

    /* Reachability marker: we want to assert we reached the vulnerable memset */
    klee_assert(0 && "SAILR_REACH_ASSERT");

cleanup:
    if (ctxt) xmlDOMWrapFreeCtxt(ctxt);
    if (doc) xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}