#include <klee/klee.h>
#include "SAX2.c"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)xmlMalloc(sizeof(xmlParserCtxt));
    if (ctxt == NULL) return 1;
    
    // Initialize minimal context fields
    ctxt->freeElems = NULL;
    ctxt->freeElemsNr = 0;
    ctxt->dictNames = 0;
    ctxt->options = 0;
    ctxt->dict = NULL;
    
    // Symbolic inputs for xmlSAX2TextNode
    int len;
    xmlChar str_buf[100];
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    
    // Call the target function
    xmlSAX2TextNode(ctxt, str_buf, len);
    
    // Cleanup
    xmlFree(ctxt);
    
    return 0;
}