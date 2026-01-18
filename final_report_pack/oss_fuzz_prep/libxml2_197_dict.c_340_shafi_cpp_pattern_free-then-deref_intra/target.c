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
#define IN_LIBXML
#include <stdlib.h>
#include <string.h>
// #include <klee/klee.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Minimal type definitions from libxml2 */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;
typedef unsigned int xmlChar;
typedef struct _xmlDictEntry {
    unsigned hashValue;
    const xmlChar *name;
} xmlDictEntry;
typedef struct _xmlDictStrings xmlDictStrings;
typedef xmlDictStrings *xmlDictStringsPtr;
struct _xmlDictStrings {
    xmlDictStringsPtr next;
    xmlChar *free;
    xmlChar *end;
    size_t size;
    size_t nbStrings;
    xmlChar array[1];
};
struct _xmlDict {
    int ref_counter;
    xmlDictEntry *table;
    size_t size;
    unsigned int nbElems;
    xmlDictStringsPtr strings;
    struct _xmlDict *subdict;
    unsigned seed;
    size_t limit;
};


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* No embedded functions needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
/* Entrypoint declaration */
extern void xmlDictFree(xmlDict *dict);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Allocate concrete objects */
    xmlDict *dict = (xmlDict*)malloc(sizeof(xmlDict));
    xmlDict *subdict = (xmlDict*)malloc(sizeof(xmlDict));
    xmlDictEntry *table = (xmlDictEntry*)malloc(256 * sizeof(xmlDictEntry));
    xmlDictEntry *subdict_table = (xmlDictEntry*)malloc(256 * sizeof(xmlDictEntry));
    
    /* Ensure allocations succeeded */
    if (!(dict != 0)) return 0;
    if (!(subdict != 0)) return 0;
    if (!(table != 0)) return 0;
    if (!(subdict_table != 0)) return 0;
    
    /* Initialize dict structure */
    dict->ref_counter = 1;
    dict->table = table;
    dict->size = 8;  /* MIN_HASH_SIZE */
    dict->nbElems = 0;
    dict->strings = NULL;
    dict->subdict = subdict;
    dict->seed = 0;
    dict->limit = 0;
    
    /* Initialize subdict structure */
    subdict->ref_counter = 1;
    subdict->table = subdict_table;
    subdict->size = 8;
    subdict->nbElems = 0;
    subdict->strings = NULL;
    subdict->subdict = NULL;
    subdict->seed = 0;
    subdict->limit = 0;
    
    /* Make table contents symbolic with small constraints */
    /* mapped table */
    if (Size < _consumed + 256 * sizeof(xmlDictEntry)) return 0;
    memcpy(table, Data + _consumed, 256 * sizeof(xmlDictEntry));
    _consumed += 256 * sizeof(xmlDictEntry);
    /* mapped subdict_table */
    if (Size < _consumed + 256 * sizeof(xmlDictEntry)) return 0;
    memcpy(subdict_table, Data + _consumed, 256 * sizeof(xmlDictEntry));
    _consumed += 256 * sizeof(xmlDictEntry);
    
    /* Call xmlDictFree to trigger UAF */
    xmlDictFree(dict);
    
    /* If we reach here, the UAF crash didn't happen */
    
    
    
    /* Cleanup */
    free(table);
    free(subdict_table);
    free(dict);
    free(subdict);
    return 0;

}