#include <libxml/HTMLparser.h>
#include <libxml/globals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    const char* html_content;
    int html_size;
    htmlDocPtr doc;

    /* Make the input buffer symbolic */
    klee_make_symbolic(&html_size, sizeof(html_size), "html_size");
    /* Ensure size is reasonable for KLEE exploration */
    if (html_size < 0) html_size = 0;
    if (html_size > 1024) html_size = 1024;

    html_content = (const char*)malloc(html_size + 1);
    klee_make_symbolic((void*)html_content, html_size + 1, "html_content");
    /* Null-terminate to avoid parser issues */
    ((char*)html_content)[html_size] = '\0';

    /* Initialize libxml2 */
    xmlInitParser();

    /* Call htmlReadMemory, which eventually calls htmlCreateDoc */
    doc = htmlReadMemory(html_content, html_size, NULL, NULL, HTML_PARSE_RECOVER | HTML_PARSE_NOERROR | HTML_PARSE_NOWARNING);

    /* If doc creation succeeded, the target line 2445 was reached */
    if (doc != NULL) {
        /* Place reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        /* Clean up */
        xmlFreeDoc(doc);
    }

    free((void*)html_content);
    xmlCleanupParser();
    return 0;
}