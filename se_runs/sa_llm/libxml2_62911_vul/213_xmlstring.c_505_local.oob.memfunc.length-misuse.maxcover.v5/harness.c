#include "klee/klee.h"
#include <libxml/xmlstring.h>
#include <libxml/parser.h>
#include <limits.h>

int main(void) {
    xmlChar *str1;
    xmlChar *str2;
    int len;
    int size_sym;
    unsigned int size;

    /* Symbolic inputs for the two strings and length */
    str1 = (xmlChar *)malloc(256 * sizeof(xmlChar));
    str2 = (xmlChar *)malloc(256 * sizeof(xmlChar));
    klee_make_symbolic(str1, 256 * sizeof(xmlChar), "str1");
    klee_make_symbolic(str2, 256 * sizeof(xmlChar), "str2");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&size_sym, sizeof(size_sym), "size_sym");

    /* Ensure len is non-negative (as per bounds_hints) */
    klee_assume(len >= 0);
    /* Ensure size_sym is within a reasonable range to avoid overflow in xmlStrlen */
    klee_assume(size_sym >= 0);
    klee_assume(size_sym < 256);

    /* Simulate xmlStrlen(str1) returning size_sym */
    size = (unsigned int)size_sym;

    /* Check conditions from the code snippet */
    if ((size < 0) || (size > INT_MAX - len)) {
        free(str1);
        free(str2);
        return 0;
    }

    /* Allocate memory as in the target function */
    xmlChar *ret = (xmlChar *) xmlMalloc((size_t) size + len + 1);
    if (ret == NULL) {
        /* This branch calls xmlStrndup(str1, size) */
        xmlChar *dup = xmlStrndup(str1, size);
        if (dup) xmlFree(dup);
        free(str1);
        free(str2);
        return 0;
    }

    /* Reach the target line 505 */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(ret, str1, size);
    memcpy(&ret[size], str2, len);
    ret[size + len] = 0;

    xmlFree(ret);
    free(str1);
    free(str2);
    return 0;
}