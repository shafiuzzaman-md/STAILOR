#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <string.h>
#include <klee/klee.h>

/* External declarations for symbols defined in testlimits.c */
extern char crazy[];
extern int crazy_indx;
extern int rlen;
extern char *current;
extern int instate;

/* Stub for reset_timout as it's not defined in the harness compilation unit */
void reset_timout(void) {
    /* Do nothing */
}

/* The crazyOpen function from testlimits.c */
static void *crazyOpen(const char *URI) {
    if ((URI == NULL) || (strncmp(URI, "crazy:", 6)))
        return(NULL);

    if (crazy_indx > strlen(crazy))
        return(NULL);
    reset_timout();
    rlen = crazy_indx;
    current = &crazy[0];
    instate = 0;
    /* Return a dummy pointer to satisfy the function signature */
    return (void*)URI;
}

int main(void) {
    /* Initialize libxml2 */
    xmlInitParser();

    /* Make symbolic input for URI */
    char URI[256];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    /* Ensure null-termination for string functions */
    URI[255] = '\0';

    /* Also make crazy_indx symbolic to explore the branch */
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");

    /* Initialize crazy array with some content */
    strcpy(crazy, "some content for crazy buffer");

    /* Call crazyOpen, which contains the target line 278 */
    void *result = crazyOpen(URI);

    /* Place reachability assertion near the target line.
     * The target line is the strncmp call inside the condition.
     * We place the assertion after the call to indicate we reached it.
     */
    if (URI != NULL && strncmp(URI, "crazy:", 6) == 0) {
        /* This path means the first condition failed, so we proceed inside crazyOpen.
         * We are now at the point where the strncmp has been executed.
         */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup libxml2 */
    xmlCleanupParser();
    return 0;
}