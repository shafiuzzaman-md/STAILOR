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
#define INPUT_BUF_SIZE 4096


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* None needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
/* Forward declarations for libxml2 functions */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
extern xmlBuf *xmlBufCreate(size_t size);
extern int xmlBufAdd(xmlBuf *buf, const unsigned char *str, size_t len);
extern void xmlBufFree(xmlBuf *buf);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create a small buffer to force overflow condition */
    xmlBuf *buf = xmlBufCreate(64); /* Small initial size */
    if (buf == NULL) {
        return 0;
    }

    /* Allocate concrete buffer for source string */
    unsigned char str[INPUT_BUF_SIZE];
    /* mapped str */
    if (Size < _consumed + sizeof(str)) return 0;
    memcpy(str, Data + _consumed, sizeof(str));
    _consumed += sizeof(str);
    /* Ensure null termination to prevent OOB reads */
    str[sizeof(str) - 1] = '\0';

    /* Symbolic length */
    size_t len;
    /* mapped &len */
    if (Size < _consumed + sizeof(len)) return 0;
    memcpy(&len, Data + _consumed, sizeof(len));
    _consumed += sizeof(len);
    if (!(len > 0)) return 0;
    if (len >= 1024) return 0; /* Performance bound */

    /* Filter short strings for performance (not using klee_assume) */
    if (strlen((const char*)str) <= 64) {
        xmlBufFree(buf);
        return 0;
    }
    /* Filter overly-long strings for performance */
    if (strlen((const char*)str) >= 128) {
        xmlBufFree(buf);
        return 0;
    }

    /* Call the vulnerable function */
    int result = xmlBufAdd(buf, str, len);

    /* The oracle is placed via instrumentation in the target file */
    /* If execution reaches here without crashing, the bug didn't trigger */
    
    xmlBufFree(buf);
    return 0;

}