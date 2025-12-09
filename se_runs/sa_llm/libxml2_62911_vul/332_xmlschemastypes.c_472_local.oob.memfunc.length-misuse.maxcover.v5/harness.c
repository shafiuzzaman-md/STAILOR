#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaInitTypes();

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}