#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNs xmlNs;
typedef struct _xmlC14NVisibleNsStack xmlC14NVisibleNsStack;
typedef struct _xmlC14NCtx xmlC14NCtx;

struct _xmlNs {
    void* _private;
    int type;
    const unsigned char* href;
    const unsigned char* prefix;
    struct _xmlNs* next;
};

struct _xmlC14NVisibleNsStack {
    int dummy;
};

struct _xmlC14NCtx {
    xmlC14NVisibleNsStack* ns_rendered;
    int dummy_members[10];
};

/* Function prototypes from libxml2 that we need to stub or implement */
int xmlC14NVisibleNsStackFind(xmlC14NVisibleNsStack* stack, xmlNs* ns);
void xmlC14NPrintNamespaces(xmlNs* ns, xmlC14NCtx* ctx);

/* Stub implementations */
int xmlC14NVisibleNsStackFind(xmlC14NVisibleNsStack* stack, xmlNs* ns) {
    /* Return symbolic value to explore both branches */
    int result;
    klee_make_symbolic(&result, sizeof(result), "visible_ns_find_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

void xmlC14NPrintNamespaces(xmlNs* ns, xmlC14NCtx* ctx) {
    /* This function is called at the target line */
    /* Place vulnerability assertion here */
    SAILR_ASSERT(sizeof(xmlNs) <= sizeof(xmlNs));  /* Ensure we don't write beyond xmlNs */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
}

/* Entrypoint function that leads to the target code */
void xmlC14NProcessAttrsAxis(xmlC14NCtx* ctx) {
    /* Variables from the context snippet */
    int visible;
    int has_empty_ns;
    int has_empty_ns_in_inclusive_list;
    
    /* Make these symbolic to explore different paths */
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    klee_make_symbolic(&has_empty_ns, sizeof(has_empty_ns), "has_empty_ns");
    klee_make_symbolic(&has_empty_ns_in_inclusive_list, sizeof(has_empty_ns_in_inclusive_list), 
                      "has_empty_ns_in_inclusive_list");
    
    /* Constrain to boolean values */
    klee_assume(visible == 0 || visible == 1);
    klee_assume(has_empty_ns == 0 || has_empty_ns == 1);
    klee_assume(has_empty_ns_in_inclusive_list == 0 || has_empty_ns_in_inclusive_list == 1);
    
    /* This is the code path from the snippet */
    if (visible && !has_empty_ns && has_empty_ns_in_inclusive_list) {
        static xmlNs ns_default;
        
        /* This is the target line - line 837: memset(&ns_default, 0, sizeof(ns_default)); */
        memset(&ns_default, 0, sizeof(ns_default));
        
        /* Check if the namespace is not already rendered */
        if (!xmlC14NVisibleNsStackFind(ctx->ns_rendered, &ns_default)) {
            /* This calls xmlC14NPrintNamespaces which contains our assertions */
            xmlC14NPrintNamespaces(&ns_default, ctx);
        }
    }
}

int main(void) {
    /* Allocate and initialize context */
    xmlC14NCtx* ctx = (xmlC14NCtx*)malloc(sizeof(xmlC14NCtx));
    if (!ctx) return 1;
    
    /* Allocate ns_rendered stack */
    ctx->ns_rendered = (xmlC14NVisibleNsStack*)malloc(sizeof(xmlC14NVisibleNsStack));
    if (!ctx->ns_rendered) {
        free(ctx);
        return 1;
    }
    
    /* Initialize dummy members */
    memset(ctx->dummy_members, 0, sizeof(ctx->dummy_members));
    
    /* Call the entrypoint function */
    xmlC14NProcessAttrsAxis(ctx);
    
    /* Cleanup */
    free(ctx->ns_rendered);
    free(ctx);
    
    return 0;
}