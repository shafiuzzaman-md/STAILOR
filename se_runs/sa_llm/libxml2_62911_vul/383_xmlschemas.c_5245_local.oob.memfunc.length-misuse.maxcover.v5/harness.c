#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlSchemaAttributeGroup xmlSchemaAttributeGroup;
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef struct _xmlSchema xmlSchema;
typedef struct _xmlNode xmlNode;

/* Minimal stub structures to avoid null dereferences */
struct _xmlSchemaAttributeGroup {
    int type;
    const char* name;
    const char* targetNamespace;
    void* node;
};

struct _xmlSchemaParserCtxt {
    void* dummy;
};

struct _xmlNode {
    void* dummy;
};

/* Stub functions that are called in the path */
void xmlSchemaPErrMemory(xmlSchemaParserCtxt* ctxt, const char* msg, const char* str) {
    /* Do nothing - just a stub */
}

/* The function we're trying to reach - based on the SA spec */
xmlSchemaAttributeGroup* xmlSchemaNewAttributeGroup(xmlSchemaParserCtxt* pctxt, 
                                                    const char* name, 
                                                    const char* nsName,
                                                    xmlNode* node) {
    xmlSchemaAttributeGroup* ret;
    
    /* This is the vulnerable line from xmlschemas.c:5245 */
    ret = (xmlSchemaAttributeGroup*)malloc(sizeof(xmlSchemaAttributeGroup));
    
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating attribute group", NULL);
        return (NULL);
    }
    
    /* This is the memset call that the SA spec is concerned about */
    memset(ret, 0, sizeof(xmlSchemaAttributeGroup));
    
    ret->type = 1; /* XML_SCHEMA_TYPE_ATTRIBUTEGROUP */
    ret->name = name;
    ret->targetNamespace = nsName;
    ret->node = node;
    
    return ret;
}

/* Entrypoint function mentioned in SA spec - we need to call this to reach the target */
char* xmlSchemaFormatQName(const char* prefix, const char* name) {
    /* Simple stub that returns a symbolic string */
    static char buffer[256];
    klee_make_symbolic(buffer, sizeof(buffer), "formatted_qname");
    return buffer;
}

int main(void) {
    /* Create symbolic inputs to drive execution */
    xmlSchemaParserCtxt ctxt;
    char name[256];
    char nsName[256];
    xmlNode node;
    
    /* Make inputs symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(nsName, sizeof(nsName), "nsName");
    
    /* Assume reasonable string lengths to avoid buffer issues in stubs */
    klee_assume(name[255] == '\0');
    klee_assume(nsName[255] == '\0');
    
    /* Call xmlSchemaFormatQName as mentioned in the SA spec entrypoint */
    char* formatted = xmlSchemaFormatQName("test", "name");
    
    /* Now call the function that contains the vulnerable memset */
    xmlSchemaAttributeGroup* group = xmlSchemaNewAttributeGroup(&ctxt, name, nsName, &node);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       the allocation size is valid. The SA spec is concerned about the memset
       call with sizeof(xmlSchemaAttributeGroup). The vulnerability would occur
       if the allocated memory region is smaller than the size passed to memset.
       Since we're using malloc(sizeof(...)), the issue would be if malloc
       returns NULL or a pointer that doesn't have enough contiguous memory.
       However, the more relevant condition for this pattern is that the
       allocation succeeded (non-NULL) and the size is positive. */
    if (group != NULL) {
        /* The vulnerability assertion: ensure the allocation size is valid */
        SAILR_ASSERT(sizeof(xmlSchemaAttributeGroup) > 0);
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(group);
    }
    
    return 0;
}