#include <klee/klee.h>
#include "SAX2.c"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)xmlMalloc(sizeof(xmlParserCtxt));
    if (ctxt == NULL) return 1;
    
    // Initialize minimal required fields
    ctxt->dictNames = 1;
    ctxt->options = XML_PARSE_COMPACT;
    ctxt->dict = xmlDictCreate();
    
    // Create symbolic input buffer
    xmlChar str[16];
    int len;
    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Constrain len to reasonable bounds for the vulnerability
    klee_assume(len >= 0);
    klee_assume(len < 16);
    
    // Create node structure
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    if (node == NULL) return 1;
    
    // Set up context for the vulnerable path
    ctxt->freeElems = NULL;
    ctxt->freeElemsNr = 0;
    
    // Call the target function
    xmlSAX2TextNode(ctxt, str, len);
    
    // Cleanup
    xmlFree(ctxt);
    xmlFree(node);
    xmlDictFree(ctxt->dict);
    
    return 0;
}