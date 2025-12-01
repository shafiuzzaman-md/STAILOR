#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NCtxPtr ctx;
    xmlNodePtr cur;
    int visible;
    
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    
    klee_assume(ctx != NULL);
    klee_assume(cur != NULL);
    klee_assume(cur->type == XML_ELEMENT_NODE);
    
    xmlC14NProcessElementNode(ctx, cur, visible);
    
    return 0;
}