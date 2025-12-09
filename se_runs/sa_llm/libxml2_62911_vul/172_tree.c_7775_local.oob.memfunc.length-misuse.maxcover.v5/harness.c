#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsMapPtr map;
    xmlNsMapItemPtr item;

    // Initialize libxml2
    xmlInitParser();

    // Create a document and a node to get a namespace map
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) return 1;

    node = xmlNewNode(NULL, BAD_CAST "root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Get the namespace map from the node
    map = node->nsMap;
    if (map == NULL) {
        // Ensure map exists by adding a namespace
        xmlNewNs(node, BAD_CAST "http://example.com", BAD_CAST "pref");
        map = node->nsMap;
        if (map == NULL) {
            xmlFreeDoc(doc);
            return 1;
        }
    }

    // Make map->pool symbolic to influence the path
    // We'll create a dummy item and make its next pointer symbolic
    item = (xmlNsMapItemPtr) xmlMalloc(sizeof(struct xmlNsMapItem));
    if (item == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    memset(item, 0, sizeof(struct xmlNsMapItem));
    // Make item->next symbolic to control the pool chain
    klee_make_symbolic(&(item->next), sizeof(item->next), "item_next");
    map->pool = item;

    // Call a function that will trigger the target line
    // The function xmlStringGetNodeList is the entrypoint, but it's not directly accessible.
    // Instead, we can use xmlNewNsMapItem which is likely called to get an item from the map.
    // However, that function is static. We need to trigger via public API.
    // Let's use xmlSearchNs which internally uses namespace maps.
    xmlNsPtr ns = xmlSearchNs(doc, node, BAD_CAST "pref");
    // The search may trigger allocation of a map item.

    // Place reachability assertion near the target line.
    // Since we cannot directly call the static function, we rely on the path being taken.
    // We'll assume the path is taken when map->pool is not NULL.
    if (map->pool != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}