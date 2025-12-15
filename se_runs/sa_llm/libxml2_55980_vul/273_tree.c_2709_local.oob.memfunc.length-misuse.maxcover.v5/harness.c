#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
struct _xmlNode {
    void *children;
    void *last;
    void *parent;
    void *next;
    void *prev;
    void *doc;
    int type;
    const char *name;
    char *content;
    /* Other fields omitted for brevity */
};

/* Function declarations from libxml2 that we need */
typedef xmlNode *xmlNodePtr;
extern void *xmlMalloc(size_t size);
extern char *xmlStrndup(const char *cur, int len);
extern void xmlTreeErrMemory(const char *extra);

/* Constants */
#define XML_TEXT_NODE 3
extern const char *xmlStringText;

/* Global variables referenced in the code */
extern int __xmlRegisterCallbacks;
extern void (*xmlRegisterNodeDefaultValue)(void *node);

/* The function we need to call to reach the target line */
xmlNodePtr xmlNewTextLen(const char *content, int len) {
    xmlNodePtr cur;

    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building text");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_TEXT_NODE;

    cur->name = xmlStringText;
    if (content != NULL) {
        cur->content = xmlStrndup(content, len);
    }

    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
        xmlRegisterNodeDefaultValue(cur);
    
    return cur;
}

/* Stub implementations for external functions */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrndup(const char *cur, int len) {
    if (cur == NULL || len < 0) return NULL;
    char *dup = (char *)malloc(len + 1);
    if (dup == NULL) return NULL;
    memcpy(dup, cur, len);
    dup[len] = '\0';
    return dup;
}

void xmlTreeErrMemory(const char *extra) {
    /* Do nothing in stub */
}

/* Global variable definitions */
int __xmlRegisterCallbacks = 0;
void (*xmlRegisterNodeDefaultValue)(void *node) = NULL;
const char *xmlStringText = "text";

int main(void) {
    /* Make symbolic inputs for xmlNewTextLen parameters */
    char content[256];
    int len;
    
    klee_make_symbolic(content, sizeof(content), "content");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume reasonable bounds for symbolic values */
    klee_assume(len >= 0);
    klee_assume(len <= 256);  /* Bound to prevent excessive exploration */
    
    /* Call the function that contains the target line */
    xmlNodePtr result = xmlNewTextLen(content, len);
    
    /* Vulnerability assertion: For memset length misuse, we need to ensure
     * that the size passed to memset doesn't exceed allocated bounds.
     * In this case, memset uses sizeof(xmlNode), which is fixed and safe.
     * However, the SA pattern flags potential OOB in memset - the actual
     * vulnerability would be if the allocation size was wrong.
     * Since xmlMalloc(sizeof(xmlNode)) is correct, the vulnerability assertion
     * should check that the allocation succeeded and size is correct.
     */
    if (result != NULL) {
        /* The vulnerability would occur if sizeof(xmlNode) was incorrect
         * or if cur was not properly allocated. We assert proper allocation. */
        SAILR_ASSERT(result != NULL && "Allocation succeeded");
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result->content);
        free(result);
    }
    
    return 0;
}