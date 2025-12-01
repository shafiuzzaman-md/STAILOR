#include <klee/klee.h>
#include "c14n.c"

int main() {
    void* user_data;
    xmlNodePtr node;
    xmlNodePtr parent;
    
    klee_make_symbolic(&user_data, sizeof(user_data), "user_data");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&parent, sizeof(parent), "parent");
    
    xmlC14NIsNodeInNodeset(user_data, node, parent);
    
    return 0;
}