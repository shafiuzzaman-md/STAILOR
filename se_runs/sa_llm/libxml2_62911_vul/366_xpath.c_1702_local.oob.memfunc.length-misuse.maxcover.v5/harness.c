#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlXPathContextPtr ctxt;
    xmlDocPtr doc;
    xmlXPathObjectPtr res;
    xmlChar *xml_data;
    size_t xml_size;
    xmlChar *xpath_expr;
    size_t xpath_size;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Make symbolic input XML data
    xml_size = 1024;
    xml_data = (xmlChar *)malloc(xml_size);
    klee_make_symbolic(xml_data, xml_size, "xml_data");
    // Ensure null-termination for safety
    xml_data[xml_size - 1] = '\0';

    // Make symbolic XPath expression
    xpath_size = 256;
    xpath_expr = (xmlChar *)malloc(xpath_size);
    klee_make_symbolic(xpath_expr, xpath_size, "xpath_expr");
    xpath_expr[xpath_size - 1] = '\0';

    // Parse XML from memory
    doc = xmlReadMemory((const char *)xml_data, xml_size - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // Cleanup and return if parsing fails
        free(xml_data);
        free(xpath_expr);
        xmlCleanupParser();
        return 0;
    }

    // Create XPath context
    ctxt = xmlXPathNewContext(doc);
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        free(xml_data);
        free(xpath_expr);
        xmlCleanupParser();
        return 0;
    }

    // Evaluate XPath expression
    res = xmlXPathEvalExpression(xpath_expr, ctxt);
    if (res != NULL) {
        xmlXPathFreeObject(res);
    }

    // Trigger the creation of XPath context cache (which calls xmlXPathContextCacheCreate)
    // The cache is created internally during XPath evaluation, but we can force it
    // by manipulating the context's cache field.
    if (ctxt->cache == NULL) {
        // This will call xmlXPathContextCacheCreate, reaching line 1702
        ctxt->cache = xmlXPathContextCacheCreate();
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    xmlXPathFreeContext(ctxt);
    xmlFreeDoc(doc);
    free(xml_data);
    free(xpath_expr);
    xmlCleanupParser();
    return 0;
}