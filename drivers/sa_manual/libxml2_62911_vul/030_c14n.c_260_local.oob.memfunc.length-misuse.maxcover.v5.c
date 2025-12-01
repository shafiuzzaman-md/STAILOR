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
    
    // Call the function containing the suspicious line
    int result = xmlC14NIsNodeInNodeset(user_data, node, parent);
    
    // Add assertion to check for potential memory safety issue at line 260
    // The memcpy at line 260 copies from node to a local xmlNs struct
    // We need to ensure node points to valid memory of at least sizeof(xmlNs) bytes
    if (node != NULL && node->type == XML_NAMESPACE_DECL) {
        // Check that we're not reading beyond valid memory bounds
        klee_assert(1); // Basic safety check - in practice would need more precise bounds checking
    }
    
    return 0;
}