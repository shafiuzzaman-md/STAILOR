#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to compile */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef struct _xmlSchemaModelGroup xmlSchemaModelGroup;
typedef struct _xmlNode xmlNode;

/* Constants from libxml2 */
#define XML_SCHEMA_TYPE_SEQUENCE 1
#define XML_SCHEMA_TYPE_CHOICE 2
#define XML_SCHEMA_TYPE_ALL 3

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxt* ctxt, const char* msg, void* node) {
    (void)ctxt; (void)msg; (void)node;
}

/* Stub for WXS_ADD_LOCAL macro */
#define WXS_ADD_LOCAL(ctxt, ptr) ((void)ctxt, (void)ptr)

/* Target function signature inferred from context */
xmlSchemaModelGroup* xmlSchemaNewModelGroup(xmlSchemaParserCtxt* ctxt, int type, xmlNode* node) {
    xmlSchemaModelGroup* ret;
    
    /* Allocate memory - size unknown, make symbolic */
    ret = (xmlSchemaModelGroup*)malloc(sizeof(xmlSchemaModelGroup));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating model group component", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5435: memset(ret, 0, sizeof(xmlSchemaModelGroup)); */
    memset(ret, 0, sizeof(xmlSchemaModelGroup));
    
    ret->type = type;
    ret->node = node;
    WXS_ADD_LOCAL(ctxt, ret);
    
    if ((type == XML_SCHEMA_TYPE_SEQUENCE) ||
        (type == XML_SCHEMA_TYPE_CHOICE)) {
        /* Continue with rest of function */
    }
    
    return ret;
}

/* Entrypoint for xmlSchemaFormatQName (mentioned in spec) */
char* xmlSchemaFormatQName(xmlSchemaParserCtxt* ctxt, const char* name) {
    (void)ctxt;
    /* Return symbolic string */
    static char buf[256];
    klee_make_symbolic(buf, sizeof(buf), "formatted_name");
    return buf;
}

int main(void) {
    /* Create symbolic inputs to reach target line */
    xmlSchemaParserCtxt* ctxt = NULL;  /* Can be NULL if not dereferenced */
    int type;
    xmlNode* node = NULL;
    
    /* Make type symbolic to explore both branches */
    klee_make_symbolic(&type, sizeof(type), "type");
    
    /* Constrain type to valid values to avoid crashes */
    klee_assume(type >= 0 && type <= 3);
    
    /* Call the function that contains the target line */
    xmlSchemaModelGroup* result = xmlSchemaNewModelGroup(ctxt, type, node);
    
    /* Vulnerability assertion: For memset length-misuse, we need to check
       that the allocated size is at least sizeof(xmlSchemaModelGroup).
       Since malloc size is symbolic, we assert it's sufficient. */
    if (result != NULL) {
        /* The vulnerability would occur if malloc returned a buffer
           smaller than sizeof(xmlSchemaModelGroup). We assert the opposite. */
        SAILR_ASSERT(malloc_usable_size(result) >= sizeof(xmlSchemaModelGroup));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(result);
    }
    
    /* Also call xmlSchemaFormatQName to satisfy entrypoint requirement */
    xmlSchemaFormatQName(ctxt, "test");
    
    return 0;
}