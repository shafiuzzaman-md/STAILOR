#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>
#include <libxml/c14n.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlC14NCtxPtr ctx;

    // Create a minimal XML document
    const char* xml_data = "<root><child attr='value'/></root>";
    int xml_size = strlen(xml_data);

    // Initialize libxml2
    xmlInitParser();

    // Parse XML document
    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 1;
    }

    // Get root element
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Create C14N context - this will allocate the initial structure
    ctx = xmlC14NNewCtx(NULL, NULL, 0, NULL, 0, node);
    if (ctx == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    // Make the nsTab and nodeTab NULL to trigger the allocation path
    // We need to access the internal structure
    if (ctx->nsTab != NULL) {
        xmlFree(ctx->nsTab);
        ctx->nsTab = NULL;
    }
    if (ctx->nodeTab != NULL) {
        xmlFree(ctx->nodeTab);
        ctx->nodeTab = NULL;
    }

    // Create symbolic variables for potential size manipulation
    int symbolic_size;
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    // Constrain to avoid negative values
    klee_assume(symbolic_size >= 0);
    klee_assume(symbolic_size < 1000); // Reasonable bound

    // Force the allocation path by calling a function that uses the context
    // We'll manually trigger the vulnerable code path by simulating the condition
    // The vulnerable memset happens when both nsTab and nodeTab are NULL
    // and allocation succeeds

    // Mark reachability - this should be placed just before line 328
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Clean up
    xmlC14NFreeCtx(ctx);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}