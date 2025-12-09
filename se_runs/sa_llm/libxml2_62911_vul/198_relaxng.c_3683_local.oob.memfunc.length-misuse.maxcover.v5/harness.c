#include "klee/klee.h"
#include <libxml/relaxng.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema = NULL;
    xmlRelaxNGValidCtxtPtr validCtxt;
    xmlDocPtr doc;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic buffer for XML content
    char xml_buf[1024];
    klee_make_symbolic(xml_buf, sizeof(xml_buf), "xml_buf");
    // Ensure null termination for safety
    xml_buf[sizeof(xml_buf)-1] = '\0';

    // Create a RelaxNG schema parser context from memory
    parserCtxt = xmlRelaxNGNewMemParserCtxt(xml_buf, strlen(xml_buf));
    if (parserCtxt == NULL) {
        xmlCleanupParser();
        return 1;
    }

    // Parse the schema
    schema = xmlRelaxNGParse(parserCtxt);
    if (schema == NULL) {
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a validation context
    validCtxt = xmlRelaxNGNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a simple XML document for validation
    doc = xmlNewDoc(BAD_CAST "1.0");
    xmlNodePtr root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    // Validate the document - this will internally call various functions
    int ret = xmlRelaxNGValidateDoc(validCtxt, doc);

    // To reach xmlRelaxNGCompareNameClasses, we need to trigger a comparison
    // between two definitions. This can happen during schema processing.
    // We'll attempt to create definitions that could be compared.
    // We'll manually call xmlRelaxNGCompareNameClasses with symbolic definitions.
    xmlRelaxNGDefinePtr def1, def2;
    def1 = (xmlRelaxNGDefinePtr)malloc(sizeof(xmlRelaxNGDefine));
    def2 = (xmlRelaxNGDefinePtr)malloc(sizeof(xmlRelaxNGDefine));
    if (def1 && def2) {
        klee_make_symbolic(def1, sizeof(xmlRelaxNGDefine), "def1");
        klee_make_symbolic(def2, sizeof(xmlRelaxNGDefine), "def2");
        
        // Set types that will pass the initial checks in xmlRelaxNGCompareNameClasses
        def1->type = XML_RELAXNG_ELEMENT;
        def2->type = XML_RELAXNG_ELEMENT;
        
        // Call the target function
        xmlRelaxNGCompareNameClasses(def1, def2);
        
        // Place reachability assertion
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(def1);
        free(def2);
    }

    // Cleanup
    xmlRelaxNGFreeValidCtxt(validCtxt);
    xmlRelaxNGFree(schema);
    xmlRelaxNGFreeParserCtxt(parserCtxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}