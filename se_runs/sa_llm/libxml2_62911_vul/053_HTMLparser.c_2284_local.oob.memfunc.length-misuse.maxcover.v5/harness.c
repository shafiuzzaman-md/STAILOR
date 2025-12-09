#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    const char *input_data;
    int input_len;
    char *out_buf;
    int out_len;

    klee_make_symbolic(&input_len, sizeof(input_len), "input_len");
    klee_assume(input_len >= 0);
    klee_assume(input_len < 1024);

    input_data = (const char *)malloc(input_len + 1);
    klee_make_symbolic((void *)input_data, input_len + 1, "input_data");
    input_data[input_len] = '\0';

    out_len = 2 * input_len + 100;
    out_buf = (char *)malloc(out_len);

    htmlDocPtr doc = htmlReadMemory(input_data, input_len, NULL, NULL, HTML_PARSE_RECOVER | HTML_PARSE_NOERROR | HTML_PARSE_NOWARNING);
    if (doc) {
        xmlFreeDoc(doc);
    }

    free((void *)input_data);
    free(out_buf);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}