#include <klee/klee.h>
#include "c14n.c"
#include "tree.h"
#include "xmlIO.h"

int main() {
    // Initialize minimal XML document
    xmlDocPtr doc = xmlNewDoc((const xmlChar*)"1.0");
    xmlNodePtr root = xmlNewNode(NULL, (const xmlChar*)"root");
    xmlDocSetRootElement(doc, root);

    // Initialize output buffer
    xmlOutputBufferPtr buf = xmlAllocOutputBuffer(NULL);
    if (buf == NULL) return -1;

    // Make callback parameters symbolic
    void* user_data;
    klee_make_symbolic(&user_data, sizeof(user_data), "user_data");
    
    // Make mode symbolic but constrain to valid values
    int mode;
    klee_make_symbolic(&mode, sizeof(mode), "mode");
    klee_assume(mode == XML_C14N_1_0 || mode == XML_C14N_EXCLUSIVE_1_0 || mode == XML_C14N_1_1);

    // Make with_comments symbolic
    int with_comments;
    klee_make_symbolic(&with_comments, sizeof(with_comments), "with_comments");

    // Create symbolic inclusive namespace prefixes array
    xmlChar* inclusive_ns_prefixes[2];
    klee_make_symbolic(inclusive_ns_prefixes, sizeof(inclusive_ns_prefixes), "inclusive_ns_prefixes");
    inclusive_ns_prefixes[1] = NULL; // Ensure NULL termination

    // Call the entry function
    int result = xmlC14NExecute(doc, NULL, user_data, mode, inclusive_ns_prefixes, with_comments, buf);

    // Cleanup
    xmlFreeDoc(doc);
    xmlOutputBufferClose(buf);

    return 0;
}