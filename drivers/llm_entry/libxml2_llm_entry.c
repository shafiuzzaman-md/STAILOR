#include "klee/klee.h"
#include <libxml/parser.h>
#include <stdlib.h>

#define MAX_XML_SIZE 2048

int main(void) {
    int len;
    char *xml_buf;
    xmlDocPtr doc = NULL;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Allocate buffer with space for NUL terminator */
    xml_buf = malloc(MAX_XML_SIZE + 1);
    if (xml_buf == NULL) {
        return 1;
    }

    /* Make length symbolic and constrain it */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= MAX_XML_SIZE);

    /* Make buffer symbolic */
    klee_make_symbolic(xml_buf, MAX_XML_SIZE + 1, "xml_buf");

    /* Ensure the buffer is NUL-terminated at the constrained length */
    xml_buf[len] = '\0';

    /* Call libxml2 entrypoint that parses from memory */
    doc = xmlReadMemory(xml_buf, len, "noname.xml", NULL, 0);

    /* Clean up */
    if (doc != NULL) {
        xmlFreeDoc(doc);
    }
    free(xml_buf);
    xmlCleanupParser();

    return 0;
}
