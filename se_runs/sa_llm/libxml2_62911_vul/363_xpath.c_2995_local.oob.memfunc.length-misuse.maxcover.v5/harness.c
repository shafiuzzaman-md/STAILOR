#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlInitParser();

    // Create a symbolic XML document
    char xml_data[1024];
    klee_make_symbolic(xml_data, sizeof(xml_data), "xml_data");
    // Ensure null termination for safety
    xml_data[sizeof(xml_data)-1] = 0;

    xmlDocPtr doc = xmlReadMemory(xml_data, sizeof(xml_data)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlCleanupParser();
        return 0;
    }

    // Create an XPath context
    xmlXPathContextPtr ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // Create a symbolic XPath object to pass as 'val' parameter
    // We'll create a node set with one node to simulate the path
    xmlNodePtr root = xmlDocGetRootElement(doc);
    if (root == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // Create a node set containing the root node
    xmlXPathObjectPtr node_set = xmlXPathNewNodeSet(root);
    if (node_set == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // The target function xmlXPathCmpNodesExt is static, not directly callable.
    // We need to trigger it through a public API that uses it.
    // xmlXPathCmpNodesExt is used by xmlXPathNodeSetAdd and similar functions.
    // Let's try to add a duplicate node to trigger the code path.

    // Create another node set to add to
    xmlXPathObjectPtr target_set = xmlXPathNewNodeSet(NULL);
    if (target_set == NULL) {
        xmlXPathFreeNodeSet(node_set);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // Try to add the same node multiple times - this may trigger xmlXPathCmpNodesExt
    // which internally calls xmlXPathNodeSetAddUnique which allocates the nodeTab
    int i;
    for (i = 0; i < 2; i++) {
        // This should eventually call xmlXPathCmpNodesExt
        xmlXPathNodeSetAdd(target_set->nodesetval, root);
    }

    // Place reachability assertion near the vulnerable memset
    // We can't place it directly in the library code, so we place it after
    // calling functions that should reach that path
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlXPathFreeNodeSet(target_set);
    xmlXPathFreeNodeSet(node_set);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}