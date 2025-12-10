#include <libxml/parser.h>
#include <libxml/debugXML.h>
#include <libxml/xmlmemory.h>
#include <libxml/valid.h>
#include <klee/klee.h>

int main(void) {
    xmlShellCtxtPtr ctxt;
    char *dtd;
    int dtd_len;

    // Initialize libxml2
    xmlInitParser();
    LIBXML_TEST_VERSION

    // Make ctxt symbolic (pointer)
    ctxt = (xmlShellCtxtPtr)malloc(sizeof(struct _xmlShellCtxt));
    klee_make_symbolic(ctxt, sizeof(struct _xmlShellCtxt), "ctxt");

    // Ensure ctxt is not NULL (to pass early check)
    if (ctxt == NULL) {
        free(ctxt);
        xmlCleanupParser();
        return 0;
    }

    // Make ctxt->doc symbolic (pointer)
    ctxt->doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    klee_make_symbolic(ctxt->doc, sizeof(xmlDoc), "doc");

    // Ensure ctxt->doc is not NULL (to pass early check)
    if (ctxt->doc == NULL) {
        free(ctxt->doc);
        free(ctxt);
        xmlCleanupParser();
        return 0;
    }

    // Make dtd symbolic (string)
    dtd_len = 10; // arbitrary length
    dtd = (char *)malloc(dtd_len + 1);
    klee_make_symbolic(dtd, dtd_len + 1, "dtd");
    dtd[dtd_len] = '\0'; // ensure null-terminated

    // Mark reachability before the target line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Call the target function
    xmlShellValidate(ctxt, dtd, NULL, NULL);

    // Cleanup
    free(dtd);
    free(ctxt->doc);
    free(ctxt);
    xmlCleanupParser();
    return 0;
}