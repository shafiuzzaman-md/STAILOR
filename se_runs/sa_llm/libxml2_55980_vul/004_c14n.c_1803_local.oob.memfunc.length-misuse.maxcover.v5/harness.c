#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlC14NCtx xmlC14NCtx;
typedef xmlC14NCtx *xmlC14NCtxPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlC14NErrMemory */
void xmlC14NErrMemory(const char* msg) {
    /* Do nothing */
}

/* Target function signature from c14n.c */
xmlC14NCtxPtr xmlC14NNewCtx(xmlDoc* doc, int with_comments, 
                            int (*is_visible_callback)(void*, void*, void*),
                            void* user_data);

/* Implementation of the target function (simplified) */
xmlC14NCtxPtr xmlC14NNewCtx(xmlDoc* doc, int with_comments,
                            int (*is_visible_callback)(void*, void*, void*),
                            void* user_data) {
    xmlC14NCtxPtr ctx;
    
    /*
     * Allocate a new xmlC14NCtxPtr and fill the fields.
     */
    ctx = (xmlC14NCtxPtr) xmlMalloc(sizeof(xmlC14NCtx));
    if (ctx == NULL) {
        xmlC14NErrMemory("creating context");
        return (NULL);
    }
    
    /* TARGET LINE 1803 - memset call */
    memset(ctx, 0, sizeof(xmlC14NCtx));
    
    /* Vulnerability assertion: ensure allocation size matches memset size */
    SAILR_ASSERT(sizeof(xmlC14NCtx) <= malloc_usable_size(ctx));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /*
     * initialize C14N context
     */
    /* We won't reach these lines due to the klee_assert above */
    
    return ctx;
}

/* Helper to get usable size of malloc'd block (simplified) */
size_t malloc_usable_size(void* ptr) {
    /* In reality, we'd need platform-specific implementation.
       For KLEE, we'll use a symbolic value that represents the
       actual allocated size. */
    size_t usable_size;
    klee_make_symbolic(&usable_size, sizeof(usable_size), "usable_size");
    /* Assume usable_size is at least the requested size */
    klee_assume(usable_size >= sizeof(xmlC14NCtx));
    return usable_size;
}

int main(void) {
    /* Symbolic inputs to the function */
    xmlDoc* doc;
    int with_comments;
    void* user_data;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&with_comments, sizeof(with_comments), "with_comments");
    klee_make_symbolic(&user_data, sizeof(user_data), "user_data");
    
    /* Call the target function */
    xmlC14NCtxPtr result = xmlC14NNewCtx(doc, with_comments, NULL, user_data);
    
    /* Free if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}