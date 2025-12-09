#include <libxml/parser.h>
#include <libxml/xmlstring.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    int len;
    xmlChar cur[100];

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(cur, sizeof(cur), "cur");

    if (len < 0) {
        return 0;
    }

    xmlChar* result = xmlStrndup(cur, len);
    if (result != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(result);
    }

    return 0;
}