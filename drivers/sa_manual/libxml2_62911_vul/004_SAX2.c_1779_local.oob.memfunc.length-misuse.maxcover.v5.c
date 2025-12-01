#include <klee/klee.h>
#include "SAX2.c"

int main() {
    xmlParserCtxt ctxt;
    xmlNode node;
    xmlChar str_buf[64];
    int len;
    
    // Initialize parser context
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    ctxt.freeElems = NULL;
    ctxt.freeElemsNr = 0;
    ctxt.dictNames = 1;
    ctxt.options = XML_PARSE_COMPACT;
    ctxt.dict = NULL;
    
    // Initialize node
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Make string buffer and length symbolic
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Constrain length to be reasonable but potentially problematic
    klee_assume(len >= 0);
    klee_assume(len < 64);
    
    // Call the target function
    xmlSAX2TextNode(&ctxt, str_buf, len);
    
    // Assertion for the suspicious memcpy at line 1779
    // Check that len doesn't exceed the size of the properties field
    klee_assert(len <= sizeof(node.properties));
    
    return 0;
}