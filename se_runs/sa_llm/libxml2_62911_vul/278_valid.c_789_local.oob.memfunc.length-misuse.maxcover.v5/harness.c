#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>

int main(void) {
    xmlChar* name;
    int type;
    xmlElementContentPtr ret;

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&type, sizeof(type), "type");

    if (name != NULL) {
        klee_assume(name[0] != 0);
    }

    xmlDocPtr doc = xmlNewDoc(BAD_CAST "1.0");
    xmlDtdPtr dtd = xmlNewDtd(doc, BAD_CAST "root", NULL, NULL);
    xmlNodePtr root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    xmlValidCtxtPtr vctxt = xmlNewValidCtxt();

    ret = xmlAddElementDecl(vctxt, dtd, name, type);

    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeValidCtxt(vctxt);
    xmlFreeDoc(doc);
    return 0;
}