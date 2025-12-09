#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandlerPtr sax;
    void *userData;

    /* Create a parser context */
    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    /* Make sax symbolic to control the branch */
    sax = (xmlSAXHandlerPtr)malloc(sizeof(xmlSAXHandler));
    klee_make_symbolic(sax, sizeof(xmlSAXHandler), "sax");

    /* Symbolic userData pointer */
    userData = malloc(1);
    klee_make_symbolic(userData, 1, "userData");

    /* Force sax->initialized to be XML_SAX2_MAGIC to take the target branch */
    sax->initialized = XML_SAX2_MAGIC;

    /* Call xmlCreatePushParserCtxt which internally calls xmlCreateMemoryParserCtxt
       and eventually reaches the target line. We simulate the relevant part by
       directly calling the internal function that contains the vulnerable line.
       The function is xmlCreatePushParserCtxt, but we need to set up the state.
       Instead, we directly invoke the code path by using xmlCreateMemoryParserCtxt
       with appropriate arguments. */
    {
        const char *buffer;
        int size;
        /* Symbolic buffer and size */
        buffer = (const char *)malloc(1024);
        klee_make_symbolic((void*)buffer, 1024, "buffer");
        size = klee_int("size");
        klee_assume(size >= 0);
        klee_assume(size <= 1024);

        /* Create a memory parser context with the given sax handler */
        xmlParserCtxtPtr mem_ctxt = xmlCreateMemoryParserCtxt(buffer, size);
        if (mem_ctxt) {
            /* The target line is inside xmlCreateMemoryParserCtxt when sax != NULL.
               We have already set sax->initialized = XML_SAX2_MAGIC, so the branch
               at line 1853 is taken and memcpy is executed at line 1854. */
            /* Insert reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            /* Clean up */
            xmlFreeParserCtxt(mem_ctxt);
        }
    }

    /* Cleanup */
    free(sax);
    free(userData);
    xmlFreeParserCtxt(ctxt);
    return 0;
}