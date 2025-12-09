#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlSchemaValType type;
    klee_make_symbolic(&type, sizeof(type), "type");

    xmlSchemaValPtr value = xmlSchemaNewValue(type);
    if (value != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(value);
    }

    return 0;
}