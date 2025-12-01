#include "c14n.c"
#include <klee/klee.h>

typedef struct _xmlNs xmlNs;
typedef struct _xmlNode xmlNode;
typedef struct _xmlList xmlList;
typedef struct _xmlC14NCtx xmlC14NCtx;

struct _xmlNs {
    struct _xmlNs *next;
    const unsigned char *prefix;
    const unsigned char *href;
};

struct _xmlNode {
    void * _private;
    int type;
    const unsigned char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    struct _xmlNs *ns;
    struct _xmlNs *nsDef;
    unsigned long content;
    struct _xmlAttribute *properties;
    struct _xmlNs *nsDef;
};

struct _xmlList {
    void *data;
};

struct _xmlC14NCtx {
    struct _xmlList *ns_rendered;
    int is_exclusive;
    struct _xmlDoc *doc;
};

int xmlC14NProcessNamespacesAxis(xmlC14NCtx *ctx, xmlNode *cur, int visible);

int main() {
    xmlC14NCtx ctx;
    xmlNode node;
    xmlNs ns_def;
    xmlList list;
    
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&ns_def, sizeof(ns_def), "ns_def");
    klee_make_symbolic(&list, sizeof(list), "list");
    
    ctx.ns_rendered = &list;
    node.type = 1;
    node.parent = NULL;
    node.nsDef = NULL;
    
    int visible;
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    
    int result = xmlC14NProcessNamespacesAxis(&ctx, &node, visible);
    
    klee_assert(result == 0 || result == -1);
    
    return 0;
}