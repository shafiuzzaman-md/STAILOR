#include <klee/klee.h>
#include "SAX2.c"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) return 1;
    
    // Initialize dictNames to trigger the vulnerable path
    ctxt->dictNames = 1;
    ctxt->options = XML_PARSE_COMPACT;
    
    // Make symbolic inputs for the vulnerable function
    int len;
    xmlChar str_buf[16];  // Buffer for string data
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    
    // Call the vulnerable function
    xmlSAX2TextNode(ctxt, str_buf, len);
    
    // Cleanup
    xmlFreeParserCtxt(ctxt);
    return 0;
}