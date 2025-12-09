#include <libxml/parser.h>
#include <libxml/encoding.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    unsigned char inb_buf[1024];
    unsigned char out_buf[1024];
    int len;
    int outlen;
    int inlenb;

    klee_make_symbolic(inb_buf, sizeof(inb_buf), "inb_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&outlen, sizeof(outlen), "outlen");
    klee_make_symbolic(&inlenb, sizeof(inlenb), "inlenb");

    if (len < 0) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(out_buf, inb_buf, len);

    return 0;
}