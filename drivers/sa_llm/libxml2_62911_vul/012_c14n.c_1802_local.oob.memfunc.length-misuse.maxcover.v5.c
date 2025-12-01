#include <klee/klee.h>
#include "c14n.c"
#include "xmlmemory.h"
#include "parser.h"
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
    
    // Ensure buf->encoder is NULL as required by xmlC14NNewCtx
    buf->encoder = NULL;

    // Call the function under test
    xmlC14NCtxPtr ctx = xmlC14NNewCtx(doc, is_visible_callback, user_data, 
                                      mode, inclusive_ns_prefixes, 
                                      with_comments, buf);

    // Assertion based on suspicious line 1802: check if ctx was properly allocated and initialized
    if (ctx != NULL) {
        // Check that the memset at line 1802 didn't overflow
        // We can't directly check the memset, but we can verify ctx points to valid memory
        // by checking it's within bounds of what was allocated
        klee_assert(ctx >= (xmlC14NCtxPtr)doc_buf && 
                   ctx < (xmlC14NCtxPtr)(doc_buf + sizeof(xmlDoc)));
    }

    // Cleanup if ctx was created
    if (ctx != NULL) {
        xmlC14NFreeCtx(ctx);
    }

    return 0;
}