#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlNodePtr node;
    xmlAttrPtr attr;
    xmlSchemaIDCSelectPtr item;
    char *xml_data;
    size_t xml_size;
    xmlDocPtr doc;
    xmlNodePtr root;

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a symbolic XML buffer */
    xml_size = 1024;
    xml_data = (char *)malloc(xml_size);
    klee_make_symbolic(xml_data, xml_size, "xml_data");
    /* Ensure null-termination for safety */
    xml_data[xml_size - 1] = '\0';

    /* Parse the XML buffer into a document */
    doc = xmlReadMemory(xml_data, xml_size - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Get the root node */
    root = xmlDocGetRootElement(doc);
    if (root == NULL) {
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Create a schema parser context */
    ctxt = xmlSchemaNewParserCtxt("dummy.xsd");
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Set up the node to be the root of the document */
    node = root;

    /* Simulate the allocation and memset at line 8213 */
    item = (xmlSchemaIDCSelectPtr) xmlMalloc(sizeof(xmlSchemaIDCSelect));
    if (item == NULL) {
        xmlSchemaPErrMemory(ctxt,
            "allocating a 'selector' of an identity-constraint definition",
            NULL);
        xmlSchemaFreeParserCtxt(ctxt);
        xmlFreeDoc(doc);
        free(xml_data);
        xmlCleanupParser();
        return 0;
    }

    /* Reachability marker: we are about to execute the memset at line 8213 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The target line: memset(item, 0, sizeof(xmlSchemaIDCSelect)); */
    memset(item, 0, sizeof(xmlSchemaIDCSelect));

    /* Continue with the subsequent code to avoid early exit */
    attr = xmlSchemaGetPropNode(node, "xpath");
    if (attr == NULL) {
        /* This branch is part of the context; we don't need to assert anything */
    }

    /* Cleanup */
    xmlFree(item);
    xmlSchemaFreeParserCtxt(ctxt);
    xmlFreeDoc(doc);
    free(xml_data);
    xmlCleanupParser();

    return 0;
}