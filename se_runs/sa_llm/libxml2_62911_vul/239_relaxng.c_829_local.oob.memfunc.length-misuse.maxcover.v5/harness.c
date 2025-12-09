#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema;
    xmlDocPtr doc;
    int ret;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic buffer for the RelaxNG schema
    char schema_buf[1024];
    size_t schema_size = sizeof(schema_buf);
    klee_make_symbolic(schema_buf, sizeof(schema_buf), "schema_buf");
    // Ensure null-termination for safety
    schema_buf[sizeof(schema_buf)-1] = 0;

    // Create a RelaxNG parser context from memory
    parserCtxt = xmlRelaxNGNewMemParserCtxt(schema_buf, schema_size);
    if (parserCtxt == NULL) {
        xmlCleanupParser();
        return 1;
    }

    // Parse the schema, which internally may call xmlRelaxNGNewGrammar
    schema = xmlRelaxNGParse(parserCtxt);
    if (schema == NULL) {
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a symbolic XML document for validation
    char doc_buf[512];
    size_t doc_size = sizeof(doc_buf);
    klee_make_symbolic(doc_buf, sizeof(doc_buf), "doc_buf");
    doc_buf[sizeof(doc_buf)-1] = 0;

    doc = xmlReadMemory(doc_buf, doc_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a validation context
    xmlRelaxNGValidCtxtPtr validCtxt = xmlRelaxNGNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlFreeDoc(doc);
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Validate the document - this may trigger the grammar allocation path
    ret = xmlRelaxNGValidateDoc(validCtxt, doc);

    // Place reachability marker for line 829 (memset in xmlRelaxNGNewGrammar)
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRelaxNGFreeValidCtxt(validCtxt);
    xmlFreeDoc(doc);
    xmlRelaxNGFree(schema);
    xmlRelaxNGFreeParserCtxt(parserCtxt);
    xmlCleanupParser();

    return 0;
}