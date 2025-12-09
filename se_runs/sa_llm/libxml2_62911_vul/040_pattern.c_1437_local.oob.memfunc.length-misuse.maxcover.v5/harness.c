#include <libxml/parser.h>
#include <libxml/pattern.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlPatternPtr pattern;
    xmlStreamCtxtPtr streamCtxt;
    xmlChar *data;
    int data_len;

    klee_make_symbolic(&data_len, sizeof(data_len), "data_len");
    klee_assume(data_len >= 0);
    klee_assume(data_len < 1024); /* Reasonable bound */

    data = (xmlChar *)malloc(data_len + 1);
    if (data) {
        klee_make_symbolic(data, data_len + 1, "data");
        data[data_len] = 0;
    }

    xmlInitParser();

    pattern = xmlPatterncompile((const xmlChar *)data, NULL, 0, NULL);
    if (pattern) {
        streamCtxt = xmlPatternGetStreamCtxt(pattern);
        if (streamCtxt) {
            /* Trigger the path that leads to xmlNewStreamComp */
            xmlFreeStreamCtxt(streamCtxt);
        }
        xmlFreePattern(pattern);
    }

    if (data) free(data);
    xmlCleanupParser();

    /* Reachability marker for the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}