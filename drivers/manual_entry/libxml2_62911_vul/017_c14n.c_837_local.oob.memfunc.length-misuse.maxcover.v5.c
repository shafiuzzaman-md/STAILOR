#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NCtxPtr ctx;
    xmlNodePtr cur;
    int visible;
    int has_empty_ns;
    int has_empty_ns_in_inclusive_list;
    int has_visibly_utilized_empty_ns;

    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    klee_make_symbolic(&visible, sizeof(visible), "visible");
    klee_make_symbolic(&has_empty_ns, sizeof(has_empty_ns), "has_empty_ns");
    klee_make_symbolic(&has_empty_ns_in_inclusive_list, sizeof(has_empty_ns_in_inclusive_list), "has_empty_ns_in_inclusive_list");
    klee_make_symbolic(&has_visibly_utilized_empty_ns, sizeof(has_visibly_utilized_empty_ns), "has_visibly_utilized_empty_ns");

    xmlC14NProcessNamespaces(ctx, cur, visible, has_empty_ns, has_empty_ns_in_inclusive_list, has_visibly_utilized_empty_ns);

    return 0;
}