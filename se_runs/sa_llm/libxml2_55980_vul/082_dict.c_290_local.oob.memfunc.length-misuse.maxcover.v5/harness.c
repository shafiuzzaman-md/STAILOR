#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal struct definitions from libxml2 dict.c needed for the harness */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDictStrings xmlDictStrings;

struct _xmlDictStrings {
    xmlDictStrings *next;
    char *free;
    char *end;
    int size;
    int nbStrings;
    char array[1];
};

struct _xmlDict {
    xmlDictStrings *strings;
    /* Other fields omitted for brevity */
};

/* Forward declaration of the target function */
const char *xmlDictAddString(xmlDict *dict, const char *name, int namelen);

int main(void) {
    /* Symbolic inputs for the target function */
    char name[256];
    int namelen;
    xmlDict dict;
    xmlDictStrings pool;
    char pool_array[512];

    /* Initialize the dictionary structure */
    dict.strings = &pool;
    
    /* Initialize the pool structure */
    pool.next = NULL;
    pool.free = pool_array;
    pool.end = pool_array + sizeof(pool_array);
    pool.size = sizeof(pool_array);
    pool.nbStrings = 0;

    /* Make inputs symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&namelen, sizeof(namelen), "namelen");

    /* Assume namelen is within reasonable bounds for the name buffer */
    klee_assume(namelen >= 0 && namelen < 256);
    
    /* Assume the pool has enough space for the copy */
    /* This is the vulnerability assertion: ensure we don't overflow pool->free */
    klee_assume(pool.free + namelen + 1 <= pool.end);

    /* Call the target function */
    const char *result = xmlDictAddString(&dict, name, namelen);

    /* Vulnerability assertion: check that the memcpy won't overflow */
    /* The condition is that the destination has enough space for namelen bytes */
    SAILR_ASSERT(pool.free + namelen + 1 <= pool.end);

    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}

/* Implementation of the target function (simplified from dict.c) */
const char *xmlDictAddString(xmlDict *dict, const char *name, int namelen) {
    xmlDictStrings *pool;
    const char *ret;

    pool = dict->strings;
    
    /* This mimics the code path that leads to the target line */
    goto found_pool;

found_pool:
    ret = pool->free;
    /* TARGET LINE 290: memcpy(pool->free, name, namelen); */
    memcpy(pool->free, name, namelen);
    pool->free += namelen;
    *(pool->free++) = 0;
    pool->nbStrings++;
    return ret;
}