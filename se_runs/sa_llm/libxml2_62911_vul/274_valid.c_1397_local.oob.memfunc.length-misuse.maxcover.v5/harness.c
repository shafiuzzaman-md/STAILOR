#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/xmlerror.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlValidCtxtPtr ctxt;
    xmlChar* name;
    xmlChar* prefix;
    xmlElementTypeVal type;
    xmlElementContentPtr content;
    xmlAttributePtr attrs;

    ctxt = (xmlValidCtxtPtr) malloc(sizeof(xmlValidCtxt));
    if (ctxt == NULL) return 0;
    klee_make_symbolic(ctxt, sizeof(xmlValidCtxt), "ctxt");

    name = (xmlChar*) malloc(10);
    if (name == NULL) {
        free(ctxt);
        return 0;
    }
    klee_make_symbolic(name, 10, "name");
    name[9] = '\0';

    prefix = (xmlChar*) malloc(10);
    if (prefix == NULL) {
        free(name);
        free(ctxt);
        return 0;
    }
    klee_make_symbolic(prefix, 10, "prefix");
    prefix[9] = '\0';

    klee_make_symbolic(&type, sizeof(xmlElementTypeVal), "type");
    content = NULL;
    attrs = NULL;

    xmlElementPtr ret = xmlAddElementDecl(ctxt, name, prefix, type, content, attrs);

    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    free(prefix);
    free(name);
    free(ctxt);
    return 0;
}