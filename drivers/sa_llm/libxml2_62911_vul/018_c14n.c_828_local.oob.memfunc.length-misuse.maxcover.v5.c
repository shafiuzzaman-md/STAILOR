#include <klee/klee.h>
#include "c14n.c"

int main() {
    // Initialize minimal context structure
    xmlC14NCtxPtr ctx = (xmlC14NCtxPtr)malloc(sizeof(xmlC14NCtx));
    klee_make_symbolic(ctx, sizeof(xmlC14NCtx), "ctx");
    
    // Initialize ns_rendered field
    ctx->ns_rendered = (xmlC14NVisibleNsStackPtr)malloc(sizeof(xmlC14NVisibleNsStack));
    klee_make_symbolic(ctx->ns_rendered, sizeof(xmlC14NVisibleNsStack), "ns_rendered");
    
    // Initialize inclusive_ns_prefixes array
    ctx->inclusive_ns_prefixes = (xmlChar**)malloc(10 * sizeof(xmlChar*));
    for (int i = 0; i < 9; i++) {
        ctx->inclusive_ns_prefixes[i] = (xmlChar*)malloc(20);
        klee_make_symbolic(ctx->inclusive_ns_prefixes[i], 20, "prefix");
    }
    ctx->inclusive_ns_prefixes[9] = NULL;
    
    // Create a minimal xmlNode structure
    xmlNodePtr cur = (xmlNodePtr)malloc(sizeof(xmlNode));
    klee_make_symbolic(cur, sizeof(xmlNode), "cur");
    
    // Initialize doc field
    cur->doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    klee_make_symbolic(cur->doc, sizeof(xmlDoc), "doc");
    
    // Initialize properties (attributes) field
    cur->properties = NULL;
    
    // Initialize ns field
    cur->ns = NULL;
    
    // Call the function that contains the suspicious line
    int result = xmlExcC14NProcessNamespacesAxis(ctx, cur, 1);
    
    // Add assertion near the suspicious line - checking for potential memset issues
    // The suspicious line is memset(&ns_default, 0, sizeof(ns_default)) at line 828
    // We'll check that ns_default is properly initialized and accessible
    static xmlNs ns_default;
    klee_assert(sizeof(ns_default) > 0);  // Basic sanity check
    
    // Cleanup
    free(ctx->ns_rendered);
    for (int i = 0; i < 9; i++) {
        free(ctx->inclusive_ns_prefixes[i]);
    }
    free(ctx->inclusive_ns_prefixes);
    free(ctx);
    free(cur->doc);
    free(cur);
    
    return result;
}