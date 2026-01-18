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
#define ENCODING_BUF_SIZE 256


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* Helper to ensure null termination */
static void ensure_null_terminated(char* buf, size_t size) {
    if (size > 0) {
        buf[size - 1] = '\0';
    }
}


/* --- Harness Preamble --- */
/* --- Harness --- */
/* Forward declaration of target entrypoint */
extern int htmlSetMetaEncoding(void* doc, const unsigned char* encoding);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* 1) Prepare inputs */
    /* doc parameter - use NULL as per plan */
    void* doc = NULL;
    
    /* encoding parameter - concrete buffer with symbolic contents */
    char encoding_buf[ENCODING_BUF_SIZE];
    
    /* Make the buffer contents symbolic */
    /* mapped encoding_buf */
    if (Size < _consumed + sizeof(encoding_buf)) return 0;
    memcpy(encoding_buf, Data + _consumed, sizeof(encoding_buf));
    _consumed += sizeof(encoding_buf);
    
    /* Ensure null termination to prevent infinite strlen */
    ensure_null_terminated(encoding_buf, sizeof(encoding_buf));
    
    /* Filter short strings (strlen <= 64) */
    size_t len = strlen(encoding_buf);
    if (len <= 64) {
        return 0;
    }
    
    /* Filter overly-long strings for performance (strlen >= 128) */
    if (len >= 128) {
        return 0;
    }
    
    /* Ensure encoding is not NULL (as per plan constraints) */
    if (!(encoding_buf != NULL)) return 0;
    
    /* 2) Call the real entrypoint */
    int result = htmlSetMetaEncoding(doc, (const unsigned char*)encoding_buf);
    
    /* 3) BUG_ASSERT - Since we can't access local variables from htmlUpdateMetaEncoding,
       we use as a safe landing marker.
       The actual buffer overflow will be caught by KLEE's memory safety checks. */
    
    
    /* 4) REACH_ASSERT */
    
    
    return 0;

}