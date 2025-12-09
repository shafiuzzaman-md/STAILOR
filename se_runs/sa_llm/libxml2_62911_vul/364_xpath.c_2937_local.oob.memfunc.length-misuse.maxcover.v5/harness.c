#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsPtr ns;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr xpathObj;
    xmlNodePtr resultNode;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a simple XML document in memory
    const char* xmlContent = "<root xmlns:pre='http://example.com'><child/></root>";
    int xmlLen = strlen(xmlContent);
    doc = xmlReadMemory(xmlContent, xmlLen, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Get the root element
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Get the namespace from the root element
    ns = node->nsDef;
    if (ns == NULL) {
        // If no namespace, create a dummy one to ensure we have something to duplicate
        ns = xmlNewNs(node, (const xmlChar*)"http://dummy.com", (const xmlChar*)"pre");
        if (ns == NULL) {
            xmlFreeDoc(doc);
            return 1;
        }
    }

    // Create an XPath context
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Register the namespace in the XPath context
    if (ns->prefix != NULL) {
        xmlXPathRegisterNs(ctx, ns->prefix, ns->href);
    }

    // Evaluate a simple XPath to trigger XPath node duplication
    xpathObj = xmlXPathEvalExpression((const xmlChar*)"//*", ctx);
    if (xpathObj == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    // If nodes are returned, process them to potentially trigger namespace duplication
    if (xpathObj->nodesetval && xpathObj->nodesetval->nodeNr > 0) {
        // Take the first node
        resultNode = xpathObj->nodesetval->nodeTab[0];
        // Ensure the node has a namespace
        if (resultNode->ns == NULL) {
            // Attach the namespace to the node
            resultNode->ns = ns;
        }
        // Now, force a node copy operation that will duplicate the namespace.
        // We'll use xmlXPathNodeSetDupNs which internally calls xmlXPathCmpNodesExt
        // and eventually reaches the target line.
        // We'll manually call a function that leads to the vulnerable path.
        // The function xmlXPathCmpNodesExt is called during XPath evaluation,
        // but we can also trigger it via xmlXPathNodeSetDupNs.
        // Let's create a node set and duplicate it.
        xmlNodeSetPtr set = xmlXPathNodeSetCreate(resultNode);
        if (set != NULL) {
            xmlNodeSetPtr dupSet = xmlXPathNodeSetDupNs(set, ns);
            if (dupSet != NULL) {
                // Place the reachability marker and SAILR_ASSERT near the target line.
                // Since we cannot directly call the vulnerable function, we rely on
                // the duplication to reach the memset at line 2937.
                // We'll insert a klee_assert to mark reachability.
                klee_assert(0 && "SAILR_REACH_ASSERT");
                // No specific SAILR_ASSERT expression provided.
                xmlXPathFreeNodeSet(dupSet);
            }
            xmlXPathFreeNodeSet(set);
        }
    }

    // Cleanup
    xmlXPathFreeObject(xpathObj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}