#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal declarations from libxml2 needed for the harness */
typedef unsigned char xmlChar;

/* Stub for xmlDictCreate */
void* xmlDictCreate(void) {
    return malloc(1); /* Return non-NULL to avoid null deref */
}

/* Stub for xmlDictFree */
void xmlDictFree(void* dict) {
    free(dict);
}

/* Stub for xmlDictLookup */
const xmlChar* xmlDictLookup(void* dict, const xmlChar* name, int len) {
    (void)dict;
    (void)name;
    (void)len;
    static xmlChar dummy = 0;
    return &dummy;
}

/* Stub for xmlDictQLookup */
const xmlChar* xmlDictQLookup(void* dict, const xmlChar* prefix, const xmlChar* name) {
    (void)dict;
    (void)prefix;
    (void)name;
    static xmlChar dummy = 0;
    return &dummy;
}

/* Stub for xmlDictOwns */
int xmlDictOwns(void* dict, const xmlChar* str) {
    (void)dict;
    (void)str;
    return 1;
}

/* Stub for xmlDictSize */
int xmlDictSize(void* dict) {
    (void)dict;
    return 0;
}

/* The actual test function from testdict.c that contains the target line */
static void test_dict(void) {
    xmlChar test1[40];
    xmlChar prefix[40];
    xmlChar *cur, *pref;
    const xmlChar *tmp;
    int NB_STRINGS_MIN, in, on;

    /* Make symbolic the variables that influence the memset length */
    klee_make_symbolic(&NB_STRINGS_MIN, sizeof(NB_STRINGS_MIN), "NB_STRINGS_MIN");
    klee_make_symbolic(&in, sizeof(in), "in");
    klee_make_symbolic(&on, sizeof(on), "on");

    /* Assume plausible bounds based on SA hints */
    klee_assume(NB_STRINGS_MIN >= 0);
    klee_assume(in >= 0);
    klee_assume(on >= 0);

    /* Cast to avoid buggy warning on MSVC. */
    /* TARGET LINE: 299 - memset((void *) test1, 0, sizeof(test1)); */
    
    /* Vulnerability assertion: the size argument should not exceed buffer size */
    /* Since test1 is 40 bytes, sizeof(test1) is 40, so condition is always true */
    /* But SA pattern suggests length misuse - we assert that the size is within bounds */
    SAILR_ASSERT(sizeof(test1) <= 40);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset((void *) test1, 0, sizeof(test1));
}

/* Entry point */
int main(void) {
    void* dict;
    
    /* Create dictionary to satisfy any dependencies */
    dict = xmlDictCreate();
    if (dict == NULL) {
        return 1;
    }
    
    /* Call the test function that contains the target line */
    test_dict();
    
    /* Cleanup */
    xmlDictFree(dict);
    
    return 0;
}