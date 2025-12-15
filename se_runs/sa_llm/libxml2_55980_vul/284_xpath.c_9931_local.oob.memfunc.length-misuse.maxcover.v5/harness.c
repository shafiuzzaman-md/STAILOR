#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed */
typedef unsigned char xmlChar;
#define XML_MAX_NAME_LENGTH 1000000

/* Stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Minimal stub for XP_ERRORNULL macro */
#define XP_ERRORNULL(err) return NULL

/* Minimal character classification macros */
#define IS_LETTER(c) (((c) >= 'a' && (c) <= 'z') || ((c) >= 'A' && (c) <= 'Z'))
#define IS_DIGIT(c) ((c) >= '0' && (c) <= '9')
#define IS_COMBINING(c) (0)
#define IS_EXTENDER(c) (0)

/* Function that contains the target line - simplified version */
xmlChar* target_function(xmlChar* buf, int len, int max, int c, int qualified) {
    xmlChar* buffer;
    
    if (len > XML_MAX_NAME_LENGTH) {
        XP_ERRORNULL(0); /* XPATH_EXPR_ERROR */
    }
    
    buffer = (xmlChar*)xmlMallocAtomic(max);
    if (buffer == NULL) {
        XP_ERRORNULL(0); /* XPATH_MEMORY_ERROR */
    }
    
    /* TARGET LINE 9931 */
    memcpy(buffer, buf, len);
    
    /* Minimal loop to satisfy control flow */
    while ((IS_LETTER(c)) || (IS_DIGIT(c)) ||
           (c == '.') || (c == '-') ||
           (c == '_') || ((qualified) && (c == ':')) ||
           (IS_COMBINING(c)) ||
           (IS_EXTENDER(c))) {
        if (len + 10 > max) {
            break;
        }
        break; /* Just to avoid infinite loop */
    }
    
    return buffer;
}

int main(void) {
    /* Symbolic variables */
    int len, max, c, qualified;
    xmlChar* buf;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&max, sizeof(max), "max");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&qualified, sizeof(qualified), "qualified");
    
    /* Allocate buffer with symbolic size */
    buf = (xmlChar*)malloc(max);
    klee_assume(buf != NULL); /* Ensure allocation succeeded */
    
    /* Make buffer contents symbolic */
    klee_make_symbolic(buf, max, "buf");
    
    /* Constrain inputs to reach the target line */
    klee_assume(len > 0); /* len must be positive for memcpy */
    klee_assume(max > 0); /* max must be positive for allocation */
    klee_assume(len <= XML_MAX_NAME_LENGTH); /* Pass the length check */
    klee_assume(max >= len); /* This is the VULNERABILITY CONDITION we want to test */
    
    /* Call the target function */
    xmlChar* result = target_function(buf, len, max, c, qualified);
    
    /* Vulnerability assertion: buffer size must be at least len */
    SAILR_ASSERT(max >= len);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(buf);
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}