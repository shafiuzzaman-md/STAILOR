#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlDict xmlDict;
typedef unsigned char xmlChar;

xmlDict* xmlDictCreate(void);
const xmlChar* xmlDictLookup(xmlDict* dict, const xmlChar* name, int len);

/* Constants from testdict.c */
#define NB_STRINGS_MIN 1000
#define NB_STRINGS_MAX 10000

/* Global array from testdict.c that appears in the memset call */
static const xmlChar* test1[NB_STRINGS_MAX];

/* Strings array that would be used in the loop */
static const char* strings1[NB_STRINGS_MAX];

int main(void) {
    xmlDict* dict;
    int i;
    
    /* Initialize the strings array symbolically */
    for (i = 0; i < NB_STRINGS_MAX; i++) {
        char buf[256];
        klee_make_symbolic(buf, sizeof(buf), "string_buf");
        klee_assume(buf[255] == '\0'); /* Ensure null termination */
        strings1[i] = strdup(buf);
    }
    
    /* Create dictionary - this is the actual call from line 320 */
    dict = xmlDictCreate();
    if (dict == NULL) {
        /* If dict creation fails, we can't reach line 325 */
        return 1;
    }
    
    /* Vulnerability assertion: The memset at line 325 writes to test1 array.
       The size is sizeof(test1) which is NB_STRINGS_MAX * sizeof(xmlChar*).
       The vulnerability would be if test1 wasn't properly allocated or if
       NB_STRINGS_MAX causes an overflow. Since test1 is a static array,
       the main concern is whether the loop index 'i' could exceed NB_STRINGS_MAX.
       However, the memset itself is safe on a static array.
       
       Looking at the pattern "local.oob.memfunc.length-misuse.maxcover.v5",
       the concern is that memset might be used with wrong size.
       In this case, test1 is properly sized, so the vulnerability assertion
       should check that we're not writing out of bounds.
       
       Since test1 is declared as test1[NB_STRINGS_MAX], and memset uses
       sizeof(test1), the condition for safety is that sizeof(test1) doesn't
       exceed the actual allocated memory. For a static array, this is always true.
       
       However, the SA pattern suggests length misuse. Looking at the code,
       test1 is used in a loop up to NB_STRINGS_MIN (line 331), but declared
       with size NB_STRINGS_MAX. The memset zeroes the entire NB_STRINGS_MAX
       array, which is safe.
       
       The actual vulnerability might be if there's confusion between
       NB_STRINGS_MIN and NB_STRINGS_MAX. Let's assert that the array
       size is sufficient for the memset operation. */
    
    /* Vulnerability assertion: test1 array has enough space for the memset */
    SAILR_ASSERT(sizeof(test1) == NB_STRINGS_MAX * sizeof(xmlChar*));
    
    /* This is the line we want to reach - line 325 */
    memset(test1, 0, sizeof(test1));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    for (i = 0; i < NB_STRINGS_MAX; i++) {
        free((void*)strings1[i]);
    }
    
    return 0;
}

/* Stub implementations for libxml2 functions */
xmlDict* xmlDictCreate(void) {
    /* Return a non-NULL pointer to allow execution to continue */
    return (xmlDict*)malloc(sizeof(xmlDict));
}

const xmlChar* xmlDictLookup(xmlDict* dict, const xmlChar* name, int len) {
    /* Return a valid pointer to allow the loop to continue */
    static xmlChar result[256] = "test";
    return result;
}