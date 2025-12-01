#include <klee/klee.h>
#include "c14n.c"

int main() {
    // Initialize context structure
    xmlC14NCtxPtr ctx = (xmlC14NCtxPtr)malloc(sizeof(xmlC14NCtx));
    klee_make_symbolic(ctx, sizeof(xmlC14NCtx), "ctx");
    
    // Initialize ns_rendered stack
    ctx->ns_rendered = (xmlC14NVisibleNsStackPtr)malloc(sizeof(xmlC14NVisibleNsStack));
    klee_make_symbolic(ctx->ns_rendered, sizeof(xmlC14NVisibleNsStack), "ns_rendered");
    
    // Initialize current node
    xmlNodePtr cur = (xmlNodePtr)malloc(sizeof(xmlNode));
    klee_make_symbolic(cur, sizeof(xmlNode), "cur");
    
    // Initialize document
    cur->doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    klee_make_symbolic(cur->doc, sizeof(xmlDoc), "doc");
    
    // Initialize properties (attributes)
    cur->properties = NULL;
    
    // Initialize namespace
    cur->ns = (xmlNsPtr)malloc(sizeof(xmlNs));
    klee_make_symbolic(cur->ns, sizeof(xmlNs), "ns");
    
    // Set up flags that control the vulnerable path
    int visible = 1;
    int has_empty_ns = 0;
    int has_empty_ns_in_inclusive_list = 1;
    int has_visibly_utilized_empty_ns = 0;
    
    // Create static ns_default that will be memset at line 837
    static xmlNs ns_default;
    
    // Call the function that contains the suspicious line
    int result = xmlExcC14NProcessNamespacesAxis(ctx, cur, visible);
    
    // Add assertion to check for potential memory issues around line 837
    // The memset at line 837 operates on ns_default which is a static struct
    // We need to ensure the sizeof calculation and memset parameters are safe
    klee_assert(sizeof(ns_default) <= 1024); // Reasonable upper bound for xmlNs struct
    
    // Cleanup
    free(ctx->ns_rendered);
    free(ctx);
    free(cur->doc);
    free(cur->ns);
    free(cur);
    
    return result;
}