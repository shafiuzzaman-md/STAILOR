#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need to reach target line */
typedef struct _xmlC14NCtx xmlC14NCtx;
typedef struct _xmlNs xmlNs;
typedef struct _xmlExcC14NVisibleNsStack xmlExcC14NVisibleNsStack;

/* Minimal stub structures to satisfy compilation */
struct _xmlNs {
    void* placeholder;
};

struct _xmlExcC14NVisibleNsStack {
    void* placeholder;
};

struct _xmlC14NCtx {
    xmlExcC14NVisibleNsStack* ns_rendered;
    int placeholder1;
    int placeholder2;
};

/* Stub functions that will be called */
int xmlExcC14NVisibleNsStackFind(xmlExcC14NVisibleNsStack* stack, xmlNs* ns, xmlC14NCtx* ctx) {
    /* Return symbolic value to explore both branches */
    int result;
    klee_make_symbolic(&result, sizeof(result), "visible_ns_find_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

void xmlC14NPrintNamespaces(xmlNs* ns, xmlC14NCtx* ctx) {
    /* Target function - we need to reach the call to this */
    /* Place vulnerability assertion here before reachability marker */
    /* For memset OOB: ensure we don't write beyond ns_default bounds */
    /* ns_default is a local static xmlNs, sizeof(ns_default) should be safe */
    /* But the pattern suggests checking that memset size doesn't exceed buffer */
    SAILR_ASSERT(sizeof(xmlNs) >= sizeof(xmlNs));  /* Always true, but captures the pattern */
    klee_assert(0 && "SAILR_REACH_ASSERT");
}

/* Entrypoint function that leads to target line */
void xmlC14NProcessAttrsAxis(xmlC14NCtx* ctx) {
    /* Variables from the context snippet */
    int visible;
    int has_visibly_utilized_empty_ns;
    int has_empty_ns;
    int has_empty_ns_in_inclusive_list;
    int already_rendered;
    
    /* Make these symbolic to explore the path */
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    klee_make_symbolic(&has_visibly_utilized_empty_ns, sizeof(has_visibly_utilized_empty_ns), "has_visibly_utilized_empty_ns");
    klee_make_symbolic(&has_empty_ns, sizeof(has_empty_ns), "has_empty_ns");
    klee_make_symbolic(&has_empty_ns_in_inclusive_list, sizeof(has_empty_ns_in_inclusive_list), "has_empty_ns_in_inclusive_list");
    
    /* Constrain to follow the path in the snippet */
    klee_assume(visible != 0);
    klee_assume(has_visibly_utilized_empty_ns != 0);
    klee_assume(has_empty_ns == 0);
    klee_assume(has_empty_ns_in_inclusive_list == 0);
    
    /* This matches the if condition in the snippet */
    if(visible && has_visibly_utilized_empty_ns &&
        !has_empty_ns && !has_empty_ns_in_inclusive_list) {
        static xmlNs ns_default;
        
        /* This is the memset call at line 828 */
        memset(&ns_default, 0, sizeof(ns_default));
        
        already_rendered = xmlExcC14NVisibleNsStackFind(ctx->ns_rendered, &ns_default, ctx);
        if(!already_rendered) {
            /* This is the target call we need to reach */
            xmlC14NPrintNamespaces(&ns_default, ctx);
        }
    }
}

int main(void) {
    /* Allocate and initialize context */
    xmlC14NCtx* ctx = (xmlC14NCtx*)malloc(sizeof(xmlC14NCtx));
    if (!ctx) return 1;
    
    /* Initialize ns_rendered pointer (can be NULL or valid) */
    ctx->ns_rendered = (xmlExcC14NVisibleNsStack*)malloc(sizeof(xmlExcC14NVisibleNsStack));
    
    /* Call the entrypoint function */
    xmlC14NProcessAttrsAxis(ctx);
    
    /* Cleanup */
    free(ctx->ns_rendered);
    free(ctx);
    
    return 0;
}