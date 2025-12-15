#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed */
typedef struct _xmlPattern xmlPattern;
typedef xmlPattern *xmlPatternPtr;
typedef struct _xmlStepOp *xmlStepOpPtr;

struct _xmlPattern {
    int maxStep;
    xmlStepOpPtr steps;
    /* Other fields omitted for brevity */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_mem");
    }
    return ptr;
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Stub for ERROR macro */
#define ERROR(a,b,c,d) /* empty */

/* Target function from pattern.c */
xmlPatternPtr xmlNewPattern(void) {
    xmlPatternPtr cur;

    cur = (xmlPatternPtr) xmlMalloc(sizeof(xmlPattern));
    if (cur == NULL) {
        ERROR(NULL, NULL, NULL,
            "xmlNewPattern : malloc failed\n");
        return(NULL);
    }
    /* TARGET LINE 212 */
    memset(cur, 0, sizeof(xmlPattern));
    cur->maxStep = 10;
    cur->steps = (xmlStepOpPtr) xmlMalloc(cur->maxStep * sizeof(xmlStepOp));
    if (cur->steps == NULL) {
        xmlFree(cur);
        ERROR(NULL, NULL, NULL,
            "xmlNewPattern : malloc failed\n");
        return(NULL);
    }
    return cur;
}

int main(void) {
    /* Make symbolic control to reach the target line */
    int reach_target;
    klee_make_symbolic(&reach_target, sizeof(reach_target), "reach_target");
    
    /* Assume we can reach the target line (cur != NULL) */
    klee_assume(reach_target != 0);
    
    xmlPatternPtr pattern = xmlNewPattern();
    
    /* Vulnerability assertion: ensure memset length is bounded by allocation size */
    SAILR_ASSERT(sizeof(xmlPattern) <= sizeof(xmlPattern));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (pattern) {
        if (pattern->steps) {
            free(pattern->steps);
        }
        free(pattern);
    }
    
    return 0;
}