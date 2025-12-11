#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types */
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Minimal struct definitions to match the context */
typedef struct _xmlC14NIsVisCallback {
    /* dummy fields */
} xmlC14NIsVisCallback;

typedef struct _xmlC14NIsVisCallback *xmlC14NIsVisCallbackPtr;

typedef struct _xmlC14NCtx {
    xmlNsPtr *nsTab;
    int nsMax;
    xmlNodePtr *nodeTab;
    int nodeMax;
    /* other fields omitted for brevity */
} xmlC14NCtx;

typedef xmlC14NCtx *xmlC14NCtxPtr;

/* Stub functions referenced in the snippet */
void xmlC14NErrParam(const char *str) {
    /* do nothing */
}

void xmlFree(void *ptr) {
    free(ptr);
}

/* Entrypoint function from the SA spec */
void xmlC14NProcessAttrsAxis(xmlC14NCtxPtr ctx, xmlNodePtr node, xmlC14NIsVisCallbackPtr is_visible_callback) {
    /* This is a stub that leads to the target line */
    if (ctx == NULL) {
        xmlC14NErrParam("destroying namespaces stack");
        return;
    }
    
    /* Simulate the condition that leads to the vulnerable memset */
    if (ctx->nsTab != NULL) {
        memset(ctx->nsTab, 0, ctx->nsMax * sizeof(xmlNsPtr));
        xmlFree(ctx->nsTab);
    }
    if (ctx->nodeTab != NULL) {
        /* TARGET LINE: 299 - vulnerable memset */
        memset(ctx->nodeTab, 0, ctx->nsMax * sizeof(xmlNodePtr));
        
        /* VULNERABILITY ASSERTION: Check if the size calculation could overflow or be incorrect */
        /* The vulnerability is that ctx->nsMax might not match the actual allocation size of nodeTab */
        SAILR_ASSERT(ctx->nsMax >= 0 && ctx->nsMax <= ctx->nodeMax);
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        xmlFree(ctx->nodeTab);
    }
}

int main(void) {
    /* Create a symbolic context */
    xmlC14NCtx ctx;
    
    /* Make fields symbolic */
    klee_make_symbolic(&ctx.nsMax, sizeof(ctx.nsMax), "nsMax");
    klee_make_symbolic(&ctx.nodeMax, sizeof(ctx.nodeMax), "nodeMax");
    
    /* Assume reasonable bounds */
    klee_assume(ctx.nsMax >= 0 && ctx.nsMax < 1000);
    klee_assume(ctx.nodeMax >= 0 && ctx.nodeMax < 1000);
    
    /* Allocate tables based on symbolic sizes */
    if (ctx.nsMax > 0) {
        ctx.nsTab = (xmlNsPtr *)malloc(ctx.nsMax * sizeof(xmlNsPtr));
    } else {
        ctx.nsTab = NULL;
    }
    
    if (ctx.nodeMax > 0) {
        ctx.nodeTab = (xmlNodePtr *)malloc(ctx.nodeMax * sizeof(xmlNodePtr));
    } else {
        ctx.nodeTab = NULL;
    }
    
    /* Call the entrypoint function */
    xmlC14NProcessAttrsAxis(&ctx, NULL, NULL);
    
    /* Cleanup */
    if (ctx.nsTab != NULL) {
        free(ctx.nsTab);
    }
    if (ctx.nodeTab != NULL) {
        free(ctx.nodeTab);
    }
    
    return 0;
}