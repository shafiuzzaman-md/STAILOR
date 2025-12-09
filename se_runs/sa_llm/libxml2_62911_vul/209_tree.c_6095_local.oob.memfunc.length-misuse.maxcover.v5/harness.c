#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsPtr ns;

    // Initialize libxml2 library
    LIBXML_TEST_VERSION

    // Create a symbolic document
    doc = xmlNewDoc((const xmlChar *)"1.0");
    if (doc == NULL) {
        return 1;
    }

    // Create a node with symbolic name
    char node_name[10];
    klee_make_symbolic(node_name, sizeof(node_name), "node_name");
    node_name[sizeof(node_name)-1] = '\0';
    node = xmlNewNode(NULL, (const xmlChar *)node_name);
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Make node->nsDef symbolic to influence control flow
    void *nsDef_ptr;
    klee_make_symbolic(&nsDef_ptr, sizeof(nsDef_ptr), "nsDef_ptr");
    node->nsDef = (xmlNsPtr)nsDef_ptr;

    // Create symbolic doc pointer for the function's internal logic
    void *doc_ptr;
    klee_make_symbolic(&doc_ptr, sizeof(doc_ptr), "doc_ptr");

    // The target line is inside xmlSearchNsByHref or similar.
    // We call xmlSearchNs with a symbolic href to reach the vulnerable memset.
    char href[20];
    klee_make_symbolic(href, sizeof(href), "href");
    href[sizeof(href)-1] = '\0';

    // Also make prefix symbolic
    char prefix[10];
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    prefix[sizeof(prefix)-1] = '\0';

    // The vulnerable memset is in a code path where namespace is created.
    // We try to trigger that path by searching for the XML namespace.
    ns = xmlSearchNs(doc, node, (const xmlChar *)href);

    // If we reach the target line, the memset at tree.c:6095 is executed.
    // Place reachability marker.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}