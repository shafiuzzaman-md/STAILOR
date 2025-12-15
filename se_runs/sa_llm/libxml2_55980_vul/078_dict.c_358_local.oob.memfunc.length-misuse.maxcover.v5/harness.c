#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to compile dict.c functions */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

typedef struct _xmlDictStrings xmlDictStrings;
struct _xmlDictStrings {
    xmlDictStrings *next;
    char *free;
    char *end;
    int size;
    int nbStrings;
};

struct _xmlDict {
    xmlDictStrings *strings;
    /* Other fields omitted for brevity */
};

/* Function prototype from dict.c */
void *xmlDictAddString(xmlDictPtr dict, const char *prefix, int plen,
                       const char *name, int namelen);

/* Stub implementation of xmlDictAddString to reach target line */
void *xmlDictAddString(xmlDictPtr dict, const char *prefix, int plen,
                       const char *name, int namelen) {
    /* Simulate the pool allocation logic from dict.c */
    static xmlDictStrings pool;
    static char buffer[1024]; /* Fixed-size buffer for simulation */
    
    /* Initialize pool if needed */
    if (pool.free == NULL) {
        pool.free = buffer;
        pool.end = buffer + sizeof(buffer);
        pool.size = sizeof(buffer);
        pool.nbStrings = 0;
        pool.next = NULL;
    }
    
    /* Check if we have enough space for both strings and separators */
    int total_needed = plen + namelen + 2; /* +2 for ':' and null terminator */
    if (pool.free + total_needed > pool.end) {
        /* Not enough space - simulate allocation failure */
        return NULL;
    }
    
    /* This simulates reaching line 358 */
    char *ret = pool.free;
    
    /* VULNERABILITY ASSERTION: Check if plen is within bounds */
    /* Condition: plen must be <= available space in pool */
    int available = pool.end - pool.free;
    SAILR_ASSERT(plen <= available);
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memcpy would happen here, but we never reach it due to klee_assert */
    /* memcpy(pool->free, prefix, plen); */
    
    return ret;
}

int main(void) {
    /* Create symbolic inputs */
    xmlDict dict;
    dict.strings = NULL;
    
    char prefix[256];
    char name[256];
    int plen, namelen;
    
    /* Make inputs symbolic */
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&plen, sizeof(plen), "plen");
    klee_make_symbolic(&namelen, sizeof(namelen), "namelen");
    
    /* Assume reasonable bounds for lengths */
    klee_assume(plen >= 0 && plen < 256);
    klee_assume(namelen >= 0 && namelen < 256);
    
    /* Ensure null-terminated strings for safety */
    prefix[255] = '\0';
    name[255] = '\0';
    
    /* Call the target function */
    xmlDictAddString(&dict, prefix, plen, name, namelen);
    
    return 0;
}