#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlStreamComp xmlStreamComp;
typedef struct _xmlStreamStep xmlStreamStep;
typedef xmlStreamStep* xmlStreamStepPtr;

struct _xmlStreamComp {
    xmlStreamStepPtr steps;
    /* other fields omitted for brevity */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Stub for ERROR macro */
#define ERROR(a,b,c,d) /* empty */

/* Target function from pattern.c:1437 */
xmlStreamComp* xmlNewStreamComp(void) {
    xmlStreamComp* cur;
    size_t size;
    
    /* Make size symbolic to explore different allocation sizes */
    klee_make_symbolic(&size, sizeof(size), "size");
    /* Assume size is reasonable but could be zero or large */
    klee_assume(size <= 1024);  /* bound exploration */
    
    cur = (xmlStreamComp*)malloc(sizeof(xmlStreamComp));
    if (cur == NULL) {
        ERROR(NULL, NULL, NULL, "xmlNewStreamComp: malloc failed\n");
        return NULL;
    }
    
    /* This is the vulnerable memset line from pattern.c:1437 */
    memset(cur, 0, sizeof(xmlStreamComp));
    
    cur->steps = (xmlStreamStepPtr)xmlMalloc(size * sizeof(xmlStreamStep));
    if (cur->steps == NULL) {
        xmlFree(cur);
        ERROR(NULL, NULL, NULL, "xmlNewStreamComp: malloc failed\n");
        return NULL;
    }
    
    return cur;
}

/* Entrypoint function from SA spec */
void xmlFreePattern(void* pattern) {
    /* Stub implementation - just free if non-NULL */
    if (pattern) {
        free(pattern);
    }
}

int main(void) {
    xmlStreamComp* comp;
    
    /* Call the function that contains the vulnerable memset */
    comp = xmlNewStreamComp();
    
    if (comp != NULL) {
        /* Vulnerability assertion: check that memset size doesn't exceed allocation */
        /* The condition ensures we don't write beyond allocated bounds */
        SAILR_ASSERT(sizeof(xmlStreamComp) <= malloc_usable_size(comp));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        if (comp->steps) {
            free(comp->steps);
        }
        free(comp);
    }
    
    return 0;
}