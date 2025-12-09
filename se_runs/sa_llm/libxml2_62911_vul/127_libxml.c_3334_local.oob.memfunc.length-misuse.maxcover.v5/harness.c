#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <klee/klee.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    int count;
    klee_make_symbolic(&count, sizeof(count), "count");

    if (count <= 0) {
        return 0;
    }

    xmlChar **strings = (xmlChar **) xmlMalloc(sizeof(xmlChar *) * count);
    if (strings == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(strings, 0, sizeof(xmlChar *) * count);

    xmlFree(strings);
    return 0;
}