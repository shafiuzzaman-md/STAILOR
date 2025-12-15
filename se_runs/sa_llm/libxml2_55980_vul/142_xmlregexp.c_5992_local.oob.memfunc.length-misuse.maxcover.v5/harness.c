#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlRegAtom xmlRegAtom;
typedef unsigned char xmlChar;

struct _xmlRegAtom {
    int type;
    xmlChar *valuep;
    xmlChar *valuep2;
    int min;
    int max;
    void *valuep3;
    void *valuep4;
};

void xmlRegFreeAtom(xmlRegAtom *atom) {
    if (atom == NULL) return;
    if (atom->valuep != NULL) free(atom->valuep);
    if (atom->valuep2 != NULL) free(atom->valuep2);
    free(atom);
}

xmlChar *xmlMallocAtomic(size_t size) {
    return (xmlChar *)malloc(size);
}

xmlChar *xmlStrdup(const xmlChar *cur) {
    xmlChar *res;
    if (cur == NULL) return NULL;
    res = (xmlChar *)malloc(strlen((const char *)cur) + 1);
    if (res == NULL) return NULL;
    strcpy((char *)res, (const char *)cur);
    return res;
}

int main(void) {
    xmlRegAtom *atom;
    xmlChar *str;
    xmlChar token[256];
    xmlChar token2[256];
    int lenp, lenn;
    xmlChar err_msg[200];

    atom = (xmlRegAtom *)malloc(sizeof(xmlRegAtom));
    if (atom == NULL) return 0;
    atom->valuep = NULL;
    atom->valuep2 = NULL;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");

    klee_assume(lenp >= 0 && lenp < 256);
    klee_assume(lenn >= 0 && lenn < 256);
    token[lenp] = '\0';
    token2[lenn] = '\0';

    str = (xmlChar *)xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlRegFreeAtom(atom);
        return 0;
    }

    memcpy(&str[0], token, lenp);
    str[lenp] = '|';

    SAILR_ASSERT(lenn + lenp + 1 < (lenn + lenp + 2));
    klee_assert(0 && "SAILR_REACH_ASSERT");

    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;

    atom->valuep = str;
    snprintf((char *)err_msg, 199, "not %s", (const char *)atom->valuep);
    err_msg[199] = 0;
    atom->valuep2 = xmlStrdup(err_msg);

    xmlRegFreeAtom(atom);
    return 0;
}