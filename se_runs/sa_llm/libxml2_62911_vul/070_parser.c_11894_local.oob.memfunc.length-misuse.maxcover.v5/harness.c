#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr input;
    xmlSAXHandlerPtr sax;

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return 0;

    input = xmlNewInputStream(ctxt);
    if (input == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    ctxt->input = input;

    sax = (xmlSAXHandlerPtr) malloc(sizeof(xmlSAXHandler));
    if (sax == NULL) {
        xmlFreeInputStream(input);
        xmlFreeParserCtxt(ctxt);
        return 0;
    }
    memset(sax, 0, sizeof(xmlSAXHandler));
    ctxt->sax = sax;

    ctxt->disableSAX = 0;
    ctxt->userData = NULL;

    sax->cdataBlock = (cdataBlockSAXFunc) 1;

    size_t buffer_size = 20;
    char *buffer = (char *) malloc(buffer_size);
    if (buffer == NULL) {
        free(sax);
        xmlFreeInputStream(input);
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_make_symbolic(buffer, buffer_size, "buffer");
    buffer[buffer_size - 1] = '\0';

    input->base = (const xmlChar *) buffer;
    input->cur = (xmlChar *) buffer;

    int base;
    klee_make_symbolic(&base, sizeof(base), "base");

    input->cur += 9;

    if ((ctxt->sax->cdataBlock != NULL) && (!ctxt->disableSAX)) {
        if ((ctxt->input->cur - ctxt->input->base >= 9) &&
            (!strncmp((const char *)&ctxt->input->cur[-9], "<![CDATA[", 9))) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            ctxt->sax->cdataBlock(ctxt->userData, BAD_CAST "", 0);
        }
    } else if ((ctxt->sax != NULL) && (base > 0) && (!ctxt->disableSAX)) {
        if (ctxt->sax->cdataBlock != NULL)
            ctxt->sax->cdataBlock(ctxt->userData, ctxt->input->cur, base);
    }

    free(buffer);
    free(sax);
    xmlFreeInputStream(input);
    xmlFreeParserCtxt(ctxt);
    return 0;
}