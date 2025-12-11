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
    int neg;
    int min;
    int max;
    void *data;
};

static void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

static void xmlRegFreeAtom(xmlRegAtom *atom) {
    if (atom == NULL) return;
    free(atom->valuep);
    free(atom->valuep2);
    free(atom);
}

static xmlRegAtom *xmlRegNewAtom(int type, int neg) {
    xmlRegAtom *atom = (xmlRegAtom *)malloc(sizeof(xmlRegAtom));
    if (atom == NULL) return NULL;
    atom->type = type;
    atom->neg = neg;
    atom->min = 0;
    atom->max = 0;
    atom->valuep = NULL;
    atom->valuep2 = NULL;
    atom->data = NULL;
    return atom;
}

int main(void) {
    int lenp, lenn;
    xmlChar token[256];
    xmlChar token2[256];
    xmlRegAtom *atom;
    xmlChar *str;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");

    klee_assume(lenp >= 0 && lenp < 256);
    klee_assume(lenn >= 0 && lenn < 256);

    atom = xmlRegNewAtom(1, 0);
    if (atom == NULL) {
        return 0;
    }

    str = (xmlChar *)xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlRegFreeAtom(atom);
        return 0;
    }

    memcpy(&str[0], token, lenp);
    str[lenp] = '|';
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;

    SAILR_ASSERT(lenn + lenp + 2 > 0 && lenn + lenp + 1 < 256);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    atom->valuep = str;
    xmlRegFreeAtom(atom);
    return 0;
}