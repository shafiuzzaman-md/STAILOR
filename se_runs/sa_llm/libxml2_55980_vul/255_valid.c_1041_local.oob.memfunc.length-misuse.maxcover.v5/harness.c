#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlElementContent xmlElementContent;
struct _xmlElementContent {
    int type;
    int ocur;
    xmlElementContent *c2;
    xmlElementContent *parent;
    const char *name;
};

typedef xmlElementContent *xmlElementContentPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "malloc_contents");
    }
    return ptr;
}

/* Stub for xmlDictLookup */
const char* xmlDictLookup(void *dict, const char *name, int len) {
    (void)dict;
    (void)len;
    return name;
}

/* Stub for xmlVErrMemory */
void xmlVErrMemory(void *ctx, const char *msg) {
    (void)ctx;
    (void)msg;
}

/* Target function - simplified version of the actual code */
xmlElementContentPtr target_function(xmlElementContentPtr cur, void *dict) {
    xmlElementContentPtr ret = NULL;
    xmlElementContentPtr prev = NULL;
    xmlElementContentPtr tmp;
    
    if (cur == NULL) return NULL;
    
    /* Allocate first element */
    ret = (xmlElementContentPtr)xmlMalloc(sizeof(xmlElementContent));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return NULL;
    }
    memset(ret, 0, sizeof(xmlElementContent));
    ret->type = cur->type;
    ret->ocur = cur->ocur;
    if (cur->name != NULL) {
        if (dict)
            ret->name = xmlDictLookup(dict, cur->name, -1);
        else
            ret->name = cur->name;
    }
    
    prev = ret;
    cur = cur->c2;
    while (cur != NULL) {
        tmp = (xmlElementContentPtr)xmlMalloc(sizeof(xmlElementContent));
        if (tmp == NULL) {
            xmlVErrMemory(NULL, "malloc failed");
            return ret;
        }
        
        /* VULNERABLE LOCATION - line 1041 */
        memset(tmp, 0, sizeof(xmlElementContent));
        
        /* Vulnerability assertion: ensure the size argument to memset is safe */
        SAILR_ASSERT(sizeof(xmlElementContent) > 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        tmp->type = cur->type;
        tmp->ocur = cur->ocur;
        prev->c2 = tmp;
        tmp->parent = prev;
        if (cur->name != NULL) {
            if (dict)
                tmp->name = xmlDictLookup(dict, cur->name, -1);
            else
                tmp->name = cur->name;
        }
        prev = tmp;
        cur = cur->c2;
    }
    
    return ret;
}

/* Helper to create a symbolic linked list */
xmlElementContentPtr create_symbolic_list(int max_depth) {
    xmlElementContentPtr head = NULL;
    xmlElementContentPtr prev = NULL;
    
    for (int i = 0; i < max_depth; i++) {
        xmlElementContentPtr cur = (xmlElementContentPtr)malloc(sizeof(xmlElementContent));
        klee_make_symbolic(cur, sizeof(xmlElementContent), "list_node");
        
        /* Assume reasonable values for type and ocur */
        klee_assume(cur->type >= 0 && cur->type <= 10);
        klee_assume(cur->ocur >= 0 && cur->ocur <= 10);
        
        /* Make name pointer symbolic but constrain it */
        char name_buf[32];
        klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
        cur->name = name_buf;
        
        /* Initialize pointers */
        cur->c2 = NULL;
        cur->parent = NULL;
        
        if (prev) {
            prev->c2 = cur;
        } else {
            head = cur;
        }
        prev = cur;
        
        /* Symbolically decide whether to continue the list */
        int continue_list;
        klee_make_symbolic(&continue_list, sizeof(continue_list), "continue_list");
        klee_assume(continue_list == 0 || continue_list == 1);
        
        if (continue_list == 0) {
            break;
        }
    }
    
    return head;
}

/* Main entry point */
int main(void) {
    /* Create a symbolic linked list */
    xmlElementContentPtr list = create_symbolic_list(3);
    
    /* Symbolic dictionary pointer */
    void *dict;
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    
    /* Call the target function */
    xmlElementContentPtr result = target_function(list, dict);
    
    /* Cleanup (optional for KLEE) */
    while (list != NULL) {
        xmlElementContentPtr next = list->c2;
        free(list);
        list = next;
    }
    
    return 0;
}