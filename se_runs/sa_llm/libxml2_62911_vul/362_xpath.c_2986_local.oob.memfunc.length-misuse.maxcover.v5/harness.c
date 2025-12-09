#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlNodePtr symbolic_val;
    char input[1024];
    size_t input_len;

    klee_make_symbolic(&symbolic_val, sizeof(symbolic_val), "symbolic_val");
    klee_make_symbolic(input, sizeof(input), "input");
    klee_make_symbolic(&input_len, sizeof(input_len), "input_len");
    klee_assume(input_len < sizeof(input));
    input[input_len] = '\0';

    xmlInitParser();
    xmlDocPtr doc = xmlReadMemory(input, input_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlCleanupParser();
        return 0;
    }

    xmlXPathContextPtr ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        xmlCleanupParser();
        return 0;
    }

    xmlXPathObjectPtr result = xmlXPathEvalExpression((const xmlChar*)input, ctx);
    if (result != NULL && result->type == XPATH_NODESET && result->nodesetval != NULL && result->nodesetval->nodeNr > 0) {
        xmlNodePtr node = result->nodesetval->nodeTab[0];
        xmlNodeSetPtr nodeset = xmlXPathNodeSetCreate(node);
        if (nodeset != NULL) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            xmlXPathFreeNodeSet(nodeset);
        }
    }

    if (result != NULL) xmlXPathFreeObject(result);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}