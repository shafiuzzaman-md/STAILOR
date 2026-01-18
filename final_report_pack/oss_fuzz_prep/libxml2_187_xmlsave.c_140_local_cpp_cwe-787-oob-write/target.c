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
#define MAX_INDENT 60


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* None needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
// #include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
extern int xmlSaveSetIndentString(void *ctxt, const char *indent);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Allocate a concrete buffer for indent string */
    char indent_buf[256];
    
    /* Make the buffer contents symbolic */
    /* mapped indent_buf */
    if (Size < _consumed + sizeof(indent_buf)) return 0;
    memcpy(indent_buf, Data + _consumed, sizeof(indent_buf));
    _consumed += sizeof(indent_buf);
    
    /* Ensure null termination to prevent OOB reads in strlen */
    indent_buf[sizeof(indent_buf) - 1] = '\0';
    
    /* Filter short strings (len <= 0) - this matches the function's check */
    size_t len = strlen(indent_buf);
    if (len <= 0) {
        return 0;
    }
    
    /* Filter overly-long strings (len > MAX_INDENT) - this matches the function's check */
    if (len > MAX_INDENT) {
        return 0;
    }
    
    /* Create a concrete ctxt pointer - allocate a minimal xmlSaveCtxt structure */
    /* We need to allocate enough space for the struct, especially the 'indent' array */
    struct _xmlSaveCtxt {
        const char *encoding;
        void *handler;
        void *buf;
        int options;
        int level;
        int format;
        char indent[MAX_INDENT + 1];
        int indent_nr;
        int indent_size;
        void *escape;
    } *ctxt;
    
    /* Allocate the context */
    ctxt = (struct _xmlSaveCtxt *)malloc(sizeof(struct _xmlSaveCtxt));
    if (ctxt == NULL) {
        return 0;
    }
    
    /* Initialize the context fields */
    memset(ctxt, 0, sizeof(struct _xmlSaveCtxt));
    
    /* Call the target function */
    int result = xmlSaveSetIndentString(ctxt, indent_buf);
    
    /* The bug oracle is placed via instrumentation after the vulnerable memcpy.
     * If we reach here, the crash did NOT happen, so we assert a safe landing.
     */
    
    /* Clean up */
    free(ctxt);
    
    return 0;

}