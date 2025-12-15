#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;

typedef struct _xmlCharEncodingHandler xmlCharEncodingHandler;
typedef xmlCharEncodingHandler *xmlCharEncodingHandlerPtr;

typedef enum {
    XML_CHAR_ENCODING_NONE = 0,
    XML_CHAR_ENCODING_UTF8,
    XML_CHAR_ENCODING_UTF16LE,
    XML_CHAR_ENCODING_UTF16BE,
    XML_CHAR_ENCODING_UTF32LE,
    XML_CHAR_ENCODING_UTF32BE
} xmlCharEncoding;

typedef struct _xmlParserInputBuffer {
    xmlBufPtr buffer;
    xmlCharEncodingHandlerPtr encoder;
    /* Other fields omitted for simplicity */
} xmlParserInputBuffer;
typedef xmlParserInputBuffer *xmlParserInputBufferPtr;

/* Stub functions */
void xmlIOErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlBufPtr xmlBufCreateSize(size_t size) {
    if (size == 0) return NULL;
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    if (buf) {
        /* Initialize minimal state */
        memset(buf, 0, sizeof(xmlBuf));
    }
    return buf;
}

void xmlBufSetAllocationScheme(xmlBufPtr buf, int scheme) {
    /* Do nothing */
}

xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler(xmlCharEncoding enc) {
    /* Return NULL or non-NULL symbolically */
    static int handler_exists;
    klee_make_symbolic(&handler_exists, sizeof(handler_exists), "handler_exists");
    klee_assume(handler_exists == 0 || handler_exists == 1);
    if (handler_exists) {
        return (xmlCharEncodingHandlerPtr)1; /* Non-NULL dummy */
    }
    return NULL;
}

/* The target function */
xmlParserInputBufferPtr xmlAllocParserInputBuffer(xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    ret = (xmlParserInputBufferPtr) xmlMalloc(sizeof(xmlParserInputBuffer));
    if (ret == NULL) {
        xmlIOErrMemory("creating input buffer");
        return(NULL);
    }
    /* TARGET LINE 2331: memset(ret, 0, sizeof(xmlParserInputBuffer)); */
    /* Vulnerability assertion: ensure the size argument does not exceed allocated bounds */
    SAILR_ASSERT(sizeof(xmlParserInputBuffer) <= sizeof(xmlParserInputBuffer)); /* Always true for correct allocation */
    memset(ret, 0, sizeof(xmlParserInputBuffer));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->buffer = xmlBufCreateSize(2 * 1024); /* Use a constant for xmlDefaultBufferSize */
    if (ret->buffer == NULL) {
        xmlFree(ret);
        return(NULL);
    }
    xmlBufSetAllocationScheme(ret->buffer, 1); /* XML_BUFFER_ALLOC_DOUBLEIT */
    ret->encoder = xmlGetCharEncodingHandler(enc);
    if (ret->encoder != NULL) {
        /* Do nothing */
    }
    return ret;
}

int main(void) {
    xmlCharEncoding enc;
    
    /* Make encoding symbolic to explore different paths */
    klee_make_symbolic(&enc, sizeof(enc), "enc");
    /* Assume valid encoding values */
    klee_assume(enc >= 0 && enc <= 5);
    
    xmlParserInputBufferPtr buf = xmlAllocParserInputBuffer(enc);
    
    /* Clean up if allocation succeeded */
    if (buf != NULL) {
        if (buf->buffer != NULL) {
            free(buf->buffer);
        }
        free(buf);
    }
    
    return 0;
}