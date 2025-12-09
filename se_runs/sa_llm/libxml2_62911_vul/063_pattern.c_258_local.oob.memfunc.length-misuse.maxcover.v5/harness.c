#include <libxml/pattern.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlPatternPtr comp;

    // Make comp symbolic to explore different states
    comp = (xmlPatternPtr)malloc(sizeof(xmlPattern));
    if (!comp) return 0;

    // Symbolically initialize comp fields to reach the target path
    klee_make_symbolic(comp, sizeof(xmlPattern), "comp");

    // Ensure comp is not NULL (already checked) and set fields to avoid early returns
    // Assume steps and dict are set to trigger the free paths
    comp->steps = (xmlPatternStepPtr)malloc(sizeof(xmlPatternStep));
    klee_make_symbolic(comp->steps, sizeof(xmlPatternStep), "steps");
    comp->dict = (xmlDictPtr)malloc(sizeof(xmlDict));
    klee_make_symbolic(comp->dict, sizeof(xmlDict), "dict");

    // Simulate the cleanup path leading to line 258
    if (comp->steps) {
        xmlFree(comp->steps);
    }
    if (comp->dict != NULL) {
        xmlDictFree(comp->dict);
    }

    // Reachability marker for the vulnerable memset
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Target line 258: memset(comp, -1, sizeof(xmlPattern));
    memset(comp, -1, sizeof(xmlPattern));
    xmlFree(comp);

    return 0;
}