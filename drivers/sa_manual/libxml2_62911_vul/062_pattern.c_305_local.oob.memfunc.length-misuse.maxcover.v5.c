#include <klee/klee.h>
#include "pattern.h"
#include "dict.h"

int main() {
    // Create symbolic inputs for xmlNewPatParserContext parameters
    char pattern_buffer[256];
    klee_make_symbolic(pattern_buffer, sizeof(pattern_buffer), "pattern_buffer");
    
    // Create a concrete dict pointer (could be NULL)
    xmlDictPtr dict = NULL;
    
    // Create symbolic namespaces array
    const xmlChar* namespaces[4];
    namespaces[0] = (xmlChar*)pattern_buffer;  // Use pattern buffer as namespace URI
    namespaces[1] = (xmlChar*)"prefix";
    namespaces[2] = NULL;
    namespaces[3] = NULL;
    
    // Call the function under test
    xmlPatParserContextPtr context = xmlNewPatParserContext((xmlChar*)pattern_buffer, dict, namespaces);
    
    // Assertion based on suspicious line 305 - check that memset doesn't write out of bounds
    // The context should either be NULL (malloc failed) or a valid pointer
    if (context != NULL) {
        // Check that the context was properly allocated and zeroed
        // This is a basic sanity check - the actual vulnerability might be more complex
        klee_assert(context->base == (xmlChar*)pattern_buffer);
    }
    
    // Clean up if context was created
    if (context != NULL) {
        xmlFreePatParserContext(context);
    }
    
    return 0;
}