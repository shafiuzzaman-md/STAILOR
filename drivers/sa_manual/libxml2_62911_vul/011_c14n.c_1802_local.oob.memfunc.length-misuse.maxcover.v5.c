#include <klee/klee.h>
#include "c14n.c"
#include "tree.h"
#include "xmlIO.h"

int main() {
    // Initialize symbolic inputs for xmlC14NNewCtx parameters
    xmlDocPtr doc;
    xmlOutputBufferPtr buf;
    xmlC14NIsVisibleCallback is_visible_callback = NULL;
    void* user_data = NULL;
    xmlC14NMode mode = XML_C14N_1_0;
    xmlChar** inclusive_ns_prefixes = NULL;
    int with_comments = 0;

    // Make doc and buf symbolic (approximate structs with byte arrays)
    unsigned char doc_buf[sizeof(xmlDoc)];
    unsigned char buf_buf[sizeof(xmlOutputBuffer)];
    
    klee_make_symbolic(doc_buf, sizeof(xmlDoc), "doc_buf");
    klee_make_symbolic(buf_buf, sizeof(xmlOutputBuffer), "buf_buf");
    
    doc = (xmlDocPtr)doc_buf;
    buf = (xmlOutputBufferPtr)buf_buf;
    
    // Initialize buf->encoder to NULL as required by the function
    if (buf != NULL) {
        buf->encoder = NULL;
    }

    // Call the function under test
    xmlC14NCtxPtr ctx = xmlC14NNewCtx(doc, is_visible_callback, user_data, 
                                      mode, inclusive_ns_prefixes, 
                                      with_comments, buf);

    // Assertion based on the suspicious line 1802 - check if ctx was properly allocated and initialized
    if (ctx != NULL) {
        // Check that the memset at line 1802 didn't overflow
        // We can't directly check the memset bounds, but we can check that ctx points to valid memory
        // by verifying it's within a reasonable range and the structure was properly initialized
        klee_assert(ctx->doc == doc);  // This field should be set after memset
        klee_assert(ctx->buf == buf);  // This field should be set after memset
    }

    // Cleanup if context was created
    if (ctx != NULL) {
        xmlC14NFreeCtx(ctx);
    }

    return 0;
}