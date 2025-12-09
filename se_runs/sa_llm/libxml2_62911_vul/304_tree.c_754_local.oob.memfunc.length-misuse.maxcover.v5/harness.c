#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsPtr ns;

    // Initialize libxml2
    xmlInitParser();

    // Create a document and a node to attach the namespace to
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) return 1;
    node = xmlNewNode(NULL, (const xmlChar*)"root");
    if (!node) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Make href and prefix symbolic to explore different paths
    char href_buf[256];
    char prefix_buf[256];
    klee_make_symbolic(href_buf, sizeof(href_buf), "href_buf");
    klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix_buf");
    href_buf[255] = '\0';
    prefix_buf[255] = '\0';

    const xmlChar* href = (href_buf[0] != '\0') ? (const xmlChar*)href_buf : NULL;
    const xmlChar* prefix = (prefix_buf[0] != '\0') ? (const xmlChar*)prefix_buf : NULL;

    // Call xmlNewNs, which internally calls the target function
    ns = xmlNewNs(node, href, prefix);
    if (ns) {
        // If xmlNewNs succeeds, the target line (memset) was reached
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Optionally, we could add SAILR_ASSERT here if an expression were provided
        // SAILR_ASSERT(...);
    }

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}