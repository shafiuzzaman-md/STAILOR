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

/* --- Stub Functions --- */
#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

/* Macro redirection for xmlRandom */
unsigned stub_xmlRandom(void) {
    unsigned ret;
    klee_make_symbolic(&ret, sizeof(ret), "stub_xmlRandom_ret");
    return ret;
}
#define xmlRandom stub_xmlRandom

/* Macro redirection for xmlMalloc */
void* stub_xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    klee_assume(ptr != 0);
    return ptr;
}
#define xmlMalloc stub_xmlMalloc

/* Macro redirection for xmlFree */
void stub_xmlFree(void *ptr) {
    free(ptr);
}
#define xmlFree stub_xmlFree

/* No-op stubs for mutex functions */
void stub_xmlMutexLock(void *mutex) {}
#define xmlMutexLock stub_xmlMutexLock

void stub_xmlMutexUnlock(void *mutex) {}
#define xmlMutexUnlock stub_xmlMutexUnlock

void stub_xmlInitParser(void) {}
#define xmlInitParser stub_xmlInitParser

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

/* --- Harness --- */
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Entrypoint declaration */
extern void xmlDictFree(xmlDict *dict);

int main(int argc, char **argv) {
    /* Create main dictionary */
    xmlDict *dict = create_minimal_dict();
    klee_assume(dict != 0);
    klee_assume(dict->table != 0);
    klee_assume(dict->strings != 0);
    
    /* Create subdict */
    xmlDict *subdict = create_minimal_dict();
    klee_assume(subdict != 0);
    klee_assume(subdict->table != 0);
    klee_assume(subdict->strings != 0);
    
    /* Link them */
    dict->subdict = subdict;
    
    /* Ensure ref_counter is 1 so xmlDictFree will actually free */
    dict->ref_counter = 1;
    
    /* Call xmlDictFree - this should free subdict first, then potentially access freed memory */
    xmlDictFree(dict);
    
    /* If execution reaches here, UAF didn't crash */
    
    
    
    return 0;
}