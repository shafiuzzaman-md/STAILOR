#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    const char* name;
    xmlSchemaTypePtr baseType = NULL;
    xmlSchemaTypePtr ret;

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&baseType, sizeof(baseType), "baseType");

    ret = (xmlSchemaTypePtr) xmlMalloc(sizeof(xmlSchemaType));
    if (ret == NULL) {
        xmlSchemaTypeErrMemory(NULL, "could not initialize basic types");
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlSchemaType));

    ret->name = (const xmlChar *)name;
    ret->targetNamespace = XML_SCHEMAS_NAMESPACE_NAME;
    ret->type = XML_SCHEMA_TYPE_BASIC;
    ret->baseType = baseType;
    ret->contentType = XML_SCHEMA_CONTENT_BASIC;

    xmlFree(ret);
    return 0;
}