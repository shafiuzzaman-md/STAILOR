#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlDocPtr doc;
    xmlOutputBufferPtr buf;
    xmlC14NIsVisibleCallback is_visible_callback = NULL;
    void* user_data = NULL;
    int mode;
    xmlChar** inclusive_ns_prefixes = NULL;
    int with_comments;
    xmlC14NCtxPtr ctx;

    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&mode, sizeof(mode), "mode");
    klee_make_symbolic(&with_comments, sizeof(with_comments), "with_comments");

    klee_assume(doc != NULL);
    klee_assume(buf != NULL);
    klee_assume(buf->encoder == NULL);

    ctx = xmlC14NNewCtx(doc, is_visible_callback, user_data, mode, inclusive_ns_prefixes, with_comments, buf);
    
    if (ctx != NULL) {
        klee_assert(ctx->ns_rendered != NULL);
    }

    return 0;
}