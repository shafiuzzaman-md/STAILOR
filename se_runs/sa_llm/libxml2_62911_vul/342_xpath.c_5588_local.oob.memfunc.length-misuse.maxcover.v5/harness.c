#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr xpathCtx;
    xmlXPathObjectPtr xpathObj;
    xmlChar *xpathExpr;
    size_t expr_len;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a minimal XML document in memory */
    const char *xml_content = "<root><a>1</a><b>2</b></root>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    /* Create XPath context */
    xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Make symbolic XPath expression */
    expr_len = 100;
    xpathExpr = (xmlChar *)malloc(expr_len + 1);
    klee_make_symbolic(xpathExpr, expr_len + 1, "xpathExpr");
    xpathExpr[expr_len] = '\0'; /* ensure null termination */

    /* Evaluate XPath expression - this will internally call xmlXPathCompParserContext */
    xpathObj = xmlXPathEvalExpression(xpathExpr, xpathCtx);

    /* If evaluation succeeded, free the result */
    if (xpathObj != NULL) {
        xmlXPathFreeObject(xpathObj);
    }

    /* Cleanup */
    free(xpathExpr);
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    /* Reachability marker for the target line (xpath.c:5588) */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}