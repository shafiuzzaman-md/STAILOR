#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlChar* content;
    int content_len;

    klee_make_symbolic(&content_len, sizeof(content_len), "content_len");
    klee_assume(content_len >= 0);
    klee_assume(content_len < 1024);  // Reasonable bound

    content = (xmlChar*)malloc(content_len + 1);
    klee_make_symbolic(content, content_len + 1, "content");
    content[content_len] = 0;

    xmlNodePtr node = xmlNewText(content);
    if (node != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeNode(node);
    }

    free(content);
    return 0;
}