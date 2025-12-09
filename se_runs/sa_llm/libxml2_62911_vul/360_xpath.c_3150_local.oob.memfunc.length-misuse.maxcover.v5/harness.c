#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlNodePtr node1, node2;
    xmlChar *xml_data;
    size_t xml_size;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Create a symbolic XML buffer
    xml_size = 1024;
    xml_data = (xmlChar *)malloc(xml_size);
    klee_make_symbolic(xml_data, xml_size, "xml_data");
    // Ensure null-termination for safety
    xml_data[xml_size - 1] = 0;

    // Parse the XML document
    doc = xmlReadMemory((const char *)xml_data, xml_size - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    // Create XPath context
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    // Create an XPath object representing a nodeset
    obj = xmlXPathNewNodeSet(NULL); // Start with empty nodeset
    if (obj == NULL) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    // Get two nodes from the document to compare
    node1 = xmlDocGetRootElement(doc);
    if (node1 == NULL) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }
    node2 = node1->children;
    if (node2 == NULL) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    // Add nodes to the nodeset to trigger growth
    // First, ensure nodeset is empty and nodeMax is 0
    obj->nodesetVal->nodeNr = 0;
    obj->nodesetVal->nodeMax = 0;
    obj->nodesetVal->nodeTab = NULL;

    // Add first node - this should trigger the allocation and memset at line 3150
    if (xmlXPathNodeSetAdd(obj->nodesetVal, node1) == -1) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    // Reachability marker for the target line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlXPathFreeObject(obj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    free(xml_data);
    xmlCleanupParser();
    return 0;
}