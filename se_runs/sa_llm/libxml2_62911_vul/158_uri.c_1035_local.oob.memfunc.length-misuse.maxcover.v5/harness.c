#include "klee/klee.h"
#include <libxml/uri.h>
#include <string.h>

int main(void) {
    xmlURIPtr uri = xmlCreateURI();
    if (uri == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeURI(uri);
    return 0;
}