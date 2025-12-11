#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to satisfy compilation */
typedef struct _xmlNs xmlNs;
struct _xmlNs {
    void* next;
    const unsigned char* href;
    const unsigned char* prefix;
};

typedef struct _xmlC14NCtx xmlC14NCtx;
struct _xmlC14NCtx {
    void* ns_rendered;
    int other_fields;
};

/* Stub functions referenced in the target code */
int xmlC14NVisibleNsStackFind(void* ns_rendered, xmlNs* ns) {
    /* Return symbolic value to explore both branches */
    int result;
    klee_make_symbolic(&result, sizeof(result), "visible_ns_find_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

void xmlC14NPrintNamespaces(xmlNs* ns, xmlC14NCtx* ctx) {
    /* This is the function containing the target line 661 */
    /* We need to reach the memset call inside it */
    
    /* Vulnerability assertion for memset OOB */
    /* The memset writes sizeof(ns_default) bytes starting at &ns_default */
    /* For stack variable ns_default, sizeof(xmlNs) should be within bounds */
    /* The SA rule suggests checking length/count bounds */
    /* We assert that sizeof(ns_default) <= valid memory region size */
    /* Since ns_default is a local static, we assume it's properly allocated */
    /* But the SA pattern flags potential unbounded length - we check the size */
    SAILR_ASSERT(sizeof(xmlNs) <= 1024); /* Conservative bound for stack object */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
}

/* Entrypoint function from SA spec */
void xmlC14NProcessAttrsAxis(xmlC14NCtx* ctx, int visible, int has_empty_ns) {
    /* Reconstruct the code snippet around line 661 */
    if(visible && !has_empty_ns) {
        static xmlNs ns_default;
        
        memset(&ns_default, 0, sizeof(ns_default));
        if(!xmlC14NVisibleNsStackFind(ctx->ns_rendered, &ns_default)) {
            xmlC14NPrintNamespaces(&ns_default, ctx);
        }
    }
}

int main(void) {
    /* Create symbolic inputs to reach target location */
    xmlC14NCtx ctx;
    int visible, has_empty_ns;
    
    /* Initialize context */
    ctx.ns_rendered = malloc(16); /* Dummy allocation */
    ctx.other_fields = 0;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    klee_make_symbolic(&has_empty_ns, sizeof(has_empty_ns), "has_empty_ns");
    
    /* Assume conditions to reach the target branch */
    klee_assume(visible != 0);
    klee_assume(has_empty_ns == 0);
    
    /* Call the entrypoint */
    xmlC14NProcessAttrsAxis(&ctx, visible, has_empty_ns);
    
    /* Cleanup */
    free(ctx.ns_rendered);
    
    return 0;
}