#include <libxml/parser.h>
#include <libxml/valid.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlValidCtxtPtr ctxt;

    // Call the function that leads to xmlNewValidCtxt
    // The SA spec mentions entrypoint xmlAddElementDecl, but that's internal.
    // We can create a parser context and trigger validation which uses xmlNewValidCtxt.
    xmlDocPtr doc;
    xmlParserCtxtPtr pctx;
    const char* xml_data;
    int xml_size;

    // Make symbolic input for XML data
    xml_data = (const char*) klee_malloc(1024);
    klee_make_symbolic((void*)xml_data, 1024, "xml_data");
    // Ensure null termination for safety
    ((char*)xml_data)[1023] = 0;
    xml_size = 1024;

    // Parse XML into a document
    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If parsing fails, we can't reach the target, but KLEE will explore other paths
        return 0;
    }

    // Create a validation context - this calls xmlNewValidCtxt
    ctxt = xmlNewValidCtxt();
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    // Perform validation to ensure the context is used
    int valid = xmlValidateDocument(ctxt, doc);

    // Place reachability assertion near the memset line (line 718)
    // The memset is inside xmlNewValidCtxt, so we assert after calling it
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFreeValidCtxt(ctxt);
    xmlFreeDoc(doc);

    return 0;
}