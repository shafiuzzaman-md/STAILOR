#include <klee/klee.h>
#include "SAX2.c"
#include "parser.h"
#include "tree.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt;
    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) return 1;

    // Make symbolic inputs for xmlSAX2TextNode
    const xmlChar *str;
    int len;
    
    // Allocate buffer for symbolic string
    #define MAX_STR_LEN 100
    char str_buf[MAX_STR_LEN];
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    str = (const xmlChar *)str_buf;
    
    // Make length symbolic
    klee_make_symbolic(&len, sizeof(len), "len");
    // Constrain length to reasonable bounds
    klee_assume(len >= 0);
    klee_assume(len < MAX_STR_LEN);
    
    // Call the target function
    xmlSAX2TextNode(ctxt, str, len);
    
    // Cleanup
    if (ctxt != NULL) {
        xmlFreeParserCtxt(ctxt);
    }
    
    return 0;
}