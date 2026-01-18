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
#ifndef NULL
#define NULL ((void*)0)
#endif


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* Define xmlDoc type */
typedef struct _xmlDoc xmlDoc;


/* --- Harness Preamble --- */
/* --- Harness --- */
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    (void)argc;
    (void)argv;
    
    /* Create a document using stubbed library function */
    xmlDoc *doc = xmlNewDoc(NULL);
    /* Force solver to find a non-NULL document */
    if (!(doc != NULL)) return 0;
    
    /* Allocate URL buffer */
    char url_buf[64];
    /* mapped url_buf */
    if (Size < _consumed + sizeof(url_buf)) return 0;
    memcpy(url_buf, Data + _consumed, sizeof(url_buf));
    _consumed += sizeof(url_buf);
    /* Ensure null termination to prevent OOB reads */
    url_buf[sizeof(url_buf) - 1] = '\0';
    
    /* Set URL field using stubbed function */
    xmlDocSetURL(doc, url_buf);
    /* Force solver to find a path where URL is set successfully */
    struct _xmlDoc {
        void *URL;
    } *d = (struct _xmlDoc*)doc;
    if (!(d->URL != NULL)) return 0;
    
    /* Call xmlFreeDoc to trigger UAF */
    xmlFreeDoc(doc);
    
    /* If execution reaches here, the UAF crash did NOT happen */
    /* is already inserted at line 967 via instrumentation */
    /* is inserted at line 968 via instrumentation */
    
    return 0;

}