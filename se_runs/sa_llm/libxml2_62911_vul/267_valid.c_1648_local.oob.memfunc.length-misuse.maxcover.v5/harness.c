#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlChar name_buf[256];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[255] = '\0';

    xmlEnumerationPtr ret = xmlCreateEnumeration(name_buf);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeEnumeration(ret);
    }
    return 0;
}