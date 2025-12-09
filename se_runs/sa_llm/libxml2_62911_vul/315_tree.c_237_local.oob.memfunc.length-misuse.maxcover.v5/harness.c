#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlChar *prefix;
    xmlChar *ncname;
    xmlChar *memory = NULL;
    xmlChar *ret;
    int lenp, lenn;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_make_symbolic(&memory, sizeof(memory), "memory");

    if (lenp < 0) lenp = 0;
    if (lenn < 0) lenn = 0;

    prefix = (xmlChar *)malloc(lenp + 1);
    if (prefix) {
        klee_make_symbolic(prefix, lenp + 1, "prefix");
        prefix[lenp] = 0;
    }

    ncname = (xmlChar *)malloc(lenn + 1);
    if (ncname) {
        klee_make_symbolic(ncname, lenn + 1, "ncname");
        ncname[lenn] = 0;
    }

    if (memory == NULL) {
        ret = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
        if (ret == NULL) {
            if (prefix) free(prefix);
            if (ncname) free(ncname);
            return 0;
        }
    } else {
        ret = memory;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&ret[0], prefix, lenp);
    ret[lenp] = ':';
    memcpy(&ret[lenp + 1], ncname, lenn);
    ret[lenn + lenp + 1] = 0;

    if (prefix) free(prefix);
    if (ncname) free(ncname);
    if (ret != memory) xmlFree(ret);
    return 0;
}