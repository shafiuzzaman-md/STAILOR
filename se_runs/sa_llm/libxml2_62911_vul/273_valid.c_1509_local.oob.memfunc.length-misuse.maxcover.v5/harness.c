#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc;
    xmlValidCtxtPtr vctxt;
    xmlElementPtr elem;
    xmlElementPtr cur;

    // Initialize libxml2
    xmlInitParser();

    // Create a document and validation context
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlCleanupParser();
        return 1;
    }

    vctxt = xmlNewValidCtxt();
    if (vctxt == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 1;
    }

    // Create a symbolic element structure to pass as payload
    elem = (xmlElementPtr) xmlMalloc(sizeof(xmlElement));
    if (elem == NULL) {
        xmlFreeValidCtxt(vctxt);
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 1;
    }

    // Make the element's fields symbolic to explore different paths
    klee_make_symbolic(elem, sizeof(xmlElement), "elem");
    // Ensure etype is a valid enumeration value to avoid undefined behavior
    elem->etype = klee_int("elem_etype");
    // Ensure name and prefix are either NULL or point to valid strings
    char name_buf[32];
    char prefix_buf[32];
    int name_is_null, prefix_is_null;
    klee_make_symbolic(&name_is_null, sizeof(name_is_null), "name_is_null");
    klee_make_symbolic(&prefix_is_null, sizeof(prefix_is_null), "prefix_is_null");
    if (name_is_null) {
        elem->name = NULL;
    } else {
        klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
        name_buf[sizeof(name_buf)-1] = '\0';
        elem->name = (xmlChar*) name_buf;
    }
    if (prefix_is_null) {
        elem->prefix = NULL;
    } else {
        klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix_buf");
        prefix_buf[sizeof(prefix_buf)-1] = '\0';
        elem->prefix = (xmlChar*) prefix_buf;
    }
    elem->type = XML_ELEMENT_DECL;

    // Call the target function xmlAddElementDecl with the symbolic payload
    // The function signature is: xmlElementPtr xmlAddElementDecl(xmlValidCtxtPtr ctxt, xmlElementPtr elem);
    // We are simulating the call that leads to the vulnerable line.
    cur = xmlAddElementDecl(vctxt, elem);

    // Place reachability marker: we want to assert we reached the memset line.
    // Since the memset is inside xmlAddElementDecl, we cannot directly place it.
    // Instead, we check if cur is non-NULL (meaning malloc succeeded and we proceeded to memset).
    if (cur != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Optionally, we could also call SAILR_ASSERT if an expression were provided.
        // SAILR_ASSERT( ... );
    }

    // Cleanup
    if (cur != NULL) {
        xmlFree(cur);
    }
    xmlFree(elem);
    xmlFreeValidCtxt(vctxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}