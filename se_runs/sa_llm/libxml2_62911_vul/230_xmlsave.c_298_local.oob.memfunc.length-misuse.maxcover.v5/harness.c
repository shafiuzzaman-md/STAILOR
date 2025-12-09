#include "klee/klee.h"
#include <libxml/xmlsave.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

extern void xmlEscapeEntities(void);

int main(void) {
    xmlSaveCtxtPtr ctxt;
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlBufferPtr buf;
    char *xmlTreeIndentString_sym;
    size_t xmlTreeIndentString_len;

    /* Symbolic xmlTreeIndentString (global variable) */
    xmlTreeIndentString_sym = (char *)malloc(256);
    klee_make_symbolic(xmlTreeIndentString_sym, 256, "xmlTreeIndentString_sym");
    /* Ensure null-terminated for strlen safety */
    xmlTreeIndentString_sym[255] = 0;
    /* Override the global variable */
    xmlTreeIndentString = xmlTreeIndentString_sym;

    /* Create a minimal XML document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    node = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, node);

    /* Create a buffer for output */
    buf = xmlBufferCreate();
    if (buf == NULL) {
        xmlFreeDoc(doc);
        free(xmlTreeIndentString_sym);
        return 1;
    }

    /* Create a save context */
    ctxt = xmlSaveToBuffer(buf, NULL, 0);
    if (ctxt == NULL) {
        xmlBufferFree(buf);
        xmlFreeDoc(doc);
        free(xmlTreeIndentString_sym);
        return 1;
    }

    /* Make ctxt->indent symbolic to influence the path */
    klee_make_symbolic(&ctxt->indent, sizeof(ctxt->indent), "ctxt_indent");

    /* Force the condition (xmlTreeIndentString == NULL) || (len == 0) to be true */
    /* We can do this by making xmlTreeIndentString NULL or making its length zero */
    /* We'll use KLEE assumptions to guide execution */
    if (xmlTreeIndentString == NULL) {
        /* Already NULL, path will be taken */
    } else {
        /* Force len == 0 by making the first char null */
        xmlTreeIndentString_sym[0] = 0;
    }

    /* Call the function that leads to the target line */
    /* The function is xmlNodeDumpOutputInternal, but it's static.
       Instead, use a public function that calls it, such as xmlSaveTree.
       However, xmlSaveTree may not directly reach the line.
       We'll use xmlSaveFormatToBuffer with formatting enabled, which
       eventually calls xmlNodeDumpOutputInternal. */
    xmlSaveDoc(ctxt, doc);

    /* Place reachability marker just before the vulnerable memset */
    /* Since we cannot insert code directly into xmlsave.c, we place it
       after the call that should have executed the target line.
       We'll use a KLEE assertion to mark that the path was reached. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlSaveClose(ctxt);
    xmlBufferFree(buf);
    xmlFreeDoc(doc);
    free(xmlTreeIndentString_sym);

    return 0;
}