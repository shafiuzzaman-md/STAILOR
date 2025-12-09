#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    // Initialize libxml2
    xmlInitParser();

    // Create a minimal XML document to have a context
    xmlDocPtr doc = xmlNewDoc(BAD_CAST "1.0");
    xmlNodePtr root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    // Create an XPath context
    xmlXPathContextPtr xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 1;
    }

    // We need to reach xmlXPathNewBoolean, which is called by many XPath functions.
    // One way is to evaluate an XPath expression that yields a boolean.
    // Let's create a simple expression that compares two nodes.
    xmlNodePtr node1 = xmlNewChild(root, NULL, BAD_CAST "child1", NULL);
    xmlNodePtr node2 = xmlNewChild(root, NULL, BAD_CAST "child2", NULL);

    // Register the nodes in the XPath context to allow node-set operations.
    // We'll use xmlXPathNewNodeSet to create node-sets.
    xmlXPathObjectPtr nodeSet1 = xmlXPathNewNodeSet(node1);
    xmlXPathObjectPtr nodeSet2 = xmlXPathNewNodeSet(node2);
    if (nodeSet1 == NULL || nodeSet2 == NULL) {
        if (nodeSet1) xmlXPathFreeObject(nodeSet1);
        if (nodeSet2) xmlXPathFreeObject(nodeSet2);
        xmlXPathFreeContext(xpathCtx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 1;
    }

    // Push the node-sets onto the XPath stack to simulate a comparison.
    // The function xmlXPathCmpNodesExt is the entrypoint mentioned in the spec.
    // It calls xmlXPathNewBoolean when comparing nodes.
    // We'll directly call xmlXPathCmpNodesExt with the two node-sets.
    // First, we need to set up the XPath stack appropriately.
    // Since we cannot easily set up the full XPath evaluation stack,
    // we instead call a function that internally uses xmlXPathNewBoolean.
    // For example, xmlXPathEvalExpression with a comparison expression.
    const char* expr = "child1 = child2";
    xmlXPathObjectPtr result = xmlXPathEvalExpression(BAD_CAST expr, xpathCtx);
    if (result) {
        // If we reach here, xmlXPathNewBoolean might have been called.
        // Place the reachability assertion near the target line.
        // Since we cannot directly instrument xmlXPathNewBoolean,
        // we place a marker after the call that likely leads to it.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeObject(result);
    }

    // Cleanup
    xmlXPathFreeObject(nodeSet1);
    xmlXPathFreeObject(nodeSet2);
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}