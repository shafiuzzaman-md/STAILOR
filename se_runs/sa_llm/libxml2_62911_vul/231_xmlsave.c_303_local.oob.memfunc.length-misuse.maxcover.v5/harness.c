#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSaveCtxtPtr ctxt;
    xmlDocPtr doc;
    xmlNodePtr root;
    char *buffer;
    int size;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    /* Make xmlTreeIndentString symbolic to influence len and indent_size */
    char indent_str[256];
    klee_make_symbolic(indent_str, sizeof(indent_str), "indent_str");
    /* Ensure it is null-terminated for safety */
    indent_str[255] = 0;
    xmlTreeIndentString = indent_str;

    /* Create a save context with a buffer */
    ctxt = xmlSaveToBuffer(NULL, NULL, 0);
    if (ctxt == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 1;
    }

    /* The target line is inside xmlSaveCtxtInit (called by xmlSaveToBuffer).
       We need to trigger the else branch where xmlTreeIndentString is not NULL and len > 0.
       The loop at line 303 will be executed if indent_nr > 0.
       We add a reachability marker and an assertion to check the OOB condition. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Perform a save operation to drive the initialization */
    xmlSaveDoc(ctxt, doc);
    xmlSaveClose(ctxt);

    /* Cleanup */
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}