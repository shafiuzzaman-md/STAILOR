// [STAILOR] Auto-converted for OSS-Fuzz Verification (C Mode)
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>

/* --- Safe Macro Shims --- */
#define klee_assert(x) assert(x)
#define BUG_ASSERT(x) assert(x)
#define REACH_ASSERT()
#define klee_assume(x)

/* --- Globals --- */
/* --- Global Constants --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
#endif


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* Helper to create a minimal xmlRegexp structure */
typedef struct _xmlRegexp {
    void *compact;
    void *states;
    int nbCounters;
    /* Other fields omitted for simplicity */
} xmlRegexp;


/* --- Harness Preamble --- */
/* --- Harness --- */
// #include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
typedef void (*xmlRegExecCallbacks)(void*, const void*, void*, void*);
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;

xmlRegExecCtxt *xmlRegNewExecCtxt(xmlRegexp *comp, xmlRegExecCallbacks callback, void *data);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Allocate a concrete xmlRegexp structure */
    xmlRegexp *comp_ptr = (xmlRegexp *)malloc(sizeof(xmlRegexp));
    if (!comp_ptr) return 1;
    
    /* Initialize fields */
    comp_ptr->compact = NULL;
    comp_ptr->states = NULL;
    
    /* Make nbCounters symbolic and constrain it to cause overflow */
    int nbCounters_sym;
    /* mapped &nbCounters_sym */
    if (Size < _consumed + sizeof(nbCounters_sym)) return 0;
    memcpy(&nbCounters_sym, Data + _consumed, sizeof(nbCounters_sym));
    _consumed += sizeof(nbCounters_sym);
    
    /* Constraint: nbCounters > 0 and nbCounters * sizeof(int) * 2 > 4096 */
    if (!(nbCounters_sym > 0)) return 0;
    if (!(nbCounters_sym * sizeof(int) * 2 > 4096)) return 0;
    
    /* Also bound it to avoid huge values that might cause other issues */
    if (nbCounters_sym >= 1000000) return 0; /* Auto-fixed unsafe assume */
    
    comp_ptr->nbCounters = nbCounters_sym;
    
    /* Ensure comp_ptr is not NULL */
    if (!(comp_ptr != 0)) return 0;
    
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