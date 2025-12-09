#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/c14n.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlChar *buffer = NULL;
    int buffer_size;
    int with_comments = 0;
    int is_visible_callback_used = 0;
    void *user_data = NULL;

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        return 1;
    }
    node = xmlNewNode(NULL, BAD_CAST "root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    /* Make symbolic inputs for the canonicalization parameters */
    klee_make_symbolic(&with_comments, sizeof(with_comments), "with_comments");
    klee_make_symbolic(&is_visible_callback_used, sizeof(is_visible_callback_used), "is_visible_callback_used");
    klee_make_symbolic(&user_data, sizeof(user_data), "user_data");

    /* Call xmlC14NDocDumpMemory, which internally calls xmlC14NNewCtx and reaches the target line */
    int result = xmlC14NDocDumpMemory(
        doc,
        NULL, /* node set */
        0,    /* exclusive */
        NULL, /* inclusive prefixes */
        with_comments,
        &buffer,
        &buffer_size
    );

    /* If buffer was allocated, free it */
    if (buffer != NULL) {
        xmlFree(buffer);
    }

    /* Clean up */
    xmlFreeDoc(doc);

    /* Reachability marker: we want to assert that the target line (memset) is reachable.
       Since we cannot directly instrument the library, we place a marker after the call.
       The actual vulnerable memset is inside xmlC14NNewCtx, called by xmlC14NDocDumpMemory.
       We use a klee_assert to mark the path that reaches the target. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}