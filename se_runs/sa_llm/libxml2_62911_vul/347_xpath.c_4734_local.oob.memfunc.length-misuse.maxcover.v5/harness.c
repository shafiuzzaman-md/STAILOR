#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr val, ret;
    xmlNodePtr node1, node2;
    int comparison;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a minimal XML document in memory
    const char* xml_data = "<root><a/><b/></root>";
    doc = xmlReadMemory(xml_data, strlen(xml_data), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Create XPath context
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Get two nodes for comparison
    node1 = xmlDocGetRootElement(doc);
    if (node1 == NULL || node1->children == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }
    node2 = node1->children->next;
    if (node2 == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    // Create an XPath object representing a node set containing node1 and node2
    val = xmlXPathNewNodeSet(node1);
    if (val == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }
    xmlXPathNodeSetAdd(val->nodesetval, node2);

    // Set the type to something that will go through the copy function
    // The target function xmlXPathCmpNodesExt is called from xmlXPathCmpNodes,
    // which is used by XPath comparisons. We'll trigger a comparison that
    // eventually calls xmlXPathCmpNodesExt, which may call xmlXPathObjectCopy.
    // We need to ensure val is passed to xmlXPathObjectCopy.
    // Let's directly call xmlXPathObjectCopy with our val.
    // This is the function that contains the target line.
    ret = xmlXPathObjectCopy(val);
    if (ret != NULL) {
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeObject(ret);
    }

    // Cleanup
    xmlXPathFreeObject(val);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}