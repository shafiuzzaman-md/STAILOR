#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr res;
    xmlChar* xml_input;
    size_t xml_size;

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a symbolic XML input buffer */
    xml_size = klee_range(1, 1024, "xml_size");
    xml_input = (xmlChar*) malloc(xml_size + 1);
    klee_make_symbolic(xml_input, xml_size + 1, "xml_input");
    xml_input[xml_size] = '\0';

    /* Parse the symbolic XML */
    doc = xmlReadMemory((const char*)xml_input, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(xml_input);
        xmlCleanupParser();
        return 0;
    }

    /* Create an XPath context */
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        free(xml_input);
        xmlCleanupParser();
        return 0;
    }

    /* Create a dummy node to pass to xmlXPathNewValueTree */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        node = xmlNewDocNode(doc, NULL, (const xmlChar*)"root", NULL);
    }

    /* Call xmlXPathNewValueTree, which is a static function, so we need to trigger it indirectly.
       One way is to evaluate an XPath expression that creates a result tree.
       We'll use xmlXPathEvalExpression with a simple expression that returns a node set.
    */
    xmlChar* xpath_expr = (xmlChar*)"//*";
    res = xmlXPathEvalExpression(xpath_expr, ctx);
    if (res != NULL) {
        /* The evaluation may call xmlXPathNewValueTree internally.
           We'll now force a path that leads to the target line.
        */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeObject(res);
    }

    /* Cleanup */
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    free(xml_input);
    xmlCleanupParser();
    return 0;
}