#include <klee/klee.h>
#include "HTMLtree.h"
#include "buf.h"
#include "tree.h"

int main() {
    xmlBufferPtr buf = xmlBufferCreate();
    xmlDocPtr doc = xmlNewDoc((const xmlChar*)"1.0");
    xmlNodePtr root = xmlNewNode(NULL, (const xmlChar*)"html");
    xmlDocSetRootElement(doc, root);
    
    klee_make_symbolic(buf, sizeof(xmlBuffer), "buf");
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    klee_make_symbolic(root, sizeof(xmlNode), "root");
    
    int result = htmlNodeDump(buf, doc, root);
    
    xmlBufferFree(buf);
    xmlFreeDoc(doc);
    
    return 0;
}