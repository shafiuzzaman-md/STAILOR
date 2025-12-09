#include <libxml/parser.h>
#include <libxml/xinclude.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXIncludeCtxtPtr ctxt;

    // Create a symbolic XML document content
    char xml_content[1024];
    int xml_len;
    klee_make_symbolic(xml_content, sizeof(xml_content), "xml_content");
    klee_make_symbolic(&xml_len, sizeof(xml_len), "xml_len");
    // Constrain length to be within buffer and non-negative
    klee_assume(xml_len >= 0 && xml_len < (int)sizeof(xml_content));
    xml_content[xml_len] = '\0';

    // Parse the document
    doc = xmlReadMemory(xml_content, xml_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        // If parsing fails, we cannot reach the target line
        return 0;
    }

    // Create XInclude context - this calls xmlXIncludeNewContext
    ctxt = xmlXIncludeNewContext(doc);
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    // The target line 295 is inside xmlXIncludeNewContext.
    // To reach it, we need to ensure the allocation succeeds.
    // We place the reachability assertion after the call, as the
    // vulnerable memset occurs inside that function.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlXIncludeFreeContext(ctxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}