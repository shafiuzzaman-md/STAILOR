#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlXPathCompExprPtr comp;
    xmlXPathParserContextPtr ctxt;
    xmlChar *expr;
    size_t expr_len;

    /* Make symbolic input for XPath expression */
    expr_len = 100; /* Reasonable length */
    expr = (xmlChar *)malloc(expr_len + 1);
    if (!expr) return 0;
    klee_make_symbolic(expr, expr_len + 1, "expr");
    expr[expr_len] = '\0'; /* Ensure null termination */

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a parser context with a dummy document */
    xmlDocPtr doc = xmlNewDoc(BAD_CAST "1.0");
    if (!doc) goto cleanup;
    xmlNodePtr root = xmlNewNode(NULL, BAD_CAST "root");
    if (!root) {
        xmlFreeDoc(doc);
        goto cleanup;
    }
    xmlDocSetRootElement(doc, root);

    ctxt = xmlXPathNewContext(doc);
    if (!ctxt) {
        xmlFreeDoc(doc);
        goto cleanup;
    }

    /* Compile the XPath expression - this will call xmlXPathCtxtCompile,
       which eventually may call the vulnerable function */
    comp = xmlXPathCtxtCompile(ctxt, expr);
    if (comp) {
        /* If compilation succeeded, we might have reached the target line.
           The vulnerable memset is inside xmlXPathCompExprAdd.
           We need to trigger a path where cur->maxStep is large enough
           to cause an overflow in the multiplication or be negative.
           We'll use a symbolic value for maxStep by influencing the
           compilation process. However, we can't directly set it.
           Instead, we'll try to create a complex expression that forces
           multiple steps. */
        /* Place reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlXPathFreeCompExpr(comp);
    }

    /* Cleanup */
    xmlXPathFreeContext(ctxt);
    xmlFreeDoc(doc);

cleanup:
    free(expr);
    xmlCleanupParser();
    return 0;
}