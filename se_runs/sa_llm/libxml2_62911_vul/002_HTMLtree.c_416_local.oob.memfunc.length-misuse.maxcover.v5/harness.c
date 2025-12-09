#include <libxml/HTMLtree.h>
#include <libxml/xmlmemory.h>
#include <libxml/xmlIO.h>
#include <libxml/encoding.h>
#include <klee/klee.h>

int main(void) {
    const char* html_content;
    int html_size;
    htmlDocPtr doc;
    xmlChar* encoding;

    klee_make_symbolic(&html_content, sizeof(html_content), "html_content");
    klee_make_symbolic(&html_size, sizeof(html_size), "html_size");
    klee_assume(html_size >= 0);
    klee_assume(html_size < 1024);

    doc = htmlReadMemory(html_content, html_size, NULL, NULL, HTML_PARSE_RECOVER | HTML_PARSE_NOERROR | HTML_PARSE_NOWARNING);
    if (doc == NULL) {
        return 0;
    }

    encoding = htmlGetMetaEncoding(doc);
    xmlFreeDoc(doc);
    if (encoding != NULL) {
        xmlFree(encoding);
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}