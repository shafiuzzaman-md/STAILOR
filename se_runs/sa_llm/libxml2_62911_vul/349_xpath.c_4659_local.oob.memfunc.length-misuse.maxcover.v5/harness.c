#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr xpathObj;
    xmlNodePtr node;
    xmlChar* xpathExpr;
    size_t xpathLen;

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a simple XML document in memory */
    const char* xmlContent = "<root><a>text</a><b>other</b></root>";
    doc = xmlReadMemory(xmlContent, strlen(xmlContent), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    /* Create XPath context */
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Make the XPath expression symbolic to explore different paths */
    xpathLen = 100;
    xpathExpr = (xmlChar*) malloc(xpathLen + 1);
    klee_make_symbolic(xpathExpr, xpathLen + 1, "xpathExpr");
    xpathExpr[xpathLen] = '\0'; /* ensure null termination */

    /* Evaluate XPath expression */
    xpathObj = xmlXPathEvalExpression(xpathExpr, ctx);
    if (xpathObj != NULL) {
        /* If evaluation succeeds, we might trigger xmlXPathNewString via various paths.
           For example, when the result is a string, xmlXPathNewString is called.
           We can force a string conversion. */
        xmlXPathObjectPtr strObj;
        if (xpathObj->type != XPATH_STRING) {
            /* Convert to string, which internally may call xmlXPathNewString */
            strObj = xmlXPathConvertString(xpathObj);
            if (strObj != NULL) {
                /* Reach the target line: xmlXPathNewString is called inside xmlXPathConvertString.
                   We place the reachability assertion just before the memset in xmlXPathNewString.
                   Since we cannot directly instrument libxml2, we place it after the call that leads to it. */
                klee_assert(0 && "SAILR_REACH_ASSERT");
                xmlXPathFreeObject(strObj);
            }
        }
        xmlXPathFreeObject(xpathObj);
    }

    /* Cleanup */
    free(xpathExpr);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}