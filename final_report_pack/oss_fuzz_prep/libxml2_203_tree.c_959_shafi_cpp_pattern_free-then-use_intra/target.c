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
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
#endif


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* No embedded functions needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
#include <libxml/tree.h>
#include <libxml/xmlmemory.h>
// #include <klee/klee.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create a document */
    xmlDocPtr doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 0;
    }
    
    /* Create a namespace node */
    xmlNsPtr ns = xmlNewNs(NULL, (const xmlChar*)"http://example.com", (const xmlChar*)"ex");
    if (ns == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }
    
    /* Add namespace to document's oldNs list */
    doc->oldNs = ns;
    
    /* Free the document - this should trigger UAF when accessing oldNs */
    xmlFreeDoc(doc);
    
    /* If execution reaches here, the UAF crash did NOT happen */
    
    
    
    return 0;

}