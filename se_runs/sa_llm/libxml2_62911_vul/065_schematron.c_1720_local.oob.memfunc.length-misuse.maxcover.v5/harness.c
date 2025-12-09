#include <libxml/xmlschemas.h>
#include <libxml/schematron.h>
#include <klee/klee.h>

int main(void) {
    xmlSchematronSchemaPtr schema;
    int options;

    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(&options, sizeof(options), "options");

    if (schema == NULL) {
        return 0;
    }

    xmlSchematronValidCtxtPtr ctxt = xmlSchematronNewValidCtxt(schema, options);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchematronFreeValidCtxt(ctxt);
    }

    return 0;
}