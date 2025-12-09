#include "klee/klee.h"
#include <libxml/xmlreader.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>

int main(void) {
    char *xml_data;
    int xml_size;
    xmlTextReaderPtr reader;
    xmlParserInputBufferPtr input;
    xmlParserCtxtPtr ctxt;

    xml_data = malloc(100);
    if (!xml_data) return 0;
    klee_make_symbolic(xml_data, 100, "xml_data");
    xml_size = 100;
    klee_make_symbolic(&xml_size, sizeof(xml_size), "xml_size");

    ctxt = xmlCreateMemoryParserCtxt(xml_data, xml_size);
    if (!ctxt) {
        free(xml_data);
        return 0;
    }

    input = xmlNewIOInputStream(ctxt, NULL, 0);
    if (!input) {
        xmlFreeParserCtxt(ctxt);
        free(xml_data);
        return 0;
    }

    reader = xmlNewTextReader(input, NULL);
    if (reader) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeTextReader(reader);
    } else {
        xmlFreeParserInputBuffer(input);
    }

    xmlFreeParserCtxt(ctxt);
    free(xml_data);
    return 0;
}