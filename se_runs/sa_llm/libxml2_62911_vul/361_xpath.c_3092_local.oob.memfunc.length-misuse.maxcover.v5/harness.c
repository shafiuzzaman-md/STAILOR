#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlNodePtr node;
    xmlChar *xpath_expr;
    int xpath_expr_len;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document */
    const char *xml_content = "<root><a/><b/><c/></root>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    /* Create XPath context */
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Create an XPath object representing a nodeset (cur in the target code) */
    obj = xmlXPathNewNodeSet(NULL);  /* starts empty, nodeMax == 0 */
    if (obj == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Make the nodeset grow: we need to trigger the branch where nodeMax == 0.
       The target memset occurs when nodeMax == 0 and nodeTab is allocated.
       We'll add nodes to the nodeset until it needs to grow.
       Since nodeMax starts as 0, the first addition will trigger the allocation
       and the memset at line 3092.
    */

    /* Get a node from the document to add */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    /* Add nodes to the nodeset. The nodeset is of type XPATH_NODESET.
       The function xmlXPathNodeSetAdd is used to add nodes.
       We need to add enough nodes so that nodeNr == nodeMax and nodeMax == 0 initially.
       Actually, nodeMax == 0 initially, so the first addition will go into the
       if (cur->nodeMax == 0) branch.
    */

    /* Add one node to trigger the branch */
    if (xmlXPathNodeSetAdd(obj->nodesetval, node) == -1) {
        /* error adding node */
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    /* At this point, the nodeset should have been allocated and memset called.
       We place the reachability assertion right after the addition.
    */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlXPathFreeObject(obj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}