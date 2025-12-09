#include "klee/klee.h"
#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegAtomPtr atom;
    xmlRegAtomPtr ret;

    ctxt = xmlRegNewParserCtxt(NULL);
    if (ctxt == NULL) return 0;

    atom = (xmlRegAtomPtr) xmlMalloc(sizeof(xmlRegAtom));
    if (atom == NULL) {
        xmlRegFreeParserCtxt(ctxt);
        return 0;
    }
    memset(atom, 0, sizeof(xmlRegAtom));

    atom->type = XML_REGEXP_ANYCHAR;
    atom->quant = XML_REGEXP_QUANT_ONCE;
    atom->min = 0;
    atom->max = 1;
    atom->nbRanges = 0;

    ret = xmlRegCopyAtom(ctxt, atom);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFree(atom);
    xmlRegFreeParserCtxt(ctxt);
    return 0;
}