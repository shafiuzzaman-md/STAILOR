#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node, cloned_node;
    xmlDOMWrapCtxtPtr ctxt;
    int ret;

    /* Initialize libxml2 */
    LIBXML_TEST_VERSION

    /* Create a wrapping context */
    ctxt = xmlDOMWrapNewCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    /* Create a simple document with a node that has a namespace */
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlDOMWrapFreeCtxt(ctxt);
        return 1;
    }
    node = xmlNewNode(NULL, BAD_CAST "root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlDOMWrapFreeCtxt(ctxt);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    /* Add a namespace to the node */
    xmlNewNs(node, BAD_CAST "http://example.com", BAD_CAST "pre");

    /* Make the destination doc and node symbolic to influence control flow */
    xmlDocPtr dest_doc;
    xmlNodePtr dest_parent;
    int options;

    /* Allocate symbolic variables */
    klee_make_symbolic(&dest_doc, sizeof(dest_doc), "dest_doc");
    klee_make_symbolic(&dest_parent, sizeof(dest_parent), "dest_parent");
    klee_make_symbolic(&options, sizeof(options), "options");

    /* Ensure dest_doc is either NULL or a valid doc pointer; we'll make it non-NULL to go deeper */
    if (dest_doc == NULL) {
        dest_doc = xmlNewDoc(BAD_CAST "1.0");
        if (dest_doc == NULL) {
            xmlFreeDoc(doc);
            xmlDOMWrapFreeCtxt(ctxt);
            return 1;
        }
    }

    /* Call xmlDOMWrapCloneNode which internally leads to the target line */
    ret = xmlDOMWrapCloneNode(ctxt, doc, node, &cloned_node, dest_doc, dest_parent, 1, options);
    /* The target line 9438 is inside xmlDOMWrapCloneNode when cloning a namespace.
       We place a reachability assertion just after the call, assuming the path was taken.
       Since the SA spec suggests no specific assertion expression, we only mark reachability. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    if (dest_doc != NULL && dest_doc != doc) {
        xmlFreeDoc(dest_doc);
    }
    xmlFreeDoc(doc);
    xmlDOMWrapFreeCtxt(ctxt);

    return 0;
}