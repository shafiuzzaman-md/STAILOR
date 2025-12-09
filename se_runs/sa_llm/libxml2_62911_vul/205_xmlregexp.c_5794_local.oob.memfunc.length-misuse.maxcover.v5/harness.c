#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlChar token[200];
    xmlChar token2[200];
    int lenp, lenn;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");

    klee_assume(lenp >= 0 && lenp < 200);
    klee_assume(lenn >= 0 && lenn < 200);
    token[lenp] = 0;
    token2[lenn] = 0;

    xmlRegAtomPtr atom = xmlRegNewAtom(NULL, XML_REGEXP_STRING);
    if (atom == NULL) {
        return 0;
    }

    xmlChar *str = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlRegFreeAtom(atom);
        return 0;
    }

    memcpy(&str[0], token, lenp);
    str[lenp] = '|';
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;

    atom->valuep = str;

    xmlChar err_msg[200];
    snprintf((char *) err_msg, 199, "not %s", (const char *) atom->valuep);
    err_msg[199] = 0;
    atom->valuep2 = xmlStrdup(err_msg);

    xmlRegFreeAtom(atom);
    return 0;
}