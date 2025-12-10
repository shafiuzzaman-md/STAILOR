#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlNodePtr ret;
    const xmlChar *localname;
    const xmlChar *prefix;
    const xmlChar *URI;
    int nb_namespaces;
    xmlNsPtr *namespaces;
    int nb_attributes;
    int nb_defaulted;
    xmlSAX2AttributesPtr attributes;
    int i;

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    ctxt->myDoc = xmlNewDoc((const xmlChar*)"1.0");
    if (ctxt->myDoc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 0;
    }

    klee_make_symbolic(&ctxt->freeElemsNr, sizeof(ctxt->freeElemsNr), "freeElemsNr");
    if (ctxt->freeElemsNr > 0) {
        ctxt->freeElems = (xmlNodePtr)malloc(sizeof(xmlNode));
        if (ctxt->freeElems != NULL) {
            ctxt->freeElems->next = NULL;
        }
    } else {
        ctxt->freeElems = NULL;
    }

    klee_make_symbolic(&ctxt->dictNames, sizeof(ctxt->dictNames), "dictNames");

    klee_make_symbolic(&localname, sizeof(localname), "localname");
    klee_make_symbolic(&prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(&URI, sizeof(URI), "URI");

    klee_make_symbolic(&nb_namespaces, sizeof(nb_namespaces), "nb_namespaces");
    if (nb_namespaces < 0) nb_namespaces = 0;
    if (nb_namespaces > 0) {
        namespaces = (xmlNsPtr*)malloc(nb_namespaces * sizeof(xmlNsPtr));
        for (i = 0; i < nb_namespaces; i++) {
            namespaces[i] = xmlNewNs(NULL, (const xmlChar*)"http://example.com", (const xmlChar*)"pref");
        }
    } else {
        namespaces = NULL;
    }

    klee_make_symbolic(&nb_attributes, sizeof(nb_attributes), "nb_attributes");
    if (nb_attributes < 0) nb_attributes = 0;
    if (nb_attributes > 0) {
        attributes = (xmlSAX2AttributesPtr)malloc(sizeof(xmlSAX2Attributes) * nb_attributes);
        for (i = 0; i < nb_attributes; i++) {
            attributes[i].localname = (xmlChar*)"attr";
            attributes[i].prefix = NULL;
            attributes[i].value = (xmlChar*)"value";
            attributes[i].valueLen = 5;
            attributes[i].uri = NULL;
            attributes[i].atype = XML_ATTRIBUTE_CDATA;
        }
    } else {
        attributes = NULL;
    }

    klee_make_symbolic(&nb_defaulted, sizeof(nb_defaulted), "nb_defaulted");

    xmlSAX2StartElement(ctxt, localname, prefix, URI, nb_namespaces, namespaces, nb_attributes, nb_defaulted, attributes);

    if (ctxt->freeElems != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (namespaces != NULL) {
        for (i = 0; i < nb_namespaces; i++) {
            xmlFreeNs(namespaces[i]);
        }
        free(namespaces);
    }
    if (attributes != NULL) {
        free(attributes);
    }
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);

    return 0;
}