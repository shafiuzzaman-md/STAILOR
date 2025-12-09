#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr result;
    xmlNodeSetPtr nodeset;
    xmlChar* xpath_expr;
    size_t xpath_len;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a minimal XML document in memory
    const char* xml_content = "<root><a/><b/><c/></root>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Create XPath context
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Make XPath expression symbolic to explore different paths
    xpath_len = 10;
    xpath_expr = (xmlChar*)malloc(xpath_len + 1);
    klee_make_symbolic(xpath_expr, xpath_len + 1, "xpath_expr");
    xpath_expr[xpath_len] = '\0'; // Ensure null termination

    // Evaluate XPath expression
    result = xmlXPathEvalExpression(xpath_expr, ctx);
    free(xpath_expr);

    // Groom the result to potentially reach xmlXPathWrapNodeSet
    if (result != NULL && result->type == XPATH_NODESET && result->nodesetval != NULL) {
        nodeset = result->nodesetval;
        // Create a new node set object via xmlXPathWrapNodeSet
        // This function internally calls xmlXPathNewNodeSet and then xmlXPathWrapNodeSet
        // We'll directly call xmlXPathNewNodeSet to reach the target line
        xmlXPathObjectPtr wrapped = xmlXPathNewNodeSet(nodeset->nodeTab[0]);
        if (wrapped != NULL) {
            // Place reachability assertion just before the memset call in xmlXPathNewNodeSet
            // Since we cannot directly insert inside libxml2, we place it after the call
            // that leads to the target line. The target line is inside xmlXPathNewNodeSet.
            klee_assert(0 && "SAILR_REACH_ASSERT");
            xmlXPathFreeObject(wrapped);
        }
    }

    // Cleanup
    xmlXPathFreeObject(result);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}