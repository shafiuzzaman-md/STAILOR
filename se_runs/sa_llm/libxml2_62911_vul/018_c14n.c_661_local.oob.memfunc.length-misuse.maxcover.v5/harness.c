#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/c14n.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlC14NCtxPtr ctx;
    int visible;
    int has_empty_ns;

    klee_make_symbolic(&visible, sizeof(visible), "visible");
    klee_make_symbolic(&has_empty_ns, sizeof(has_empty_ns), "has_empty_ns");

    const char* xml_data = "<root><child/></root>";
    int xml_len = strlen(xml_data);

    doc = xmlReadMemory(xml_data, xml_len, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 0;
    }

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    ctx = xmlC14NNewCtx(NULL, NULL, 0, NULL, 1, node);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    if (visible && !has_empty_ns) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        static xmlNs ns_default;
        memset(&ns_default, 0, sizeof(ns_default));
        if (!xmlC14NVisibleNsStackFind(ctx->ns_rendered, &ns_default)) {
            xmlC14NPrintNamespaces(&ns_default, ctx);
        }
    }

    xmlC14NFreeCtx(ctx);
    xmlFreeDoc(doc);
    return 0;
}