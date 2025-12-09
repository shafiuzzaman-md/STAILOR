#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaFacetPtr facet = xmlSchemaNewFacet();
    if (facet != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(facet);
    }
    return 0;
}