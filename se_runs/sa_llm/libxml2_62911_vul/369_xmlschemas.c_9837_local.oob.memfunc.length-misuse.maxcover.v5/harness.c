#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaSchemaRelationPtr ret;

    ret = (xmlSchemaSchemaRelationPtr)
        xmlMalloc(sizeof(xmlSchemaSchemaRelation));
    if (ret == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating schema relation", NULL);
        return 0;
    }
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaSchemaRelation));
    return 0;
}