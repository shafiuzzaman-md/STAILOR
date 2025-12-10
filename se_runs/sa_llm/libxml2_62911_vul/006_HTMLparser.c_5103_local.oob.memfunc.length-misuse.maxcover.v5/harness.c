#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    // Symbolic input for the HTML data
    char html_data[1024];
    klee_make_symbolic(html_data, sizeof(html_data), "html_data");
    // Ensure null-terminated string for safety
    html_data[sizeof(html_data)-1] = 0;

    // Symbolic size for the data length (bounded to avoid huge allocations)
    int data_len;
    klee_make_symbolic(&data_len, sizeof(data_len), "data_len");
    // Constrain to reasonable bounds: 0 <= data_len < sizeof(html_data)
    klee_assume(data_len >= 0);
    klee_assume(data_len < (int)sizeof(html_data));

    // Create a parser context with default SAX handler and user data
    htmlParserCtxtPtr ctxt = htmlCreateMemoryParserCtxt(html_data, data_len);
    if (ctxt == NULL) {
        // If creation fails, we still want to explore the path
        return 0;
    }

    // The target line 5103 is inside htmlNewParserCtxt, which is called by
    // htmlCreateMemoryParserCtxt. We need to trigger the memset at line 5103.
    // To increase the chance of reaching that line, we also call parsing functions.
    htmlParseDocument(ctxt, html_data);

    // Place reachability assertion near the target line.
    // Since we cannot directly instrument the library, we place it after
    // the calls that lead to the target.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    htmlFreeParserCtxt(ctxt);

    return 0;
}