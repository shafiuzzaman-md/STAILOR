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
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlBuf xmlBuf;
typedef enum {
    XML_BUFFER_ALLOC_IO
} xmlBufferAllocationScheme;
#define MAX_STR_LEN 1024


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
#include <string.h>
// #include <klee/klee.h>
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Helper to safely get string length up to max */
static size_t safe_strlen(const char *s, size_t max) {
    size_t i = 0;
    while (i < max && s[i] != '\0') i++;
    return i;
}


/* --- Harness Preamble --- */
/* --- Harness --- */


/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create buffer */
    xmlBuffer *buf = xmlBufferCreate();
    if (buf == NULL) return 0;
    
    /* Allocate symbolic string buffer */
    char str_buf[MAX_STR_LEN];
    /* mapped str_buf */
    if (Size < _consumed + sizeof(str_buf)) return 0;
    memcpy(str_buf, Data + _consumed, sizeof(str_buf));
    _consumed += sizeof(str_buf);
    /* Ensure null termination to prevent infinite strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Symbolic length */
    int len;
    /* mapped &len */
    if (Size < _consumed + sizeof(len)) return 0;
    memcpy(&len, Data + _consumed, sizeof(len));
    _consumed += sizeof(len);
    if (!(len > 0)) return 0;
    if (len >= 256) return 0; /* Auto-fixed unsafe assume */  /* keep manageable */
    
    /* Filter short strings (strlen <= 64) */
    size_t actual_len = safe_strlen(str_buf, sizeof(str_buf));
    if (actual_len <= 64) {
        xmlBufferFree(buf);
        return 0;
    }
    /* Filter overly-long strings (strlen >= 128) */
    if (actual_len >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Ensure the string has null at len position for safety */
    if (len < sizeof(str_buf)) {
        str_buf[len] = '\0';
    }
    
    /* Call the vulnerable function */
    int result = xmlBufferAddHead(buf, (const xmlChar*)str_buf, len);
    
    /* If we reach here without crash, bug didn't happen */
    
    
    
    /* Cleanup */
    xmlBufferFree(buf);
    return 0;

}