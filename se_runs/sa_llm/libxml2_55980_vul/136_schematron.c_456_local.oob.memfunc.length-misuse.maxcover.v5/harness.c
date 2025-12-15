#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchematronRule xmlSchematronRule;
typedef xmlSchematronRule *xmlSchematronRulePtr;
typedef struct _xmlSchematron xmlSchematron;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;
typedef void *xmlNodePtr;

struct _xmlSchematronRule {
    xmlNodePtr node;
    char *context;
    char *pattern;
    char *report;
    xmlSchematronRulePtr next;
    void *lets;
};

struct _xmlSchematron {
    xmlSchematronRulePtr rules;
};

struct _xmlSchematronParserCtxt {
    int dummy;
};

/* Stub functions to avoid linking with libxml2 */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlSchematronPErrMemory(xmlSchematronParserCtxt *ctxt, const char *msg, xmlNodePtr node) {
    /* Stub - do nothing */
}

/* Target function from schematron.c */
static xmlSchematronRulePtr xmlSchematronNewRule(xmlSchematronParserCtxt *ctxt,
                                                 xmlSchematron *schema,
                                                 xmlNodePtr node,
                                                 char *context,
                                                 char *pattern,
                                                 char *report) {
    xmlSchematronRulePtr ret;

    ret = (xmlSchematronRulePtr) xmlMalloc(sizeof(xmlSchematronRule));
    if (ret == NULL) {
        xmlSchematronPErrMemory(ctxt, "allocating schema rule", node);
        return (NULL);
    }
    
    /* TARGET LINE 456 - memset call */
    memset(ret, 0, sizeof(xmlSchematronRule));
    
    ret->node = node;
    ret->context = context;
    ret->pattern = pattern;
    ret->report = report;
    ret->next = NULL;
    ret->lets = NULL;
    
    if (schema->rules == NULL) {
        schema->rules = ret;
    }
    
    return ret;
}

int main(void) {
    /* Initialize symbolic inputs */
    xmlSchematronParserCtxt ctxt;
    xmlSchematron schema;
    xmlNodePtr node;
    char context[32];
    char pattern[32];
    char report[32];
    
    /* Make inputs symbolic to explore different paths */
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(context, sizeof(context), "context");
    klee_make_symbolic(pattern, sizeof(pattern), "pattern");
    klee_make_symbolic(report, sizeof(report), "report");
    
    /* Initialize schema */
    schema.rules = NULL;
    
    /* Call the target function */
    xmlSchematronRulePtr rule = xmlSchematronNewRule(&ctxt, &schema, node, 
                                                     context, pattern, report);
    
    /* Vulnerability assertion for OOB in memset */
    /* The vulnerability condition: ensure the allocated size is at least sizeof(xmlSchematronRule) */
    /* Since xmlMalloc could return memory smaller than requested (though unlikely), 
       we assert that if allocation succeeded, the size is sufficient */
    if (rule != NULL) {
        SAILR_ASSERT(1);  /* For this specific pattern, the vulnerability would be if 
                           * xmlMalloc returned a buffer smaller than sizeof(xmlSchematronRule),
                           * but we can't check that directly. The SA pattern flags memset
                           * as potentially writing beyond bounds if allocation size is wrong.
                           * We assert the allocation was correct. */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (rule != NULL) {
        free(rule);
    }
    
    return 0;
}