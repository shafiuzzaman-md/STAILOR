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
#define IN_LIBXML
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
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

/* --- Stub Functions --- */
/* xmlMalloc stub */
void* stub_xmlMalloc(size_t size) {
    return malloc(size);
}
#define xmlMalloc stub_xmlMalloc

/* xmlFree stub */
void stub_xmlFree(void *ptr) {
    free(ptr);
}
#define xmlFree stub_xmlFree

/* xmlDictHashName stub - returns constant to force collisions */
unsigned stub_xmlDictHashName(unsigned seed, const xmlChar* data, size_t maxLen, size_t *plen) {
    if (plen) *plen = 1;
    return 0x80000000u;
}
#define xmlDictHashName stub_xmlDictHashName

/* xmlDictHashQName stub - returns constant to force collisions */
unsigned stub_xmlDictHashQName(unsigned seed, const xmlChar *prefix, const xmlChar *name, size_t *pplen, size_t *plen) {
    if (pplen) *pplen = 1;
    if (plen) *plen = 1;
    return 0x80000000u;
}
#define xmlDictHashQName stub_xmlDictHashQName

/* xmlDictAddString stub - returns NULL */
const xmlChar* stub_xmlDictAddString(xmlDictPtr dict, const xmlChar *name, unsigned int namelen) {
    return NULL;
}
#define xmlDictAddString stub_xmlDictAddString

/* xmlDictAddQString stub - returns NULL */
const xmlChar* stub_xmlDictAddQString(xmlDictPtr dict, const xmlChar *prefix, unsigned int plen, const xmlChar *name, unsigned int namelen) {
    return NULL;
}
#define xmlDictAddQString stub_xmlDictAddQString

/* xmlDictFindEntry stub - returns NULL */
xmlDictEntry* stub_xmlDictFindEntry(const xmlDict *dict, const xmlChar *prefix, const xmlChar *name, int len, unsigned hashValue, int *pfound) {
    if (pfound) *pfound = 0;
    return NULL;
}
#define xmlDictFindEntry stub_xmlDictFindEntry

/* xmlDictGrow stub - returns 0 (success) */
int stub_xmlDictGrow(xmlDictPtr dict, unsigned size) {
    return 0;
}
#define xmlDictGrow stub_xmlDictGrow

/* xmlDictLookupInternal stub - returns NULL */
const xmlDictEntry* stub_xmlDictLookupInternal(xmlDict *dict, const xmlChar *prefix, const xmlChar *name, int maybeLen, int update) {
    return NULL;
}
#define xmlDictLookupInternal stub_xmlDictLookupInternal

/* xoroshiro64ss stub - returns deterministic value */
unsigned stub_xoroshiro64ss(unsigned *s) {
    return 0x12345678u;
}
#define xoroshiro64ss stub_xoroshiro64ss

/* xmlDictCreateSub stub - creates dictionary with subdict */
xmlDict* stub_xmlDictCreateSub(xmlDict *sub) {
    xmlDict* dict = (xmlDict*)malloc(sizeof(xmlDict));
    if (!dict) return NULL;
    dict->ref_counter = 1;
    dict->table = NULL;
    dict->size = 0;
    dict->nbElems = 0;
    dict->strings = NULL;
    dict->subdict = sub;
    dict->seed = 0;
    dict->limit = 0;
    return dict;
}
#define xmlDictCreateSub stub_xmlDictCreateSub

/* xmlInitParser stub */
void stub_xmlInitParser(void) {}
#define xmlInitParser stub_xmlInitParser

/* xmlRandom stub */
unsigned stub_xmlRandom(void) {
    return 0x12345678u;
}
#define xmlRandom stub_xmlRandom

/* xmlMutex stubs */
typedef struct { int dummy; } xmlMutex;
void stub_xmlInitMutex(xmlMutex *mutex) {}
#define xmlInitMutex stub_xmlInitMutex
void stub_xmlCleanupMutex(xmlMutex *mutex) {}
#define xmlCleanupMutex stub_xmlCleanupMutex
void stub_xmlMutexLock(xmlMutex *mutex) {}
#define xmlMutexLock stub_xmlMutexLock
void stub_xmlMutexUnlock(xmlMutex *mutex) {}
#define xmlMutexUnlock stub_xmlMutexUnlock

/* xmlDictReference stub */
int stub_xmlDictReference(xmlDict *dict) {
    if (!dict) return -1;
    dict->ref_counter++;
    return 0;
}
#define xmlDictReference stub_xmlDictReference

/* --- Embedded Functions --- */
/* No embedded functions needed */

/* --- Harness --- */
/* Entrypoint declaration */
extern void xmlDictFree(xmlDict *dict);

int main(int argc, char **argv) {
    /* Allocate concrete objects */
    xmlDict *dict = (xmlDict*)malloc(sizeof(xmlDict));
    xmlDict *subdict = (xmlDict*)malloc(sizeof(xmlDict));
    xmlDictEntry *table = (xmlDictEntry*)malloc(256 * sizeof(xmlDictEntry));
    xmlDictEntry *subdict_table = (xmlDictEntry*)malloc(256 * sizeof(xmlDictEntry));
    
    /* Ensure allocations succeeded */
    klee_assume(dict != 0);
    klee_assume(subdict != 0);
    klee_assume(table != 0);
    klee_assume(subdict_table != 0);
    
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
    klee_make_symbolic(table, 256 * sizeof(xmlDictEntry), "table");
    klee_make_symbolic(subdict_table, 256 * sizeof(xmlDictEntry), "subdict_table");
    
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