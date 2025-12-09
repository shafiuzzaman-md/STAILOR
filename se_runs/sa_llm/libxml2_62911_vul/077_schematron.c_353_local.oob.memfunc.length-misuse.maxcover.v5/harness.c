#include <libxml/xmlschemas.h>
#include <libxml/schematron.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchematronParserCtxtPtr ctxt;
    xmlSchematronPtr schematron = NULL;
    xmlDocPtr doc = NULL;
    const char* xml_data;
    int xml_size;

    xml_data = "<test/>";
    xml_size = strlen(xml_data);

    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    ctxt = xmlSchematronNewDocParserCtxt(doc);
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    schematron = xmlSchematronParse(ctxt);
    if (schematron == NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (schematron != NULL) {
        xmlSchematronFree(schematron);
    }
    xmlSchematronFreeParserCtxt(ctxt);
    xmlFreeDoc(doc);
    return 0;
}