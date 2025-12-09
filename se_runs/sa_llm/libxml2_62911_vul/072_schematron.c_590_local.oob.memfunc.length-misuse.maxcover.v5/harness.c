#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/schematron.h>
#include <string.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schema;
    char *xml_data;
    int xml_size;

    xml_data = (char *)klee_make_symbolic(&xml_size, sizeof(xML_size), "xml_size");
    xml_size = klee_int("xml_size");
    klee_assume(xml_size >= 0);
    klee_assume(xml_size < 1024);

    xml_data = (char *)malloc(xml_size + 1);
    klee_make_symbolic(xml_data, xml_size + 1, "xml_data");
    xml_data[xml_size] = '\0';

    ctxt = xmlSchematronNewParserCtxt((const char *)xml_data);
    if (ctxt == NULL) {
        free(xml_data);
        return 0;
    }

    schema = xmlSchematronParse(ctxt);
    if (schema != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchematronFree(schema);
    }

    xmlSchematronFreeParserCtxt(ctxt);
    free(xml_data);
    return 0;
}