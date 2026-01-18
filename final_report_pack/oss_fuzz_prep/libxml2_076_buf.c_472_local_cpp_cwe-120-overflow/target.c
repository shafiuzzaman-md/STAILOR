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
#define BUF_SIZE 64
#define STR_BUF_SIZE 1024


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* Helper to filter strings based on length */
static int filter_string(const char *str) {
    size_t len = strlen(str);
    if (len <= 64) return 0;
    if (len >= 128) return 0;
    return 1;
}


/* --- Harness Preamble --- */
/* --- Harness --- */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// #include <klee/klee.h>

/* Forward declarations for libxml2 functions */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
typedef unsigned char xmlChar;

extern xmlBuf *xmlBufCreate(size_t size);
extern int xmlBufAdd(xmlBuf *buf, const xmlChar *str, size_t len);

extern void xmlBufFree(xmlBuf *buf);

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create a small buffer to make overflow easier */
    xmlBuf *buf = xmlBufCreate(BUF_SIZE);
    if (buf == NULL) {
        return 0; /* Allocation failed, skip */
    }
    
    /* Allocate concrete buffer for source string */
    char str_buf[STR_BUF_SIZE];
    
    /* Make the string content symbolic */
    /* mapped str_buf */
    if (Size < _consumed + sizeof(str_buf)) return 0;
    memcpy(str_buf, Data + _consumed, sizeof(str_buf));
    _consumed += sizeof(str_buf);
    
    /* Ensure null termination to prevent infinite strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Filter strings based on length as per assumptions */
    if (!filter_string(str_buf)) {
        xmlBufFree(buf);
        return 0;
    }
    
    /* Get the actual length of the string */
    size_t actual_len = strlen(str_buf);
    
    /* Create symbolic length parameter */
    size_t len;
    /* mapped &len */
    if (Size < _consumed + sizeof(len)) return 0;
    memcpy(&len, Data + _consumed, sizeof(len));
    _consumed += sizeof(len);
    
    /* Constrain len to be > 0 and less than actual string length */
    if (!(len > 0)) return 0;
    if (!(len <= actual_len)) return 0;
    
    /* Ensure len is large enough to potentially overflow the buffer */
    if (!(len > BUF_SIZE)) return 0;
    
    /* Call the vulnerable function */
    int result = xmlBufAdd(buf, (const xmlChar *)str_buf, len);
    
    /* Post-call landing marker */
    
    
    
    xmlBufFree(buf);
    return 0;

}