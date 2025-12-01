#include <klee/klee.h>
#include "HTMLparser.h"
#include "tree.h"
#include "parser.h"

int main() {
    xmlChar URI_buf[32];
    xmlChar ExternalID_buf[32];
    int URI_len, ExternalID_len;
    
    klee_make_symbolic(&URI_len, sizeof(URI_len), "URI_len");
    klee_make_symbolic(&ExternalID_len, sizeof(ExternalID_len), "ExternalID_len");
    
    klee_assume(URI_len >= 0 && URI_len < 32);
    klee_assume(ExternalID_len >= 0 && ExternalID_len < 32);
    
    klee_make_symbolic(URI_buf, sizeof(URI_buf), "URI_buf");
    klee_make_symbolic(ExternalID_buf, sizeof(ExternalID_buf), "ExternalID_buf");
    
    xmlChar* URI = (URI_len > 0) ? URI_buf : NULL;
    xmlChar* ExternalID = (ExternalID_len > 0) ? ExternalID_buf : NULL;
    
    htmlDocPtr result = htmlNewDocNoDtD(URI, ExternalID);
    
    return 0;
}