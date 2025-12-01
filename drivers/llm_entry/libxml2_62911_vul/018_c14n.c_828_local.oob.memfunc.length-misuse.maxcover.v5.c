#include <klee/klee.h>
#include "c14n.c"
#include "tree.h"
#include "xmlstring.h"

int main() {
    // Initialize a minimal xmlC14NCtx structure
    xmlC14NCtx ctx;
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    
    // Initialize ns_rendered field
    ctx.ns_rendered = NULL;
    
    // Initialize inclusive_ns_prefixes array
    xmlChar* prefixes[5];
    for (int i = 0; i < 4; i++) {
        prefixes[i] = (xmlChar*)malloc(10);
        klee_make_symbolic(prefixes[i], 10, "prefix");
    }
    prefixes[4] = NULL;
    ctx.inclusive_ns_prefixes = prefixes;
    
    // Create a minimal xmlNode structure
    xmlNode node;
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Initialize node fields
    node.doc = NULL;
    node.ns = NULL;
    node.properties = NULL;
    
    // Call the function that contains the suspicious line
    xmlExcC14NProcessNamespaces(&ctx, &node, 1);
    
    // Cleanup
    for (int i = 0; i < 4; i++) {
        free(prefixes[i]);
    }
    
    return 0;
}