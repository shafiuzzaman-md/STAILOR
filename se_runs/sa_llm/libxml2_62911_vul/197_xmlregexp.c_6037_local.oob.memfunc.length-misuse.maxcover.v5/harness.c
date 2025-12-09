#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegAtomPtr atom;
    xmlChar *token;
    xmlChar *token2;
    int data = 0;
    int min = 0;
    int max = 0;

    atom = (xmlRegAtomPtr) xmlMalloc(sizeof(xmlRegAtom));
    if (!atom) return 0;

    klee_make_symbolic(&token, sizeof(token), "token");
    klee_make_symbolic(&token2, sizeof(token2), "token2");

    if (token) {
        klee_assume(token[0] != '\0');
    }
    if (token2) {
        klee_assume(token2[0] != '\0');
    }

    int lenn = token2 ? strlen((char *) token2) : 0;
    int lenp = token ? strlen((char *) token) : 0;

    xmlChar *str = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlFree(atom);
        return 0;
    }
    if (token) {
        memcpy(&str[0], token, lenp);
    }
    str[lenp] = '|';
    if (token2) {
        memcpy(&str[lenp + 1], token2, lenn);
    }
    klee_assert(0 && "SAILR_REACH_ASSERT");
    str[lenn + lenp + 1] = 0;

    atom->valuep = str;
    atom->data = data;
    atom->quant = XML_REGEXP_QUANT_ONCEONLY;
    atom->min = min;
    atom->max = max;

    xmlFree(str);
    xmlFree(atom);
    return 0;
}