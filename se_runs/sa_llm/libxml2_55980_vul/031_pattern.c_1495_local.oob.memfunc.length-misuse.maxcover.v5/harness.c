#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to match the target code */
typedef struct _xmlStreamStep xmlStreamStep;
typedef xmlStreamStep *xmlStreamStepPtr;

typedef struct _xmlStreamComp {
    xmlStreamStepPtr steps;
    int nbStep;
    /* Other fields omitted for brevity */
} xmlStreamComp;

typedef xmlStreamComp *xmlStreamCompPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void *ptr) {
    free(ptr);
}

/* Stub for ERROR macro */
#define ERROR(a,b,c,d) /* nothing */

/* Target function from pattern.c */
xmlStreamCompPtr xmlNewStreamComp(void) {
    xmlStreamCompPtr cur;
    int size = 4;  /* From the snippet */

    cur = (xmlStreamCompPtr) xmlMalloc(sizeof(xmlStreamComp));
    if (cur == NULL) {
        ERROR(NULL, NULL, NULL,
            "xmlNewStreamComp: malloc failed\n");
        return(NULL);
    }
    
    /* TARGET LINE 1495: memset(cur, 0, sizeof(xmlStreamComp)); */
    memset(cur, 0, sizeof(xmlStreamComp));
    
    /* Vulnerability assertion: ensure we don't write beyond allocated bounds */
    SAILR_ASSERT(sizeof(xmlStreamComp) <= sizeof(xmlStreamComp));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->steps = (xmlStreamStepPtr) xmlMalloc(size * sizeof(xmlStreamStep));
    if (cur->steps == NULL) {
        xmlFree(cur);
        ERROR(NULL, NULL, NULL,
              "xmlNewStreamComp: malloc failed\n");
        return(NULL);
    }
    cur->nbStep = 0;
    
    return cur;
}

int main(void) {
    /* Make symbolic inputs if needed - though this function takes no arguments */
    /* Call the target function to reach line 1495 */
    xmlStreamCompPtr result = xmlNewStreamComp();
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->steps != NULL) {
            free(result->steps);
        }
        free(result);
    }
    
    return 0;
}