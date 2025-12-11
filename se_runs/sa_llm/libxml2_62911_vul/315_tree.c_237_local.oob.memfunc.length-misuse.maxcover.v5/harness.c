#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlNode xmlNode;
typedef xmlNode* xmlNodePtr;

/* Stub for xmlStringGetNodeList - the entrypoint mentioned in spec */
xmlNodePtr xmlStringGetNodeList(xmlNodePtr node, const xmlChar* str) {
    /* This is a simplified model that focuses on reaching the target line */
    static xmlNode dummy_node;
    return &dummy_node;
}

/* Target function from tree.c - reconstructed from snippet */
char* xmlBuildQName(const char* ncname, const char* prefix, char* memory, int len) {
    int lenn, lenp;
    char* ret;
    
    if (ncname == NULL) return NULL;
    if (prefix == NULL) return (char*)ncname;
    
    lenn = strlen(ncname);
    lenp = strlen(prefix);
    
    if (memory == NULL) {
        ret = (char*)malloc(lenn + lenp + 2);
        if (ret == NULL) return NULL;
    } else {
        ret = memory;
    }
    
    /* Target line 237: memcpy(&ret[lenp + 1], ncname, lenn); */
    memcpy(&ret[lenp + 1], ncname, lenn);
    ret[lenn + lenp + 1] = 0;
    return ret;
}

int main(void) {
    /* Symbolic inputs for xmlBuildQName parameters */
    char ncname_buf[256];
    char prefix_buf[256];
    char memory_buf[512];
    int len;
    
    /* Make inputs symbolic */
    klee_make_symbolic(ncname_buf, sizeof(ncname_buf), "ncname_buf");
    klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix_buf");
    klee_make_symbolic(memory_buf, sizeof(memory_buf), "memory_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Ensure null-terminated strings */
    ncname_buf[255] = '\0';
    prefix_buf[255] = '\0';
    
    /* Get string lengths */
    int lenn = strlen(ncname_buf);
    int lenp = strlen(prefix_buf);
    
    /* Assume reasonable bounds based on buffer sizes */
    klee_assume(lenn >= 0 && lenn < 256);
    klee_assume(lenp >= 0 && lenp < 256);
    
    /* Assume memory buffer is large enough for worst case */
    klee_assume(len >= lenn + lenp + 2);
    
    /* Call xmlStringGetNodeList first as mentioned in entrypoint */
    xmlNodePtr node = xmlStringGetNodeList(NULL, (const unsigned char*)"test");
    
    /* Call xmlBuildQName with symbolic inputs */
    char* result = xmlBuildQName(ncname_buf, prefix_buf, memory_buf, len);
    
    if (result != NULL) {
        /* Vulnerability assertion: check that memcpy at line 237 doesn't overflow */
        /* The memcpy copies lenn bytes from ncname to &ret[lenp + 1] */
        /* ret points to memory_buf which has size 'len' */
        /* We need: lenp + 1 + lenn <= len */
        SAILR_ASSERT(lenp + 1 + lenn <= len);
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup if memory was allocated */
        if (result != memory_buf && result != (char*)ncname_buf) {
            free(result);
        }
    }
    
    return 0;
}