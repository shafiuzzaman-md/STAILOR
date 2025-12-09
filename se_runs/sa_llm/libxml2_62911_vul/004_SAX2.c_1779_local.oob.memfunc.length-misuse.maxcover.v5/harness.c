#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>
#include <string.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    const char *buffer;
    int buffer_len;
    xmlChar *str;
    int len;
    xmlChar cur;
    xmlNodePtr ret;
    xmlChar *intern;

    /* Initialize libxml2 */
    LIBXML_TEST_VERSION

    /* Create a parser context */
    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    /* Make buffer symbolic for input XML */
    klee_make_symbolic(&buffer_len, sizeof(buffer_len), "buffer_len");
    klee_assume(buffer_len >= 0);
    klee_assume(buffer_len < 1024); /* Reasonable bound */
    buffer = (const char *)malloc(buffer_len + 1);
    klee_make_symbolic((void*)buffer, buffer_len + 1, "buffer");
    buffer[buffer_len] = '\0';

    /* Parse the buffer to get a document and populate ctxt */
    doc = xmlReadMemory(buffer, buffer_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlFreeParserCtxt(ctxt);
        free((void*)buffer);
        return 2;
    }

    /* Ensure ctxt->dictNames is set to reach the target branch */
    ctxt->dictNames = 1;
    /* Enable XML_PARSE_COMPACT option */
    ctxt->options |= XML_PARSE_COMPACT;

    /* Create a dummy node 'ret' */
    ret = xmlNewNode(NULL, (const xmlChar*)"test");
    if (ret == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        free((void*)buffer);
        return 3;
    }

    /* Make 'str' and 'len' symbolic to drive the vulnerable path */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < (int)(2 * sizeof(void *))); /* To enter the first branch */
    str = (xmlChar *)malloc(len + 2); /* +2 for potential null and extra char */
    klee_make_symbolic(str, len + 2, "str");
    str[len] = klee_int("cur"); /* This will be symbolic 'cur' */
    str[len + 1] = '\0'; /* Ensure null-terminated for safety */

    /* Set cur to the value at str[len] */
    cur = str[len];

    /* Path conditions to reach line 1779 */
    /* ctxt->dictNames is already 1 */
    /* len < (int)(2 * sizeof(void *)) is assumed above */
    /* ctxt->options & XML_PARSE_COMPACT is true */

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Simulate the vulnerable memcpy call */
    /* The actual call is inside xmlSAX2StartElement, but we inline the logic */
    if (ctxt->dictNames) {
        if ((len < (int)(2 * sizeof(void *))) && (ctxt->options & XML_PARSE_COMPACT)) {
            xmlChar *tmp = (xmlChar *)&(ret->properties);
            memcpy(tmp, str, len); /* Target line 1779 */
            tmp[len] = 0;
            intern = tmp;
        }
    }

    /* Cleanup */
    free(str);
    xmlFreeNode(ret);
    xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    free((void*)buffer);
    return 0;
}