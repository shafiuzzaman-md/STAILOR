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
#ifndef XML_NODESET_DEFAULT
#define XML_NODESET_DEFAULT 10
#endif


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* No embedded functions needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
// #include <klee/klee.h>
#include <stddef.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
typedef struct _xmlNode xmlNode;
typedef struct _xmlNodeSet xmlNodeSet;
xmlNodeSet *xmlXPathNodeSetCreate(xmlNode *val);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create a symbolic xmlNode pointer */
    xmlNode *val;
    /* mapped &val */
    if (Size < _consumed + sizeof(val)) return 0;
    memcpy(&val, Data + _consumed, sizeof(val));
    _consumed += sizeof(val);
    
    /* Force val to be non-NULL to take the code path that allocates nodeTab */
    if (!(val != NULL)) return 0;
    
    /* Call xmlXPathNodeSetCreate with non-NULL val */
    xmlNodeSet *result = xmlXPathNodeSetCreate(val);
    
    /* If we reach here without crashing, the bug didn't happen */
      /* Safe landing - never triggers */
    
    /* REACH_ASSERT - sentinel for reachability scoring */
    
    
    return 0;

}