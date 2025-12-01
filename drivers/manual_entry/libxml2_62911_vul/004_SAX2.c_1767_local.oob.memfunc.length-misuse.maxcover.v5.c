#include <klee/klee.h>
#include "SAX2.c"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt;
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    // Initialize string parameters
    xmlChar str[100];
    int len;
    
    klee_make_symbolic(&str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Constrain len to reasonable bounds
    klee_assume(len >= 0);
    klee_assume(len < 100);
    
    // Call the target function
    xmlSAX2TextNode(ctxt, str, len);
    
    return 0;
}