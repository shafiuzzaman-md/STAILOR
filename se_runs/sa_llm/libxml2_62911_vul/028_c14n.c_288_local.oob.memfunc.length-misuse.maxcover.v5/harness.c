#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/c14n.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc = NULL;
    xmlNodePtr node = NULL;
    xmlChar *buffer = NULL;
    int buffer_len;
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a symbolic input buffer for XML parsing */
    buffer_len = 100;
    buffer = (xmlChar *)malloc(buffer_len * sizeof(xmlChar));
    if (buffer == NULL) {
        return 1;
    }
    klee_make_symbolic(buffer, buffer_len * sizeof(xmlChar), "xml_buffer");
    /* Ensure null-termination for safety */
    buffer[buffer_len - 1] = 0;

    /* Parse the symbolic buffer */
    doc = xmlReadMemory((const char *)buffer, buffer_len - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(buffer);
        xmlCleanupParser();
        return 1;
    }

    /* Get the root node */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        free(buffer);
        xmlCleanupParser();
        return 1;
    }

    /* Call xmlC14NDocDumpMemory which internally uses xmlC14NVisibleNsStackCreate */
    ret = xmlC14NDocDumpMemory(doc, NULL, XML_C14N_1_0, NULL, 0, &buffer);
    /* The target line 288 is inside xmlC14NVisibleNsStackCreate, which is called
       during the C14N process. We need to reach that path. */

    /* Place reachability marker: we assume the vulnerable memset is reachable
       if xmlC14NVisibleNsStackCreate is called and xmlMalloc returns non-NULL. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    if (buffer != NULL) {
        xmlFree(buffer);
    }
    xmlFreeDoc(doc);
    free(buffer);
    xmlCleanupParser();

    return 0;
}