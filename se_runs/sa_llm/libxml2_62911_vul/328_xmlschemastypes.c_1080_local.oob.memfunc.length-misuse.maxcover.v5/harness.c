#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaValPtr val;
    xmlSchemaValType type;
    char *value;
    size_t value_len;

    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&value_len, sizeof(value_len), "value_len");

    if (value_len > 0) {
        value = (char *)malloc(value_len + 1);
        klee_assume(value != NULL);
        klee_make_symbolic(value, value_len + 1, "value");
        value[value_len] = '\0';
    } else {
        value = NULL;
    }

    if (type != XML_SCHEMAS_STRING) {
        if (value_len > 0) free(value);
        return 0;
    }

    val = (xmlSchemaValPtr) xmlMalloc(sizeof(xmlSchemaVal));
    if (val == NULL) {
        if (value_len > 0) free(value);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(val, 0, sizeof(xmlSchemaVal));
    val->type = type;
    val->value.str = (xmlChar *) value;

    xmlFree(val);
    if (value_len > 0) free(value);
    return 0;
}