#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlChar *prefix;
    xmlChar *ncname;
    xmlChar *ret;
    int lenp, lenn;
    int memory_size;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_make_symbolic(&memory_size, sizeof(memory_size), "memory_size");

    klee_assume(lenp >= 0);
    klee_assume(lenn >= 0);
    klee_assume(memory_size >= 0);

    if (lenp + lenn + 2 > memory_size) {
        return 0;
    }

    prefix = (xmlChar *)malloc((lenp + 1) * sizeof(xmlChar));
    ncname = (xmlChar *)malloc((lenn + 1) * sizeof(xmlChar));
    ret = (xmlChar *)malloc(memory_size * sizeof(xmlChar));

    if (!prefix || !ncname || !ret) {
        if (prefix) free(prefix);
        if (ncname) free(ncname);
        if (ret) free(ret);
        return 0;
    }

    klee_make_symbolic(prefix, (lenp + 1) * sizeof(xmlChar), "prefix");
    klee_make_symbolic(ncname, (lenn + 1) * sizeof(xmlChar), "ncname");

    prefix[lenp] = 0;
    ncname[lenn] = 0;

    if (lenp > 0) {
        memcpy(&ret[0], prefix, lenp);
    }
    ret[lenp] = ':';
    klee_assert(0 && "SAILR_REACH_ASSERT");
    if (lenn > 0) {
        memcpy(&ret[lenp + 1], ncname, lenn);
    }
    ret[lenn + lenp + 1] = 0;

    free(prefix);
    free(ncname);
    free(ret);
    return 0;
}