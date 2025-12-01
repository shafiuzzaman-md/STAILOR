#include <klee/klee.h>
#include "HTMLtree.h"
#include "buf.h"
#include "tree.h"

int main() {
    // Initialize xmlBuffer
    xmlBufferPtr buf = xmlBufferCreate();
    if (buf == NULL) return -1;

    // Create symbolic document and node
    xmlDocPtr doc;
    xmlNodePtr cur;
    
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&cur, sizeof(cur), "cur");

    // Call entry function htmlNodeDump
    int result = htmlNodeDump(buf, doc, cur);

    // Cleanup
    xmlBufferFree(buf);
    return result;
}