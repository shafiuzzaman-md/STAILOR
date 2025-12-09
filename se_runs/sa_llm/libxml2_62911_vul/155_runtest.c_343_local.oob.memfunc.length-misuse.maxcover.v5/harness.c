#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    char content[1024];
    char input_buffer[2048];
    int input_len;

    klee_make_symbolic(input_buffer, sizeof(input_buffer), "input_buffer");
    klee_make_symbolic(&input_len, sizeof(input_len), "input_len");
    klee_assume(input_len >= 0 && input_len < sizeof(input_buffer));

    xmlDocPtr doc = xmlReadMemory(input_buffer, input_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 0;
    }

    xmlNodePtr root = xmlDocGetRootElement(doc);
    if (root == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    xmlNodePtr cur = root;
    int n = 0;
    char *start = (char *)cur->name;
    char *cur_ptr = start;

    while (cur_ptr && *cur_ptr && n < sizeof(content) - 1) {
        int len = 1;
        int c = xmlGetUTF8Char((unsigned char *)cur_ptr, &len);
        if ((c < 0) || (n + len > sizeof(content) - 1)) {
            break;
        }
        cur_ptr += len;
        n += len;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(content, start, n);
    content[n] = 0;

    xmlFreeDoc(doc);
    return 0;
}