#include <klee/klee.h>
#include "parser.h"
#include "xmlmemory.h"

int main() {
    xmlParserCtxtPtr ctxt;
    int terminate = 0;
    int avail;

    ctxt = xmlCreateMemoryParserCtxt(NULL, 0);
    if (ctxt == NULL) {
        return 1;
    }

    klee_make_symbolic(&terminate, sizeof(terminate), "terminate");
    klee_make_symbolic(&avail, sizeof(avail), "avail");

    if (ctxt->input != NULL) {
        unsigned char buffer[1024];
        int buffer_size;
        
        klee_make_symbolic(buffer, sizeof(buffer), "input_buffer");
        klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
        
        klee_assume(buffer_size >= 0 && buffer_size <= sizeof(buffer));
        
        ctxt->input->base = buffer;
        ctxt->input->cur = buffer;
        ctxt->input->end = buffer + buffer_size;
    }

    ctxt->instate = XML_PARSER_CDATA_SECTION;
    ctxt->nameNr = 1;
    ctxt->disableSAX = 0;

    if (ctxt->sax == NULL) {
        xmlSAXHandler sax;
        ctxt->sax = &sax;
    }

    xmlParseContent(ctxt);

    xmlFreeParserCtxt(ctxt);
    return 0;
}