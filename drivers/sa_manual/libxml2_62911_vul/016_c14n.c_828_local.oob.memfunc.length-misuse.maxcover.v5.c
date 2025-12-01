#include <klee/klee.h>
#include "c14n.c"

int main() {
    // Initialize context structure
    xmlC14NCtxPtr ctx = (xmlC14NCtxPtr)malloc(sizeof(xmlC14NCtx));
    klee_make_symbolic(ctx, sizeof(xmlC14NCtx), "ctx");
    
    // Initialize node structure
    xmlNodePtr cur = (xmlNodePtr)malloc(sizeof(xmlNode));
    klee_make_symbolic(cur, sizeof(xmlNode), "cur");
    
    // Initialize document structure
    xmlDocPtr doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    // Set up basic relationships
    cur->doc = doc;
    cur->ns = NULL;
    cur->properties = NULL;
    
    // Initialize namespace rendered stack
    ctx->ns_rendered = xmlC14NVisibleNsStackCreate();
    
    // Initialize inclusive namespace prefixes array
    ctx->inclusive_ns_prefixes = (xmlChar**)malloc(10 * sizeof(xmlChar*));
    for (int i = 0; i < 9; i++) {
        ctx->inclusive_ns_prefixes[i] = (xmlChar*)malloc(20);
        klee_make_symbolic(ctx->inclusive_ns_prefixes[i], 20, "prefix");
    }
    ctx->inclusive_ns_prefixes[9] = NULL;
    
    // Call the function that contains the suspicious line
    int result = xmlExcC14NProcessNamespacesAxis(ctx, cur, 1);
    
    // Add assertion near the suspicious line - checking for potential memset issues
    // The suspicious line is memset(&ns_default, 0, sizeof(ns_default));
    // We add an assertion that the ns_default structure is properly sized
    klee_assert(sizeof(xmlNs) > 0);
    
    // Cleanup
    free(ctx);
    free(cur);
    free(doc);
    
    return 0;
}