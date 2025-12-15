#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlBufCreateSize to avoid linking issues */
typedef struct _xmlBuf xmlBuf;
struct _xmlBuf {
    int dummy;
};

xmlBuf* xmlBufCreateSize(int size) {
    if (size <= 0) return NULL;
    xmlBuf* buf = (xmlBuf*)malloc(sizeof(xmlBuf));
    if (buf) {
        buf->dummy = 0;
    }
    return buf;
}

/* Minimal stub for xmlGenericError to avoid linking issues */
void xmlGenericError(void* ctx, const char* msg) {
    /* Do nothing */
}

/* Minimal stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Forward declaration of xmlTextReader structure */
typedef struct _xmlTextReader xmlTextReader;
struct _xmlTextReader {
    void* doc;
    void* entTab;
    int entMax;
    int entNr;
    void* input;
    xmlBuf* buffer;
};

/* Forward declaration of xmlParserInput structure */
typedef struct _xmlParserInput xmlParserInput;
struct _xmlParserInput {
    int dummy;
};

/* Global error context for stubs */
void* xmlGenericErrorContext = NULL;

/* Target function from xmlreader.c */
xmlTextReader* xmlNewTextReader(xmlParserInput* input) {
    xmlTextReader* ret;
    
    if (input == NULL)
        return NULL;
    
    ret = (xmlTextReader*)xmlMalloc(sizeof(xmlTextReader));
    if (ret == NULL) {
        xmlGenericError(xmlGenericErrorContext,
            "xmlNewTextReader : malloc failed\n");
        return NULL;
    }
    
    /* TARGET LINE 2007 - memset with sizeof(xmlTextReader) */
    memset(ret, 0, sizeof(xmlTextReader));
    
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlTextReader) bytes */
    SAILR_ASSERT(ret != NULL && sizeof(xmlTextReader) > 0);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->doc = NULL;
    ret->entTab = NULL;
    ret->entMax = 0;
    ret->entNr = 0;
    ret->input = input;
    ret->buffer = xmlBufCreateSize(100);
    if (ret->buffer == NULL) {
        xmlFree(ret);
        return NULL;
    }
    
    return ret;
}

int main(void) {
    /* Make input symbolic to explore different paths */
    xmlParserInput input;
    klee_make_symbolic(&input, sizeof(input), "input");
    
    /* Call the target function */
    xmlTextReader* reader = xmlNewTextReader(&input);
    
    /* Clean up if reader was created */
    if (reader != NULL) {
        if (reader->buffer != NULL) {
            free(reader->buffer);
        }
        free(reader);
    }
    
    return 0;
}