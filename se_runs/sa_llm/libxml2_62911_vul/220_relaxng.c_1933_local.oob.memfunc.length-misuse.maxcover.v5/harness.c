#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr ctxt;
    xmlDocPtr doc;
    char *URL;
    size_t URL_len;

    ctxt = xmlRelaxNGNewParserCtxt("test.rng");
    if (ctxt == NULL) {
        return 0;
    }

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlRelaxNGFreeParserCtxt(ctxt);
        return 0;
    }

    URL_len = 10;
    URL = (char *)malloc(URL_len + 1);
    klee_make_symbolic(URL, URL_len + 1, "URL");
    URL[URL_len] = '\0';

    xmlRelaxNGSetParserErrors(ctxt, NULL, NULL, NULL);

    xmlRelaxNGParse(ctxt);

    xmlRelaxNGValidCtxtPtr valid_ctxt = xmlRelaxNGNewValidCtxt(ctxt);
    if (valid_ctxt == NULL) {
        xmlFreeDoc(doc);
        xmlRelaxNGFreeParserCtxt(ctxt);
        free(URL);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlRelaxNGFreeValidCtxt(valid_ctxt);
    xmlFreeDoc(doc);
    xmlRelaxNGFreeParserCtxt(ctxt);
    free(URL);
    return 0;
}