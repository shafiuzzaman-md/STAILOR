#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaInitTypes();

    char buf[256];
    unsigned int bufsize = sizeof(buf);
    char *offs;
    int i_symbolic;
    unsigned int dec_total;

    klee_make_symbolic(&i_symbolic, sizeof(i_symbolic), "i_symbolic");
    klee_make_symbolic(&dec_total, sizeof(dec_total), "dec_total");
    klee_make_symbolic(buf, sizeof(buf), "buf");

    offs = buf + (bufsize / 2);
    unsigned int i = (unsigned int)i_symbolic;
    while (*(offs + i) != 0) {
        i++;
        if (i >= bufsize - (offs - buf)) {
            break;
        }
    }

    if (i < dec_total) {
        memmove(offs + (dec_total - i), offs, i + 1);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(offs, '0', dec_total - i);
    }

    return 0;
}