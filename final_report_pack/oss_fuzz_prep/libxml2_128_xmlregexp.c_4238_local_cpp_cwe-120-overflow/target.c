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
#define XML_REGEXP_OK 0
#define XML_REGEXP_OUT_OF_MEMORY 1
#define XML_REGEXP_COMPILE_ERROR 2
#define XML_REG_STRING_SEPARATOR '|'


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* None needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Minimal struct to satisfy exec->comp != NULL and exec->status == XML_REGEXP_OK */
typedef struct xmlRegexp xmlRegexp;
typedef struct xmlRegExecCtxt {
    int status;
    xmlRegexp *comp;
} xmlRegExecCtxt;

/* External declaration of the target function */
extern int xmlRegExecPushString2(xmlRegExecCtxt *exec, const char *value, const char *value2, void *data);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    (void)argc; (void)argv;
    
    /* Allocate a concrete execution context */
    xmlRegExecCtxt *exec = (xmlRegExecCtxt*)malloc(sizeof(xmlRegExecCtxt));
    if (!exec) return 0;
    exec->status = XML_REGEXP_OK;
    exec->comp = (xmlRegexp*)1;  /* non-NULL dummy pointer */
    
    /* Allocate concrete buffers for strings */
    char value_buf[256];
    char value2_buf[256];
    
    /* mapped value_buf */
    if (Size < _consumed + sizeof(value_buf)) return 0;
    memcpy(value_buf, Data + _consumed, sizeof(value_buf));
    _consumed += sizeof(value_buf);
    /* mapped value2_buf */
    if (Size < _consumed + sizeof(value2_buf)) return 0;
    memcpy(value2_buf, Data + _consumed, sizeof(value2_buf));
    _consumed += sizeof(value2_buf);
    
    /* Ensure null termination to avoid infinite strlen */
    value_buf[sizeof(value_buf)-1] = '\0';
    value2_buf[sizeof(value2_buf)-1] = '\0';
    
    /* Filter short strings (avoid infeasible paths) */
    size_t lenp = strlen(value_buf);
    size_t lenn = strlen(value2_buf);
    if (lenp <= 64) {
        free(exec);
        return 0;
    }
    if (lenn <= 64) {
        free(exec);
        return 0;
    }
    
    /* Filter overly-long strings for performance */
    if (lenp >= 128) {
        free(exec);
        return 0;
    }
    if (lenn >= 128) {
        free(exec);
        return 0;
    }
    
    /* Ensure value2 != NULL (as per constraints) */
    /* value2_buf is already non-NULL */
    
    /* Call the vulnerable function */
    int ret = xmlRegExecPushString2(exec, value_buf, value2_buf, NULL);
    (void)ret;
    
    /* Oracle: If lenp > 149, the first memcpy overflows buf[150] */
    
    
    
    free(exec);
    return 0;

}