#include <klee/klee.h>
#include "entities.c"

int main() {
    xmlDictPtr dict;
    xmlChar name[32];
    xmlChar ExternalID[32];
    xmlChar SystemID[32];
    xmlChar content[64];
    
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(ExternalID, sizeof(ExternalID), "ExternalID");
    klee_make_symbolic(SystemID, sizeof(SystemID), "SystemID");
    klee_make_symbolic(content, sizeof(content), "content");
    
    int type = XML_INTERNAL_GENERAL_ENTITY;
    
    xmlEntityPtr entity = xmlCreateEntity(dict, name, type, ExternalID, SystemID, content);
    
    if (entity != NULL) {
        klee_assert(entity->length >= 0 && entity->length < 64);
    }
    
    return 0;
}