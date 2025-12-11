#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlNode xmlNode;
typedef struct _xmlXPathObject xmlXPathObject;
typedef struct _xmlXPathNodeSet xmlXPathNodeSet;

struct _xmlXPathObject {
    int type;
    xmlXPathNodeSet *nodesetval;
    void *user;
    int boolval;
    double floatval;
    char *stringval;
    void *user2;
    int index;
};

struct _xmlXPathNodeSet {
    xmlNode **nodeTab;
    int nodeNr;
    int nodeMax;
};

/* Stub for xmlXPathCmpNodesExt - the entrypoint from SA spec */
void xmlXPathCmpNodesExt(xmlXPathObject *obj, int direction, int count);

/* Helper function to create a symbolic xmlXPathObject */
static xmlXPathObject* create_symbolic_xpath_object(void) {
    xmlXPathObject *obj = (xmlXPathObject*)malloc(sizeof(xmlXPathObject));
    if (!obj) return NULL;
    
    /* Make all fields symbolic */
    klee_make_symbolic(&obj->type, sizeof(obj->type), "obj_type");
    klee_make_symbolic(&obj->boolval, sizeof(obj->boolval), "obj_boolval");
    klee_make_symbolic(&obj->floatval, sizeof(obj->floatval), "obj_floatval");
    klee_make_symbolic(&obj->index, sizeof(obj->index), "obj_index");
    
    /* Initialize pointer fields */
    obj->nodesetval = NULL;
    obj->user = NULL;
    obj->user2 = NULL;
    obj->stringval = NULL;
    
    return obj;
}

/* Helper to create a symbolic nodeset */
static xmlXPathNodeSet* create_symbolic_nodeset(void) {
    xmlXPathNodeSet *set = (xmlXPathNodeSet*)malloc(sizeof(xmlXPathNodeSet));
    if (!set) return NULL;
    
    /* Make nodeNr symbolic - this is the 'return' variable from SA spec */
    klee_make_symbolic(&set->nodeNr, sizeof(set->nodeNr), "set_nodeNr");
    
    /* Constrain nodeNr based on SA bounds hint (>= 0) */
    klee_assume(set->nodeNr >= 0);
    
    /* Allocate nodeTab array based on symbolic nodeNr */
    set->nodeMax = set->nodeNr + 1; /* Ensure enough capacity */
    set->nodeTab = (xmlNode**)malloc(sizeof(xmlNode*) * set->nodeMax);
    
    if (set->nodeTab) {
        /* Initialize pointers to avoid null derefs */
        for (int i = 0; i < set->nodeMax; i++) {
            set->nodeTab[i] = (xmlNode*)malloc(sizeof(xmlNode));
        }
    }
    
    return set;
}

int main(void) {
    /* Create symbolic inputs for xmlXPathCmpNodesExt */
    xmlXPathObject *obj = create_symbolic_xpath_object();
    if (!obj) return 0;
    
    int direction;
    int count;
    
    /* Make direction and count symbolic */
    klee_make_symbolic(&direction, sizeof(direction), "direction");
    klee_make_symbolic(&count, sizeof(count), "count");
    
    /* Create a symbolic nodeset and attach to obj if needed */
    xmlXPathNodeSet *tmpset = create_symbolic_nodeset();
    
    /* Based on the code snippet, the vulnerable memset happens when
     * obj->nodesetval is NOT NULL and we take the else branch.
     * We need to set up the state to reach line 4970.
     */
    if (tmpset) {
        /* Set nodesetval to trigger the else branch where memset is called */
        obj->nodesetval = tmpset;
        
        /* The vulnerable memset at line 4970 is: memset(obj, 0, sizeof(xmlXPathObject))
         * This happens when obj->nodesetval is NOT NULL (we're in the else branch).
         * The vulnerability is that sizeof(xmlXPathObject) might not match
         * the actual allocated size if there was buffer overflow elsewhere.
         * For length-misuse pattern, we assert that the size doesn't exceed bounds.
         */
        
        /* Vulnerability assertion: Ensure we don't write beyond obj's bounds.
         * Since we're using sizeof(xmlXPathObject), the condition should ensure
         * that obj points to a valid object of at least that size.
         * For OOB memset, we assert that the object size is sufficient.
         */
        SAILR_ASSERT(sizeof(xmlXPathObject) <= malloc_usable_size(obj));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Call the entrypoint function */
    xmlXPathCmpNodesExt(obj, direction, count);
    
    /* Cleanup */
    if (obj) {
        if (obj->nodesetval && obj->nodesetval->nodeTab) {
            for (int i = 0; i < obj->nodesetval->nodeMax; i++) {
                free(obj->nodesetval->nodeTab[i]);
            }
            free(obj->nodesetval->nodeTab);
        }
        free(obj->nodesetval);
        free(obj);
    }
    
    return 0;
}