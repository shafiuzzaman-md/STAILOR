#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    char xml_input[1024];
    size_t input_len;
    int instate, curlen, len, rlen;
    char buffer[256];
    char *current;

    klee_make_symbolic(&input_len, sizeof(input_len), "input_len");
    klee_assume(input_len > 0 && input_len < sizeof(xml_input));
    klee_make_symbolic(xml_input, sizeof(xml_input), "xml_input");
    xml_input[input_len] = '\0';

    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&current, sizeof(current), "current");

    klee_assume(instate == 0);
    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curlen >= 0);
    klee_assume(len < rlen);
    klee_assume((size_t)rlen <= sizeof(buffer));
    klee_assume(current >= xml_input && current < xml_input + input_len);
    klee_assume((size_t)(xml_input + input_len - current) >= (size_t)len);

    if (instate == 0) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            memcpy(buffer, current, len);
            instate = 1;
            curlen = 0;
        } else {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    } else if (instate == 2) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            memcpy(buffer, current, len);
        }
    }

    return 0;
}