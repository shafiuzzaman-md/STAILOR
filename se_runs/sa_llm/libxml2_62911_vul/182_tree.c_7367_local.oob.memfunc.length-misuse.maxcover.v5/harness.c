#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to match libxml2 structures */
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlChar xmlChar;
typedef struct _xmlNode xmlNode;

struct _xmlBuffer {
    xmlChar* content;
    int use;
    int size;
};

struct _xmlChar {
    char c;
};

struct _xmlNode {
    int type;
    xmlNode* children;
    xmlNode* last;
    xmlNode* parent;
    xmlNode* next;
    xmlNode* prev;
    xmlNode* doc;
    xmlChar* name;
    xmlChar* content;
};

/* Stub functions needed to reach target */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

void xmlFree(void* ptr) {
    free(ptr);
}

xmlNode* xmlNewNode(void* ns, const xmlChar* name) {
    xmlNode* node = (xmlNode*)malloc(sizeof(xmlNode));
    if (node) {
        node->type = 1;
        node->children = NULL;
        node->last = NULL;
        node->parent = NULL;
        node->next = NULL;
        node->prev = NULL;
        node->doc = NULL;
        node->name = (xmlChar*)name;
        node->content = NULL;
    }
    return node;
}

xmlNode* xmlStringGetNodeList(xmlNode* doc, const xmlChar* value) {
    /* Simplified implementation to reach the vulnerable code path */
    xmlBuffer buf_struct;
    xmlBuffer* buf = &buf_struct;
    
    /* Make buf->use symbolic to control memcpy size */
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    /* Assume buf->use is non-negative as per bounds hints */
    klee_assume(buf->use >= 0);
    
    /* Make newSize symbolic */
    int newSize;
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    klee_assume(newSize >= 0);
    
    /* Allocate buffer content with symbolic size */
    int buf_content_size;
    klee_make_symbolic(&buf_content_size, sizeof(buf_content_size), "buf_content_size");
    klee_assume(buf_content_size >= 0);
    buf->content = (xmlChar*)malloc(buf_content_size);
    
    /* This triggers the vulnerable path when rebuf != NULL */
    xmlChar* rebuf = (xmlChar*)xmlMallocAtomic(newSize);
    if (rebuf != NULL) {
        /* VULNERABILITY ASSERTION: Ensure memcpy doesn't overflow */
        /* The vulnerable condition is when buf->use > newSize */
        SAILR_ASSERT(buf->use <= newSize);
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(rebuf, buf->content, buf->use);
        xmlFree(buf->content);
        rebuf[buf->use] = 0;
    }
    
    if (rebuf == NULL) {
        /* Handle NULL case */
    }
    
    /* Return a dummy node */
    return xmlNewNode(NULL, (const xmlChar*)"dummy");
}

int main(void) {
    /* Create symbolic inputs for xmlStringGetNodeList */
    xmlNode doc_struct;
    xmlNode* doc = &doc_struct;
    
    /* Make doc fields symbolic to avoid null derefs */
    klee_make_symbolic(&doc_struct, sizeof(doc_struct), "doc");
    
    /* Create symbolic value parameter */
    xmlChar value[100];
    klee_make_symbolic(value, sizeof(value), "value");
    
    /* Call the entrypoint function */
    xmlNode* result = xmlStringGetNodeList(doc, value);
    
    /* Cleanup */
    if (result) {
        free(result);
    }
    
    return 0;
}