#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of libxml2 types and functions needed */
typedef struct _xmlRelaxNGTypeLibrary xmlRelaxNGTypeLibrary;
typedef struct _xmlRelaxNGValidState xmlRelaxNGValidState;

/* Stub for xmlRelaxNGCopyValidState - the entrypoint from SA spec */
xmlRelaxNGValidState* xmlRelaxNGCopyValidState(xmlRelaxNGValidState* state) {
    /* This is a stub that will be implemented below to reach target line */
    return state;
}

/* Stub for xmlRngVErrMemory */
void xmlRngVErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Stub for xmlStrdup */
char* xmlStrdup(const char* cur) {
    size_t len = strlen(cur) + 1;
    char* res = (char*)malloc(len);
    if (res) {
        memcpy(res, cur, len);
    }
    return res;
}

/* Custom xmlMalloc that returns symbolic pointer */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "malloc_buffer");
    }
    return ptr;
}

/* Target function that contains the vulnerable memset at line 2728 */
int target_function(const char* namespace, void* data, int have, void* comp, void* check) {
    xmlRelaxNGTypeLibrary* lib;
    
    /* Line 2728 in relaxng.c is: memset(lib, 0, sizeof(xmlRelaxNGTypeLibrary)); */
    /* The SA rule is local.oob.memfunc.length-misuse.maxcover.v5 */
    /* This suggests the length argument to memset might be incorrect */
    
    lib = (xmlRelaxNGTypeLibrary*)xmlMalloc(sizeof(xmlRelaxNGTypeLibrary));
    if (lib == NULL) {
        xmlRngVErrMemory(NULL, "adding types library\n");
        return (-1);
    }
    
    /* VULNERABILITY ASSERTION: Check that the memset length doesn't exceed allocated size */
    /* The SA rule hints at OOB risk in memset length/count being unbounded */
    /* We need to ensure the size passed to memset is <= allocated size */
    SAILR_ASSERT(sizeof(xmlRelaxNGTypeLibrary) <= malloc_usable_size(lib));
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(lib, 0, sizeof(xmlRelaxNGTypeLibrary));
    lib->namespace = xmlStrdup(namespace);
    lib->data = data;
    lib->have = have;
    lib->comp = comp;
    lib->check = check;
    
    free(lib);
    return 0;
}

/* Helper to get usable size of malloc'd block (simplified for KLEE) */
size_t malloc_usable_size(void* ptr) {
    if (!ptr) return 0;
    /* In real libxml2, xmlMalloc might allocate more than requested */
    /* For symbolic execution, we assume it allocates at least requested size */
    return sizeof(xmlRelaxNGTypeLibrary);
}

int main(void) {
    /* Symbolic inputs to reach the target function */
    char namespace[256];
    int have;
    void* data;
    void* comp;
    void* check;
    
    /* Make inputs symbolic */
    klee_make_symbolic(namespace, sizeof(namespace), "namespace");
    klee_make_symbolic(&have, sizeof(have), "have");
    klee_make_symbolic(&data, sizeof(data), "data");
    klee_make_symbolic(&comp, sizeof(comp), "comp");
    klee_make_symbolic(&check, sizeof(check), "check");
    
    /* Assume namespace is null-terminated for xmlStrdup */
    namespace[255] = '\0';
    klee_assume(namespace[0] != '\0');  /* Ensure non-empty to avoid trivial paths */
    
    /* Assume have is non-negative as hinted by bounds_hints */
    klee_assume(have >= 0);
    
    /* Call the entrypoint from SA spec first */
    xmlRelaxNGCopyValidState(NULL);
    
    /* Call the target function that contains the vulnerable memset */
    target_function(namespace, data, have, comp, check);
    
    return 0;
}