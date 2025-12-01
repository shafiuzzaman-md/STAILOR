#include <klee/klee.h>
#include "c14n.c"
#include "tree.h"
#include "xmlstring.h"

int main() {
    xmlC14NIsVisibleCallback is_visible = NULL;
    void* user_data = NULL;
    
    xmlC14NCtxPtr ctx;
    xmlNodePtr cur;
    
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    
    xmlC14NExecute(ctx, cur, is_visible, user_data);
    
    return 0;
}