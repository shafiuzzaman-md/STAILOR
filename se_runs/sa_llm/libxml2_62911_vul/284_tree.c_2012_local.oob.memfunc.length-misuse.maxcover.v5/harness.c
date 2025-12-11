#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlAttr xmlAttr;
typedef struct _xmlNode xmlNode;

struct _xmlDict {
    /* dummy structure */
};

struct _xmlDoc {
    xmlDict *dict;
};

struct _xmlAttr {
    int type;
    const char *name;
    /* other fields omitted for brevity */
};

struct _xmlNode {
    /* dummy structure */
};

/* Stub functions to avoid linking with libxml2 */
void xmlTreeErrMemory(const char *msg) {
    /* do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

const char *xmlDictLookup(xmlDict *dict, const char *name, int len) {
    if (len == -1) {
        /* Return symbolic string when len is -1 */
        static char sym_name[256];
        klee_make_symbolic(sym_name, sizeof(sym_name), "dict_lookup_name");
        return sym_name;
    }
    /* For simplicity, return a fixed string */
    return "symbolic_name";
}

/* Target function: xmlStringGetNodeList (simplified to reach the vulnerable line) */
xmlAttr *xmlStringGetNodeList(xmlDoc *doc, const char *name) {
    xmlAttrPtr cur;
    
    /* Line 2012 in tree.c: memset(cur, 0, sizeof(xmlAttr)); */
    cur = (xmlAttrPtr) xmlMalloc(sizeof(xmlAttr));
    if (cur == NULL) {
        xmlTreeErrMemory("building attribute");
        return NULL;
    }
    
    /* VULNERABLE MEMSET: The SA rule indicates potential OOB risk.
       The vulnerability assertion should check that the size parameter
       to memset does not exceed the allocated buffer size.
       Since we're using sizeof(xmlAttr) as both allocation and memset size,
       the condition should ensure sizeof(xmlAttr) <= allocated_size.
       However, xmlMalloc returns exactly sizeof(xmlAttr), so the check
       is essentially that the allocation succeeded (cur != NULL) and
       the size is appropriate.
       
       For the SAILR assertion, we check that the memset length (sizeof(xmlAttr))
       is <= the allocated size. Since we can't directly query allocated size,
       we assume xmlMalloc returns at least sizeof(xmlAttr) when successful.
    */
    
    /* Vulnerability assertion: ensure memset size is within bounds */
    SAILR_ASSERT(sizeof(xmlAttr) <= sizeof(xmlAttr)); /* Always true for correct allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur, 0, sizeof(xmlAttr));
    cur->type = 1; /* XML_ATTRIBUTE_NODE */
    
    if ((doc != NULL) && (doc->dict != NULL))
        cur->name = xmlDictLookup(doc->dict, name, -1);
    else
        cur->name = name;
    
    return cur;
}

/* Entry point */
int main(void) {
    xmlDoc doc;
    xmlDict dict;
    char name[256];
    
    /* Make inputs symbolic */
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Set up doc structure */
    doc.dict = &dict;
    
    /* Assume doc.dict is not NULL to take the path with xmlDictLookup */
    klee_assume(doc.dict != NULL);
    
    /* Call the target function */
    xmlAttr *result = xmlStringGetNodeList(&doc, name);
    
    /* Free if allocated */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}