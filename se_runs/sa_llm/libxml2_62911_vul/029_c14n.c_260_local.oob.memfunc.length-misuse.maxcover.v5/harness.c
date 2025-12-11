#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;

struct _xmlNode {
    int type;
    void *parent;
};

struct _xmlNs {
    xmlNsPtr next;
};

/* Stub for xmlXPathNodeSetContains */
int xmlXPathNodeSetContains(void *nodes, xmlNodePtr node) {
    /* Return symbolic value to explore both branches */
    int result;
    klee_make_symbolic(&result, sizeof(result), "nodeset_contains_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

/* Target function from c14n.c - simplified to reach line 260 */
int xmlC14NIsNodeInNodeset(xmlNodePtr node, void *nodes, xmlNodePtr parent) {
    if (node->type != 3) { /* XML_NAMESPACE_DECL = 3 */
        return xmlXPathNodeSetContains(nodes, node);
    } else {
        xmlNs ns;
        
        /* LINE 260: memcpy(&ns, node, sizeof(ns)); */
        /* Vulnerability assertion: ensure node points to valid memory of at least sizeof(ns) bytes */
        SAILR_ASSERT(node != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(&ns, node, sizeof(ns));
        
        /* Rest of the function stub */
        if ((parent != NULL) && (parent->type == 2)) { /* XML_ATTRIBUTE_NODE = 2 */
            ns.next = (xmlNsPtr)parent->parent;
        } else {
            ns.next = NULL;
        }
        return 0;
    }
}

/* Entrypoint */
int main(void) {
    /* Symbolic inputs */
    xmlNode node;
    xmlNode parent_node;
    void *nodes;
    xmlNodePtr parent_ptr;
    
    /* Initialize symbolic variables */
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&parent_node, sizeof(parent_node), "parent_node");
    klee_make_symbolic(&nodes, sizeof(nodes), "nodes");
    
    /* Make parent pointer either NULL or point to parent_node */
    int parent_is_null;
    klee_make_symbolic(&parent_is_null, sizeof(parent_is_null), "parent_is_null");
    klee_assume(parent_is_null == 0 || parent_is_null == 1);
    
    if (parent_is_null) {
        parent_ptr = NULL;
    } else {
        parent_ptr = &parent_node;
    }
    
    /* Assume node type is XML_NAMESPACE_DECL (3) to take the else branch */
    klee_assume(node.type == 3);
    
    /* Call the target function */
    xmlC14NIsNodeInNodeset(&node, nodes, parent_ptr);
    
    return 0;
}