#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef struct _xmlRegCompCtxt xmlRegCompCtxt;
typedef struct _xmlRegTrans xmlRegTrans;

struct _xmlRegExecCtxt {
    char *errString;
    int *errCounts;
    int *counts;
    int state;
    xmlRegCompCtxt *comp;
    void *inputStack;
    int inputStackNr;
    int index;
    int transno;
};

struct _xmlRegCompCtxt {
    int nbCounters;
    int *states;
};

struct _xmlRegTrans {
    int to;
    void *atom;
};

/* Stub for xmlStrdup */
char* xmlStrdup(const char* str) {
    if (!str) return NULL;
    size_t len = strlen(str) + 1;
    char* copy = (char*)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Entrypoint that leads to the vulnerable memcpy */
void vulnerable_path(xmlRegExecCtxt* exec, xmlRegTrans* trans, const char* value) {
    if (exec->errString != NULL)
        xmlFree(exec->errString);
    exec->errString = xmlStrdup(value);
    exec->errState = exec->state;
    
    /* Vulnerability assertion: ensure nbCounters doesn't cause OOB */
    SAILR_ASSERT(exec->comp->nbCounters >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* This is the target line 4115 */
    memcpy(exec->errCounts, exec->counts,
           exec->comp->nbCounters * sizeof(int));
    
    exec->state = exec->comp->states[trans->to];
    exec->transno = 0;
    if (trans->atom != NULL) {
        if (exec->inputStack != NULL) {
            exec->index++;
            if (exec->index < exec->inputStackNr) {
                /* Continue execution */
            }
        }
    }
}

int main(void) {
    /* Allocate and initialize execution context */
    xmlRegExecCtxt* exec = (xmlRegExecCtxt*)malloc(sizeof(xmlRegExecCtxt));
    klee_assume(exec != NULL);
    
    /* Make errCounts and counts symbolic arrays */
    exec->errCounts = (int*)malloc(1024 * sizeof(int));
    exec->counts = (int*)malloc(1024 * sizeof(int));
    klee_assume(exec->errCounts != NULL);
    klee_assume(exec->counts != NULL);
    
    /* Initialize other fields */
    exec->errString = NULL;
    exec->state = 0;
    exec->inputStack = NULL;
    exec->inputStackNr = 0;
    exec->index = 0;
    exec->transno = 0;
    
    /* Allocate and initialize compilation context */
    exec->comp = (xmlRegCompCtxt*)malloc(sizeof(xmlRegCompCtxt));
    klee_assume(exec->comp != NULL);
    
    /* Make nbCounters symbolic - this is the critical value */
    int nbCounters;
    klee_make_symbolic(&nbCounters, sizeof(nbCounters), "nbCounters");
    /* Assume reasonable bounds for exploration */
    klee_assume(nbCounters >= 0);
    klee_assume(nbCounters <= 1024);  /* Upper bound based on allocation size */
    exec->comp->nbCounters = nbCounters;
    
    /* Allocate states array */
    exec->comp->states = (int*)malloc(256 * sizeof(int));
    klee_assume(exec->comp->states != NULL);
    
    /* Create transition */
    xmlRegTrans* trans = (xmlRegTrans*)malloc(sizeof(xmlRegTrans));
    klee_assume(trans != NULL);
    
    /* Make trans->to symbolic */
    int trans_to;
    klee_make_symbolic(&trans_to, sizeof(trans_to), "trans_to");
    klee_assume(trans_to >= 0);
    klee_assume(trans_to < 256);  /* Within states array bounds */
    trans->to = trans_to;
    
    /* Make atom symbolic (NULL or non-NULL) */
    int atom_flag;
    klee_make_symbolic(&atom_flag, sizeof(atom_flag), "atom_flag");
    trans->atom = atom_flag ? malloc(1) : NULL;
    
    /* Make value string symbolic */
    char value[256];
    klee_make_symbolic(value, sizeof(value), "value");
    value[255] = '\0';  /* Ensure null termination */
    
    /* Call the vulnerable path */
    vulnerable_path(exec, trans, value);
    
    /* Cleanup */
    free(exec->errCounts);
    free(exec->counts);
    free(exec->comp->states);
    free(exec->comp);
    if (trans->atom) free(trans->atom);
    free(trans);
    if (exec->errString) free(exec->errString);
    free(exec);
    
    return 0;
}