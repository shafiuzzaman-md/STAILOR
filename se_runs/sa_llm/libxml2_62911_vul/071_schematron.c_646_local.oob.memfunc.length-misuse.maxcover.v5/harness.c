#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/schematron.h>
#include <string.h>

int main(void) {
    const char* URL;
    size_t URL_len;

    klee_make_symbolic(&URL_len, sizeof(URL_len), "URL_len");
    klee_assume(URL_len < 1024); // Reasonable bound
    URL = (const char*) klee_make_symbolic_str(URL_len+1, "URL");
    ((char*)URL)[URL_len] = '\0';

    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt(URL);
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchematronFreeParserCtxt(ctxt);
    }

    return 0;
}