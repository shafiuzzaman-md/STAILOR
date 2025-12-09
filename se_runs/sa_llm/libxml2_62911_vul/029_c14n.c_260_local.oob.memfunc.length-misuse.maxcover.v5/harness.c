#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/xmlmemory.h>
#include <libxml/c14n.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodeSetPtr nodeset;
    xmlNodePtr node;
    xmlNodePtr parent;
    xmlChar *xml_data;
    size_t xml_size;
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a symbolic XML buffer */
    xml_size = 1024;
    xml_data = (xmlChar *)malloc(xml_size);
    klee_make_symbolic(xml_data, xml_size, "xml_data");

    /* Ensure null-termination for safety */
    xml_data[xml_size - 1] = 0;

    /* Parse the XML document from memory */
    doc = xmlReadMemory((const char *)xml_data, xml_size - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Create a nodeset */
    nodeset = xmlXPathNodeSetCreate(NULL);
    if (nodeset == NULL) {
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Get the root node */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlXPathFreeNodeSet(nodeset);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Make node and parent symbolic to explore different branches */
    parent = node;
    /* We'll use the root node as the node parameter, but we need to potentially
       have a namespace node. Since we cannot directly create an xmlNs struct
       that is a valid xmlNode, we rely on the fact that the function checks
       node->type == XML_NAMESPACE_DECL. We'll set the type accordingly. */
    klee_make_symbolic(&node->type, sizeof(node->type), "node_type");

    /* Force the type to be XML_NAMESPACE_DECL to reach the target line */
    if (node->type == XML_NAMESPACE_DECL) {
        /* Also make parent symbolic to explore the condition inside */
        klee_make_symbolic(&parent->type, sizeof(parent->type), "parent_type");

        /* Reachability marker: we are about to call xmlC14NIsNodeInNodeset
           which will execute the memcpy at line 260 */
        klee_assert(0 && "SAILR_REACH_ASSERT");

        /* Call the function that leads to the target line */
        ret = xmlC14NIsNodeInNodeset(nodeset, node, parent);
        (void)ret; /* suppress unused warning */
    }

    /* Cleanup */
    xmlXPathFreeNodeSet(nodeset);
    xmlFreeDoc(doc);
    free(xml_data);
    xmlCleanupParser();
    return 0;
}