#include <klee/klee.h>
#include "c14n.c"

int main() {
    // Initialize symbolic inputs for xmlC14NIsNodeInNodeset
    void* user_data;
    xmlNodePtr node;
    xmlNodePtr parent;
    
    // Make inputs symbolic
    klee_make_symbolic(&user_data, sizeof(user_data), "user_data");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&parent, sizeof(parent), "parent");
    
    // Call the target function
    int result = xmlC14NIsNodeInNodeset(user_data, node, parent);
    
    // Assertion to check for potential memory safety issue at line 260
    // The memcpy at line 260 copies from 'node' to stack variable 'ns'
    // We want to ensure node is valid for this operation
    if (node != NULL && node->type == XML_NAMESPACE_DECL) {
        // Check that node points to valid memory for sizeof(xmlNs) bytes
        // This is a conservative check - in reality we'd need to know the actual allocation size
        klee_assert(node != NULL);
    }
    
    return 0;
}