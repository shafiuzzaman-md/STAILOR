#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlInitParser();

    // Create a symbolic XML document
    char xml_data[1024];
    klee_make_symbolic(xml_data, sizeof(xml_data), "xml_data");
    // Ensure null termination for safety
    xml_data[sizeof(xml_data)-1] = 0;

    xmlDocPtr doc = xmlReadMemory(xml_data, strlen(xml_data), "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlCleanupParser();
        return 0;
    }

    xmlXPathContextPtr xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // Create a symbolic XPath expression string
    char xpath_expr[256];
    klee_make_symbolic(xpath_expr, sizeof(xpath_expr), "xpath_expr");
    xpath_expr[sizeof(xpath_expr)-1] = 0;

    // Compile the XPath expression - this will call xmlXPathNewCompExpr
    xmlXPathCompExprPtr compExpr = xmlXPathCompile((const xmlChar *)xpath_expr);
    if (compExpr == NULL) {
        xmlXPathFreeContext(xpathCtx);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    // If we reach here, xmlXPathNewCompExpr was called and line 1021 was executed
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlXPathFreeCompExpr(compExpr);
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}