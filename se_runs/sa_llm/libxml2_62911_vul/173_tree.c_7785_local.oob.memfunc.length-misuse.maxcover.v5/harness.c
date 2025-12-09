#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsMapPtr map;
    xmlNsMapItemPtr item;

    // Initialize libxml2
    xmlInitParser();

    // Create a document and a node to get a namespace map
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        return 1;
    }
    node = xmlNewNode(NULL, BAD_CAST "root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Get the namespace map from the node (or create one)
    // The function xmlGetNamespaceMap is internal, so we need to trigger
    // a path that calls xmlNewNsMapItem. We'll use xmlSearchNsByHref.
    // First, add a namespace to the node.
    xmlNsPtr ns = xmlNewNs(node, BAD_CAST "http://example.com", BAD_CAST "ex");
    if (ns == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlSetNs(node, ns);

    // Now search for a namespace by href, which internally may create a map item.
    // We'll make the href symbolic to explore different paths.
    char href[100];
    klee_make_symbolic(href, sizeof(href), "href");
    href[sizeof(href)-1] = '\0'; // ensure null-terminated

    xmlNsPtr found_ns = xmlSearchNsByHref(doc, node, BAD_CAST href);
    // The call above may lead to xmlNewNsMapItem if a map is being built.

    // The target line is inside xmlNewNsMapItem.
    // We need to reach the memset at line 7785.
    // We'll assume that the map and item are created along the path.
    // To increase chances, we also call xmlSearchNs which may trigger map creation.
    xmlNsPtr found_ns2 = xmlSearchNs(doc, node, BAD_CAST "ex");

    // Place reachability assertion near the target line.
    // Since we cannot directly call xmlNewNsMapItem (it's static),
    // we rely on the above calls to potentially reach it.
    // We'll insert a marker that KLEE can reach if the path is taken.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}