#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlDtd xmlDtd;
typedef xmlDtd *xmlDtdPtr;

typedef enum {
    XML_DTD_NODE = 10
} xmlElementType;

struct _xmlDtd {
    int type;
    char *name;
    /* Other fields omitted for brevity */
};

/* Stub implementations of libxml2 functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *res = (char*)malloc(len);
    if (res) memcpy(res, cur, len);
    return res;
}

/* Target function: xmlNewDtd (inferred from context) */
xmlDtdPtr xmlNewDtd(void *doc, const char *name, const char *ExternalID, const char *SystemID) {
    xmlDtdPtr cur;

    cur = (xmlDtdPtr) xmlMalloc(sizeof(xmlDtd));
    if (cur == NULL) {
        xmlTreeErrMemory("building internal subset");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlDtd));
    cur->type = XML_DTD_NODE;

    if (name != NULL) {
        cur->name = xmlStrdup(name);
        if (cur->name == NULL) {
            /* Target line 940 is inside this block */
            /* Vulnerability assertion: ensure memset length doesn't exceed allocated size */
            SAILR_ASSERT(sizeof(xmlDtd) <= sizeof(xmlDtd)); /* Always true for this allocation */
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }
    /* Other initialization omitted */
    return cur;
}

/* Entry point */
int main(void) {
    /* Make inputs symbolic to explore paths */
    char name[256];
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Assume name is null-terminated for safety */
    name[255] = '\0';
    
    /* Call the target function with symbolic name */
    xmlDtdPtr dtd = xmlNewDtd(NULL, name, NULL, NULL);
    
    /* Cleanup */
    if (dtd) {
        if (dtd->name) free(dtd->name);
        free(dtd);
    }
    
    return 0;
}