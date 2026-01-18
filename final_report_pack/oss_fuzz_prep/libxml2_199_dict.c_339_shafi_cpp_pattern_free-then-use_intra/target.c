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
typedef unsigned char xmlChar;
typedef struct _xmlDict xmlDict;
typedef struct _xmlDictStrings xmlDictStrings;
typedef xmlDictStrings *xmlDictStringsPtr;
typedef struct _xmlDictEntry xmlDictEntry;

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

struct _xmlDictStrings {
    xmlDictStringsPtr next;
    xmlChar *free;
    xmlChar *end;
    size_t size;
    size_t nbStrings;
    xmlChar array[1];
};

struct _xmlDictEntry {
    unsigned hashValue;
    const xmlChar *name;
};

#define MIN_HASH_SIZE 8


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
xmlDict* create_minimal_dict(void) {
    xmlDict *dict = (xmlDict*)malloc(sizeof(xmlDict));
    if (!dict) return NULL;
    
    dict->ref_counter = 1;
    dict->size = MIN_HASH_SIZE;
    dict->nbElems = 0;
    dict->limit = 0;
    dict->seed = 0;
    dict->subdict = NULL;
    
    /* Allocate table */
    dict->table = (xmlDictEntry*)malloc(sizeof(xmlDictEntry) * MIN_HASH_SIZE);
    klee_assume(dict->table != 0);
    memset(dict->table, 0, sizeof(xmlDictEntry) * MIN_HASH_SIZE);
    
    /* Allocate strings */
    dict->strings = (xmlDictStringsPtr)malloc(sizeof(xmlDictStrings) + 100);
    klee_assume(dict->strings != 0);
    dict->strings->size = 100;
    dict->strings->nbStrings = 0;
    dict->strings->free = &dict->strings->array[0];
    dict->strings->end = &dict->strings->array[100];
    dict->strings->next = NULL;
    
    return dict;
}


/* --- Harness Preamble --- */
/* --- Harness --- */
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Entrypoint declaration */
extern void xmlDictFree(xmlDict *dict);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create main dictionary */
    xmlDict *dict = create_minimal_dict();
    if (!(dict != 0)) return 0;
    if (!(dict->table != 0)) return 0;
    if (!(dict->strings != 0)) return 0;
    
    /* Create subdict */
    xmlDict *subdict = create_minimal_dict();
    if (!(subdict != 0)) return 0;
    if (!(subdict->table != 0)) return 0;
    if (!(subdict->strings != 0)) return 0;
    
    /* Link them */
    dict->subdict = subdict;
    
    /* Ensure ref_counter is 1 so xmlDictFree will actually free */
    dict->ref_counter = 1;
    
    /* Call xmlDictFree - this should free subdict first, then potentially access freed memory */
    xmlDictFree(dict);
    
    /* If execution reaches here, UAF didn't crash */
    
    
    
    return 0;

}