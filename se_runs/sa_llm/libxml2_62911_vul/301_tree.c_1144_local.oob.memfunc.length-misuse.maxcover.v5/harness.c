#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc* xmlDocPtr;

typedef enum {
    XML_DOCUMENT_NODE = 13
} xmlElementType;

extern void xmlTreeErrMemory(const char* msg);
extern void* xmlMalloc(size_t size);
extern char* xmlStrdup(const char* cur);

/* Mock xmlDoc structure - simplified for our purposes */
struct _xmlDoc {
    int type;
    char* version;
    /* Other fields omitted for brevity */
};

/* Target function: xmlNewDoc */
xmlDocPtr xmlNewDoc(const char* version) {
    xmlDocPtr cur;

    cur = (xmlDocPtr) xmlMalloc(sizeof(xmlDoc));
    if (cur == NULL) {
        xmlTreeErrMemory("building doc");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlDoc));
    cur->type = XML_DOCUMENT_NODE;

    cur->version = xmlStrdup(version);
    if (cur->version == NULL) {
        xmlTreeErrMemory("building doc");
        /* Target line 1144 - this is where the vulnerability would be */
        SAILR_ASSERT(version != NULL && strlen(version) < 1024);  /* Vulnerability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");  /* Reachability marker */
        /* Cleanup and return would normally happen here */
    }
    
    return cur;
}

/* Entry point */
int main(void) {
    char version[1024];
    int version_len;
    
    /* Make version buffer symbolic */
    klee_make_symbolic(version, sizeof(version), "version");
    
    /* Ensure version is null-terminated */
    version[sizeof(version)-1] = '\0';
    
    /* Get the length of version string */
    version_len = strlen(version);
    
    /* Assume reasonable bounds for the version string length */
    klee_assume(version_len >= 0);
    klee_assume(version_len < sizeof(version));
    
    /* Call the target function */
    xmlDocPtr doc = xmlNewDoc(version);
    
    /* Cleanup if needed */
    if (doc != NULL) {
        free(doc->version);
        free(doc);
    }
    
    return 0;
}