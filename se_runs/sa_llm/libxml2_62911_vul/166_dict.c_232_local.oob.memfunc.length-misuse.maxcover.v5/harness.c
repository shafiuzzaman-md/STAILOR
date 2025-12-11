#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal declarations from libxml2 dict.h needed to compile */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDictStrings xmlDictStrings;

struct _xmlDictStrings {
    xmlDictStrings *next;
    char *free;
    char *end;
    char array[1];
};

struct _xmlDict {
    xmlDictStrings *strings;
    /* other fields omitted for brevity */
};

/* Stub for xmlDictLookup - the entrypoint function */
const char* xmlDictLookup(xmlDict* dict, const char* prefix, int plen, const char* name, int namelen) {
    xmlDictStrings *pool;
    const char *ret;
    
    /* Simulate finding a pool with enough space */
    pool = dict->strings;
    if (pool == NULL) {
        /* Allocate new pool */
        size_t pool_size = 4096; /* arbitrary size */
        pool = (xmlDictStrings*)malloc(sizeof(xmlDictStrings) + pool_size - 1);
        if (pool == NULL) return NULL;
        pool->next = dict->strings;
        pool->free = pool->array;
        pool->end = pool->array + pool_size;
        dict->strings = pool;
    }
    
    /* Check if pool has enough space */
    size_t needed = plen + namelen + 2; /* +2 for ':' and null terminator */
    if (pool->free + needed > pool->end) {
        /* Would allocate new pool in real code, but for harness we assume enough space */
        return NULL;
    }
    
found_pool:
    ret = pool->free;
    
    /* The vulnerable memcpy operations from the snippet */
    memcpy(pool->free, prefix, plen);
    pool->free += plen;
    *(pool->free++) = ':';
    memcpy(pool->free, name, namelen);  /* TARGET LINE: 232 */
    pool->free += namelen;
    *(pool->free++) = 0;
    
    return ret;
}

int main(void) {
    /* Initialize dict */
    xmlDict dict;
    dict.strings = NULL;
    
    /* Create a pool with symbolic size constraints */
    size_t pool_size;
    klee_make_symbolic(&pool_size, sizeof(pool_size), "pool_size");
    klee_assume(pool_size >= 100 && pool_size <= 4096);
    
    xmlDictStrings *pool = (xmlDictStrings*)malloc(sizeof(xmlDictStrings) + pool_size - 1);
    pool->next = NULL;
    pool->free = pool->array;
    pool->end = pool->array + pool_size;
    dict.strings = pool;
    
    /* Symbolic inputs for the vulnerable function call */
    int plen, namelen;
    char prefix[100], name[100];
    
    klee_make_symbolic(&plen, sizeof(plen), "plen");
    klee_make_symbolic(&namelen, sizeof(namelen), "namelen");
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Assume reasonable lengths based on bounds hints */
    klee_assume(plen >= 0 && plen < 100);
    klee_assume(namelen >= 0 && namelen < 100);
    
    /* Assume pool has enough space for prefix and separator */
    klee_assume(pool->free + plen + 1 <= pool->end);
    
    /* Call the function - this will execute the memcpy at line 232 */
    const char* result = xmlDictLookup(&dict, prefix, plen, name, namelen);
    
    /* Vulnerability assertion: check that namelen doesn't exceed available space */
    /* After copying prefix and ':', available space is (pool->end - (pool->free)) */
    char* after_prefix = pool->free - 1; /* points after the ':' */
    size_t available = pool->end - after_prefix;
    
    /* The vulnerability condition: namelen must not exceed available space */
    SAILR_ASSERT(namelen <= available);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(pool);
    
    return 0;
}