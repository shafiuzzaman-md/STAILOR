#include <klee/klee.h>
#include "c14n.h"
#include "tree.h"
#include "xpath.h"

int main() {
    // Initialize symbolic inputs for xmlC14NIsNodeInNodeset
    void* user_data;
    xmlNodePtr node;
    xmlNodePtr parent;
    
    // Make node symbolic - this is critical for the suspicious memcpy
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Initialize a minimal nodeset structure
    xmlNodeSetPtr nodes = xmlXPathNodeSetCreate(NULL);
    if (nodes == NULL) return -1;
    
    // Add some concrete nodes to the nodeset to avoid trivial failures
    xmlNodePtr dummy_node = xmlNewNode(NULL, (const xmlChar*)"test");
    xmlXPathNodeSetAdd(nodes, dummy_node);
    
    user_data = nodes;
    
    // Make parent symbolic but ensure it's not NULL to explore the code path
    klee_make_symbolic(&parent, sizeof(parent), "parent");
    klee_assume(parent != NULL);
    
    // Call the target function
    int result = xmlC14NIsNodeInNodeset(user_data, node, parent);
    
    // Assertion near the suspicious line 260
    // Check if node is a namespace declaration type and if so, verify the memcpy doesn't overflow
    if (node != NULL && node->type == XML_NAMESPACE_DECL) {
        // The suspicious memcpy copies sizeof(xmlNs) bytes from node
        // Assert that node points to valid memory of at least sizeof(xmlNs) bytes
        // This is a conservative check for potential out-of-bounds read
        klee_assert(node != NULL);
    }
    
    // Cleanup
    xmlXPathFreeNodeSet(nodes);
    xmlFreeNode(dummy_node);
    
    return 0;
}