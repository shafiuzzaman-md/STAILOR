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
#define BUFFER_SIZE 4096

typedef unsigned char xmlChar;
typedef struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
    int alloc;
} xmlBuffer;

typedef struct _xmlBuf xmlBuf;
typedef enum {
    XML_BUFFER_ALLOC_IO
} xmlBufferAllocationScheme;


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

/* Helper to filter string length without klee_assume */
static int filter_string_length(const xmlChar *str, int min_len, int max_len) {
    size_t actual_len = strlen((const char*)str);
    if (actual_len <= (size_t)min_len) return 0;
    if (actual_len >= (size_t)max_len) return 0;
    return 1;
}


/* --- Harness Preamble --- */
/* --- Harness --- */
int xmlBufferCreate(void);
int xmlBufferAddHead(xmlBuffer *buf, const xmlChar *str, int len);
void xmlBufferFree(xmlBuffer *buf);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Create buffer */
    xmlBuffer *buf = xmlBufferCreate();
    if (buf == NULL) {
        return 0;
    }
    
    /* Allocate concrete buffer for symbolic string */
    xmlChar str_buf[BUFFER_SIZE];
    /* mapped str_buf */
    if (Size < _consumed + sizeof(str_buf)) return 0;
    memcpy(str_buf, Data + _consumed, sizeof(str_buf));
    _consumed += sizeof(str_buf);
    
    /* Ensure null termination to prevent OOB reads in strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Make length symbolic */
    int len;
    /* mapped &len */
    if (Size < _consumed + sizeof(len)) return 0;
    memcpy(&len, Data + _consumed, sizeof(len));
    _consumed += sizeof(len);
    
    /* Apply constraints from plan */
    if (!(len >= 0)) return 0;
    if (len >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Filter strings based on length (as per assumptions) */
    if (!filter_string_length(str_buf, 64, 128)) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Call the vulnerable function */
    int result = xmlBufferAddHead(buf, str_buf, len);
    
    /* The BUG_ASSERT is injected at line 1056 via instrumentation */
    /* If execution reaches here without crashing, the bug didn't trigger */
    
    xmlBufferFree(buf);
    return 0;

}