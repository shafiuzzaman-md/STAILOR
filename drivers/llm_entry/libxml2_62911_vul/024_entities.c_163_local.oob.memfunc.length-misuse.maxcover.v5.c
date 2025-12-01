#include <klee/klee.h>
#include "entities.c"
#include "tree.h"
#include "parser.h"

int main() {
    xmlDictPtr dict;
    xmlChar name[10];
    int type;
    xmlChar ExternalID[10];
    xmlChar SystemID[10];
    xmlChar content[20];

    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(ExternalID, sizeof(ExternalID), "ExternalID");
    klee_make_symbolic(SystemID, sizeof(SystemID), "SystemID");
    klee_make_symbolic(content, sizeof(content), "content");

    xmlCreateEntity(dict, name, type, ExternalID, SystemID, content);
    return 0;
}