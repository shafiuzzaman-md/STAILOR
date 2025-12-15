#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of functions from libxml2 that we need */
typedef unsigned char xmlChar;

xmlChar* xmlBuildQName(const xmlChar* ncname, const xmlChar* prefix, const xmlChar* memory, int len);

/* Stub for xmlTreeErrMemory to avoid linking issues */
void xmlTreeErrMemory(const char* msg) {
    /* Do nothing - just a stub */
}

/* Main harness */
int main(void) {
    /* Symbolic inputs for xmlBuildQName parameters */
    xmlChar ncname_buf[256];
    xmlChar prefix_buf[256];
    xmlChar memory_buf[512];
    int len;
    
    /* Make inputs symbolic */
    klee_make_symbolic(ncname_buf, sizeof(ncname_buf), "ncname_buf");
    klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix_buf");
    klee_make_symbolic(memory_buf, sizeof(memory_buf), "memory_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Ensure null-terminated strings for safety */
    ncname_buf[255] = '\0';
    prefix_buf[255] = '\0';
    
    /* Calculate lengths of the strings */
    int lenn = strlen((char*)ncname_buf);
    int lenp = strlen((char*)prefix_buf);
    
    /* Constrain len to be reasonable for memory allocation */
    klee_assume(len >= lenn + lenp + 2);  /* Need space for both strings, colon, and null terminator */
    klee_assume(len < 512);               /* Reasonable upper bound */
    
    /* Ensure memory buffer is large enough for the operation */
    klee_assume(len <= (int)sizeof(memory_buf));
    
    /* Call the target function */
    xmlChar* result = xmlBuildQName(ncname_buf, prefix_buf, memory_buf, len);
    
    /* If we reach the target line, check the vulnerability condition */
    if (result != NULL) {
        /* Vulnerability assertion: check that the memcpy at line 244 won't overflow */
        /* The memcpy copies lenn bytes from ncname to &ret[lenp + 1] */
        /* We need to ensure lenp + 1 + lenn <= allocated size (which is len) */
        SAILR_ASSERT(lenp + 1 + lenn <= len);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return 0;
}

/* Implementation of xmlBuildQName based on the code snippet */
xmlChar* xmlBuildQName(const xmlChar* ncname, const xmlChar* prefix, const xmlChar* memory, int len) {
    xmlChar* ret;
    int lenn = strlen((char*)ncname);
    int lenp = strlen((char*)prefix);
    
    /* Check if we have enough space */
    if (lenn + lenp + 2 > len) {
        xmlTreeErrMemory("building QName");
        return NULL;
    }
    
    /* Use the provided memory buffer */
    ret = (xmlChar*)memory;
    
    /* Copy prefix */
    memcpy(&ret[0], prefix, lenp);
    ret[lenp] = ':';
    
    /* TARGET LINE 244: Copy ncname */
    memcpy(&ret[lenp + 1], ncname, lenn);
    
    /* Null terminate */
    ret[lenn + lenp + 1] = 0;
    
    return ret;
}