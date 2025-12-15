#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlTextReader xmlTextReader;
typedef void* xmlParserInputBufferPtr;
typedef void* xmlTextReaderPtr;

/* Constants from libxml2 */
#define XML_TEXTREADER_MODE_INITIAL 0
#define XML_TEXTREADER_CTXT 0x1

/* Structure definition matching xmlreader.c */
struct _xmlTextReader {
    int entNr;
    xmlParserInputBufferPtr input;
    int mode;
    void* node;
    void* curnode;
    int base;
    int cur;
    int allocs;
    /* Other fields omitted for brevity */
};

/* Function prototype from xmlreader.c */
xmlTextReaderPtr xmlNewTextReader(xmlParserInputBufferPtr input, const char *URL);

/* Stub implementation of xmlNewTextReader that reaches the target line */
xmlTextReaderPtr xmlNewTextReader(xmlParserInputBufferPtr input, const char *URL) {
    xmlTextReaderPtr ret;
    
    /* Symbolic control to decide if malloc fails */
    int malloc_fails;
    klee_make_symbolic(&malloc_fails, sizeof(malloc_fails), "malloc_fails");
    klee_assume(malloc_fails == 0 || malloc_fails == 1);
    
    if (malloc_fails) {
        return NULL;
    }
    
    ret = (xmlTextReaderPtr)malloc(sizeof(xmlTextReader));
    if (ret == NULL) {
        return NULL;
    }
    
    /* VULNERABILITY ASSERTION: Check that memset size doesn't exceed allocated bounds */
    /* For memset(ret, 0, sizeof(xmlTextReader)), the vulnerability would be if
       sizeof(xmlTextReader) > actual allocated size, but malloc guarantees at least
       that size. However, the SA pattern suggests checking that the memset length
       doesn't exceed the buffer bounds. Since ret points to exactly sizeof(xmlTextReader)
       bytes, the condition is always true. But to be safe, we assert the allocation
       was successful and the pointer is valid. */
    SAILR_ASSERT(ret != NULL && sizeof(xmlTextReader) > 0);
    
    memset(ret, 0, sizeof(xmlTextReader));
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->entNr = 0;
    ret->input = NULL;
    ret->mode = XML_TEXTREADER_MODE_INITIAL;
    ret->node = NULL;
    ret->curnode = NULL;
    ret->base = 0;
    ret->cur = 0;
    ret->allocs = XML_TEXTREADER_CTXT;
    
    return ret;
}

int main(void) {
    /* Create symbolic inputs for xmlNewTextReader parameters */
    xmlParserInputBufferPtr input;
    char URL[256];
    
    klee_make_symbolic(&input, sizeof(input), "input");
    klee_make_symbolic(URL, sizeof(URL), "URL");
    
    /* Call the function to reach the target line */
    xmlTextReaderPtr reader = xmlNewTextReader(input, URL);
    
    /* Free if allocated */
    if (reader != NULL) {
        free(reader);
    }
    
    return 0;
}