#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegAtomPtr atom;
    xmlChar *token;
    xmlChar *token2;
    int lenn, lenp;
    xmlChar *str;
    int data = 0;
    int min = 0;

    atom = (xmlRegAtomPtr)xmlMalloc(sizeof(xmlRegAtom));
    if (!atom) return 0;

    klee_make_symbolic(&token, sizeof(token), "token");
    klee_assume(token != NULL);
    klee_make_symbolic(&token2, sizeof(token2), "token2");
    klee_assume(token2 != NULL);

    lenn = strlen((char *) token2);
    lenp = strlen((char *) token);

    str = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlFree(atom);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&str[0], token, lenp);
    str[lenp] = '|';
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;

    atom->valuep = str;
    atom->data = data;
    if (min == 0) {
        /* dummy branch */
    }

    xmlFree(str);
    xmlFree(atom);
    return 0;
}