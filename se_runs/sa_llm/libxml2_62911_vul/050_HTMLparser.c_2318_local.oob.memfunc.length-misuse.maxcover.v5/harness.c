#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    htmlParserCtxtPtr ctxt;
    char *html_data;
    int html_size;

    /* Create a symbolic HTML input buffer */
    html_size = klee_range(1, 1024, "html_size");
    html_data = (char *)malloc(html_size);
    klee_make_symbolic(html_data, html_size, "html_data");

    /* Initialize the parser context */
    ctxt = htmlCreateMemoryParserCtxt(html_data, html_size);
    if (ctxt == NULL) {
        free(html_data);
        return 0;
    }

    /* Force allocation of a new input stream via htmlParseComment */
    /* htmlParseComment is the entrypoint indicated in the SA spec */
    /* We'll create a comment in the HTML to trigger that path */
    /* First, ensure the buffer starts with "<!--" to be recognized as a comment */
    if (html_size >= 4) {
        html_data[0] = '<';
        html_data[1] = '!';
        html_data[2] = '-';
        html_data[3] = '-';
    }

    /* Parse the HTML, which will internally call htmlNewInputStream */
    htmlParseDocument(ctxt);

    /* Place reachability marker: we want to assert we reached line 2318 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    htmlFreeParserCtxt(ctxt);
    free(html_data);
    return 0;
}