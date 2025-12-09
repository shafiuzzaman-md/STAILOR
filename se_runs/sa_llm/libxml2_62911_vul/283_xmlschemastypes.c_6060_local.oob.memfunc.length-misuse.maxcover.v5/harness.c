#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    xmlSchemaInitTypes();

    char buf[256];
    unsigned int bufsize = sizeof(buf);
    char *offs;
    int i_symbolic;
    unsigned int dec_total;

    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&i_symbolic, sizeof(i_symbolic), "i_symbolic");
    klee_make_symbolic(&dec_total, sizeof(dec_total), "dec_total");

    offs = buf + (bufsize / 2);
    *offs = '\0';

    unsigned int i = 0;
    while (*(offs + i) != 0) {
        i++;
        if (i >= bufsize) break;
    }

    if (i < dec_total) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memmove(offs + (dec_total - i), offs, i + 1);
        memset(offs, '0', dec_total - i);
    }

    return 0;
}