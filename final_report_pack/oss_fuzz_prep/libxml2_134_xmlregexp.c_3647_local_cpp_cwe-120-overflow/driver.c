#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
#endif

/* --- Stub Functions --- */
#ifndef __KLEE__
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* Stub xmlMalloc to use strict_alloc in replay mode */
#ifdef __KLEE__
#define xmlMalloc(size) malloc(size)
#else
#define xmlMalloc(size) strict_alloc(size)
#endif

/* Stub xmlFree */
#define xmlFree(ptr) free(ptr)

/* Stub xmlStrdup - return NULL to avoid extra allocations */
#define xmlStrdup(str) NULL

/* Stub xmlRealloc - return NULL to avoid extra allocations */
#define xmlRealloc(ptr, size) NULL

/* Stub xmlGrowCapacity - return a positive integer */
int stub_xmlGrowCapacity(int old, size_t size, int inc, int max) {
    return old + 1;
}
#define xmlGrowCapacity stub_xmlGrowCapacity

/* --- Embedded Functions --- */
/* Helper to create a minimal xmlRegexp structure */
typedef struct _xmlRegexp {
    void *compact;
    void *states;
    int nbCounters;
    /* Other fields omitted for simplicity */
} xmlRegexp;

/* --- Harness --- */
#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
typedef void (*xmlRegExecCallbacks)(void*, const void*, void*, void*);
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;

xmlRegExecCtxt *xmlRegNewExecCtxt(xmlRegexp *comp, xmlRegExecCallbacks callback, void *data);

int main(int argc, char **argv) {
    /* Allocate a concrete xmlRegexp structure */
    xmlRegexp *comp_ptr = (xmlRegexp *)malloc(sizeof(xmlRegexp));
    if (!comp_ptr) return 1;
    
    /* Initialize fields */
    comp_ptr->compact = NULL;
    comp_ptr->states = NULL;
    
    /* Make nbCounters symbolic and constrain it to cause overflow */
    int nbCounters_sym;
    klee_make_symbolic(&nbCounters_sym, sizeof(nbCounters_sym), "nbCounters_sym");
    
    /* Constraint: nbCounters > 0 and nbCounters * sizeof(int) * 2 > 4096 */
    klee_assume(nbCounters_sym > 0);
    klee_assume(nbCounters_sym * sizeof(int) * 2 > 4096);
    
    /* Also bound it to avoid huge values that might cause other issues */
    if (nbCounters_sym >= 1000000) return 0; /* Auto-fixed unsafe assume */
    
    comp_ptr->nbCounters = nbCounters_sym;
    
    /* Ensure comp_ptr is not NULL */
    klee_assume(comp_ptr != 0);
    
    /* Call the target function */
    xmlRegExecCtxt *result = xmlRegNewExecCtxt(comp_ptr, NULL, NULL);
    
    /* - if we reach here without crashing, the bug didn't happen */
    
    
    /* REACH_ASSERT - sentinel for reachability scoring */
    
    
    /* Cleanup */
    if (result) {
        /* We can't call xmlRegFreeExecCtxt because it's not in our harness,
           but the bug should have already triggered if it was going to */
    }
    free(comp_ptr);
    
    return 0;
}