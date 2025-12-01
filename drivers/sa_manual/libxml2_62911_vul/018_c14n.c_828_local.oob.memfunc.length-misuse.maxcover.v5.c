#include <klee/klee.h>
#include "c14n.c"
#include "tree.h"
#include "xmlstring.h"

int main() {
    xmlC14NCtxPtr ctx;
    xmlNodePtr cur;
    int visible;
    
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    
    if (ctx != NULL) {
        klee_make_symbolic(&ctx->inclusive_ns_prefixes, sizeof(ctx->inclusive_ns_prefixes), "ctx_inclusive_ns_prefixes");
        klee_make_symbolic(&ctx->ns_rendered, sizeof(ctx->ns_rendered), "ctx_ns_rendered");
    }
    
    if (cur != NULL) {
        klee_make_symbolic(&cur->doc, sizeof(cur->doc), "cur_doc");
        klee_make_symbolic(&cur->ns, sizeof(cur->ns), "cur_ns");
        klee_make_symbolic(&cur->properties, sizeof(cur->properties), "cur_properties");
    }
    
    int result = xmlExcC14NProcessNamespaces(ctx, cur, visible);
    
    return result;
}