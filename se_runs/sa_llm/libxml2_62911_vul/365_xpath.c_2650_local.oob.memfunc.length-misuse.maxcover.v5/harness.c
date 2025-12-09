#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj1, obj2;
    xmlNodePtr node1, node2;
    xmlChar buffer[256];
    int buffersize;
    int size;
    char work[256];

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a minimal XML document */
    const char* xml_content = "<root><a/><b/></root>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    /* Create XPath context */
    ctx = xmlXPathNewContext(doc);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    /* Get two nodes to compare */
    obj1 = xmlXPathEvalExpression((const xmlChar*)"//a", ctx);
    obj2 = xmlXPathEvalExpression((const xmlChar*)"//b", ctx);
    if (obj1 == NULL || obj2 == NULL || obj1->type != XPATH_NODESET || obj2->type != XPATH_NODESET ||
        obj1->nodesetval == NULL || obj2->nodesetval == NULL ||
        obj1->nodesetval->nodeNr == 0 || obj2->nodesetval->nodeNr == 0) {
        xmlXPathFreeObject(obj1);
        xmlXPathFreeObject(obj2);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        return 1;
    }

    node1 = obj1->nodesetval->nodeTab[0];
    node2 = obj2->nodesetval->nodeTab[0];

    /* Make buffersize symbolic to explore different sizes */
    klee_make_symbolic(&buffersize, sizeof(buffersize), "buffersize");
    /* Constrain buffersize to be within reasonable bounds for the work array */
    klee_assume(buffersize >= 0);
    klee_assume(buffersize <= 256);

    /* Make work array contents symbolic to influence strlen(work) */
    klee_make_symbolic(work, sizeof(work), "work");
    /* Ensure work is null-terminated to avoid unbounded strlen */
    work[255] = '\0';

    /* Simulate the code path leading to the target memmove */
    size = strlen(work) + 1;
    if (size > buffersize) {
        work[buffersize - 1] = 0;
        size = buffersize;
    }

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The vulnerable memmove call */
    memmove(buffer, work, size);

    /* Cleanup */
    xmlXPathFreeObject(obj1);
    xmlXPathFreeObject(obj2);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}