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
#define BUF_SIZE 256

typedef unsigned char xmlChar;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc* xmlDocPtr;


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

static void ensure_null_terminated(char *buf, size_t size) {
    if (size > 0) {
        buf[size - 1] = '\0';
    }
}


/* --- Harness Preamble --- */
/* --- Harness --- */
/* Forward declaration of the target function */
extern int htmlSetMetaEncoding(xmlDocPtr doc, const xmlChar *encoding);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* 1. Prepare inputs */
    xmlDocPtr doc = NULL;
    
    char encoding_buf[BUF_SIZE];
    /* mapped encoding_buf */
    if (Size < _consumed + sizeof(encoding_buf)) return 0;
    memcpy(encoding_buf, Data + _consumed, sizeof(encoding_buf));
    _consumed += sizeof(encoding_buf);
    ensure_null_terminated(encoding_buf, sizeof(encoding_buf));
    
    /* Apply constraints from plan */
    if (!(encoding_buf[0] != '\0')) return 0;  /* strlen > 0 */
    
    /* Filter short strings (<= 64) */
    size_t len = strlen(encoding_buf);
    if (len <= 64) return 0;
    
    /* Filter overly-long strings for performance (>= 128) */
    if (len >= 128) return 0;
    
    /* 2. Call the real entrypoint */
    int result = htmlSetMetaEncoding(doc, (const xmlChar*)encoding_buf);
    
    /* 3. BUG_ASSERT - safe landing marker */
    
    
    /* 4. REACH_ASSERT */
    
    
    return 0;

}