/* KLEE harness for libxml2
 * Entrypoint: xmlReadMemory()
 * Reason: xmlReadMemory() is a high-level API that parses XML directly from an
 * in-memory buffer. It's commonly used by applications to parse untrusted XML
 * data, handles encoding detection, and supports parser options. This makes it
 * an ideal entrypoint for symbolic analysis of libxml2's parsing logic.
 */

#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>

#define BUFFER_SIZE 1024

int main() {
    /* Initialize libxml2 */
    xmlInitParser();
    
    /* Symbolic input buffer and length */
    char buf[BUFFER_SIZE];
    int len;
    
    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Constrain length to valid range */
    klee_assume(len >= 0 && len < BUFFER_SIZE);
    
    /* Ensure null termination at specified length */
    buf[len] = '\0';
    
    /* Parse XML from symbolic buffer */
    xmlDocPtr doc = xmlReadMemory(buf, len, "noname.xml", NULL, 0);
    
    /* Clean up if document was created */
    if (doc != NULL) {
        xmlFreeDoc(doc);
    }
    
    /* Cleanup libxml2 */
    xmlCleanupParser();
    
    return 0;
}
