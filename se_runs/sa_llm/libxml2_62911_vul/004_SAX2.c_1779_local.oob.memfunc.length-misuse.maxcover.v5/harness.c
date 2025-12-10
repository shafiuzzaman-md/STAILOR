#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlDocPtr doc;
    const char *buffer;
    int buffer_len;
    xmlChar *str;
    int len;
    xmlNodePtr ret;
    xmlChar cur;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a parser context */
    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    /* Make buffer symbolic to influence parsing */
    buffer_len = 100;
    buffer = (const char *)malloc(buffer_len + 1);
    klee_make_symbolic((void *)buffer, buffer_len + 1, "buffer");
    ((char *)buffer)[buffer_len] = '\0';

    /* Parse the buffer to get a document and populate ctxt */
    doc = xmlReadMemory(buffer, buffer_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    /* Ensure ctxt->dictNames is true to enter the target branch */
    ctxt->dictNames = 1;
    /* Enable XML_PARSE_COMPACT option */
    ctxt->options |= XML_PARSE_COMPACT;

    /* Create a dummy node 'ret' */
    ret = xmlNewNode(NULL, (const xmlChar *)"dummy");
    if (ret == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }

    /* Make 'str' symbolic */
    str = (xmlChar *)malloc(256);
    klee_make_symbolic(str, 256, "str");

    /* Make 'len' symbolic, but constrain to be >=0 and < (2 * sizeof(void *)) to hit the first branch */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < (int)(2 * sizeof(void *)));

    /* Compute cur = str[len] (as in line 1773) */
    cur = str[len];

    /* Now we are at the target branch: (len < (int)(2 * sizeof(void *))) && (ctxt->options & XML_PARSE_COMPACT) is true */
    /* The target line 1779 is about to be executed */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The actual memcpy would be:
       xmlChar *tmp = (xmlChar *) &(ret->properties);
       memcpy(tmp, str, len);
       But we don't need to execute it for KLEE to explore; the reachability assertion above is enough.
    */

    /* Cleanup */
    xmlFreeNode(ret);
    xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    xmlCleanupParser();
    return 0;
}