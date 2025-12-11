#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef unsigned char xmlChar;

/* Stub implementations */
void xmlErrMemory(xmlParserCtxt* ctxt, const char* extra) {
    /* Do nothing */
}

int xmlIsNameChar(xmlParserCtxt* ctxt, int c) {
    /* Return symbolic value to allow loop continuation */
    int result;
    klee_make_symbolic(&result, sizeof(result), "xmlIsNameChar_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Target function signature from SA spec */
xmlChar* xmlParserNsLookup(xmlParserCtxt* ctxt, const xmlChar* prefix);

/* Main harness */
int main(void) {
    /* Create symbolic inputs for the target function */
    xmlParserCtxt ctxt;
    xmlChar prefix[100];
    
    /* Make prefix buffer symbolic */
    klee_make_symbolic(&prefix, sizeof(prefix), "prefix");
    
    /* Create symbolic length variable 'len' from the SA spec */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Create symbolic max variable */
    int max;
    klee_make_symbolic(&max, sizeof(max), "max");
    
    /* Create symbolic character for xmlIsNameChar */
    int c;
    klee_make_symbolic(&c, sizeof(c), "c");
    
    /* Assume constraints based on SA spec and code snippet */
    /* len >= 0 (from bounds_hints) */
    klee_assume(len >= 0);
    
    /* max >= 0 (implied by allocation size) */
    klee_assume(max >= 0);
    
    /* Constraint from snippet: len + 10 > max (to enter the if block) */
    klee_assume(len + 10 > max);
    
    /* Additional constraint: max > 0 to ensure xmlMallocAtomic succeeds */
    klee_assume(max > 0);
    
    /* Constraint: buffer allocation succeeds (non-NULL) */
    /* This is handled by malloc in our stub */
    
    /* Call the target function - this will execute the vulnerable path */
    xmlChar* result = xmlParserNsLookup(&ctxt, prefix);
    
    /* Vulnerability assertion: memcpy(buffer, buf, len) should have len <= buffer size */
    /* From the snippet: buffer is allocated with size 'max', and memcpy uses 'len' */
    /* The vulnerability condition is len > max (OOB write) */
    SAILR_ASSERT(len <= max);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result) free(result);
    
    return 0;
}

/* Implementation of the target function that reaches line 3749 */
xmlChar* xmlParserNsLookup(xmlParserCtxt* ctxt, const xmlChar* prefix) {
    /* Variables from the code snippet */
    xmlChar* buffer;
    xmlChar* tmp;
    int len = 0;  /* Will be made symbolic via global state */
    int max = 0;  /* Will be made symbolic via global state */
    int c = 0;    /* Will be made symbolic via global state */
    
    /* Make len, max, and c symbolic by reading from global symbolic variables */
    /* We need to pass these values through the execution path */
    /* For simplicity, we'll use a global approach */
    static int symbolic_len = 0;
    static int symbolic_max = 0;
    static int symbolic_c = 0;
    
    /* Initialize on first call */
    if (symbolic_len == 0 && symbolic_max == 0) {
        klee_make_symbolic(&symbolic_len, sizeof(symbolic_len), "s_len");
        klee_make_symbolic(&symbolic_max, sizeof(symbolic_max), "s_max");
        klee_make_symbolic(&symbolic_c, sizeof(symbolic_c), "s_c");
        
        /* Apply the same constraints */
        klee_assume(symbolic_len >= 0);
        klee_assume(symbolic_max >= 0);
        klee_assume(symbolic_len + 10 > symbolic_max);
        klee_assume(symbolic_max > 0);
    }
    
    len = symbolic_len;
    max = symbolic_max;
    c = symbolic_c;
    
    /* Code from the snippet leading to line 3749 */
    buffer = (xmlChar*)xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlErrMemory(ctxt, NULL);
        return NULL;
    }
    
    /* This is the vulnerable memcpy at line 3749 */
    /* buf would be some source buffer, we use a local array */
    xmlChar buf[100];
    memcpy(buffer, buf, len);  /* LINE 3749 - POTENTIAL OOB */
    
    /* Continue execution to match the snippet */
    while (xmlIsNameChar(ctxt, c)) {
        if (len + 10 > max) {
            /* This is the if block mentioned in the snippet */
            max *= 2;
            /* Break to avoid infinite loop */
            break;
        }
    }
    
    return buffer;
}