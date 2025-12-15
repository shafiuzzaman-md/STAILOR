#include <klee/klee.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <stddef.h>

// Minimal types from libxml2
typedef unsigned char xmlChar;
typedef struct _xmlDict xmlDict;
typedef struct _xmlDictEntry xmlDictEntry;
struct _xmlDictEntry {
    xmlDictEntry *next;
    const xmlChar *name;
    unsigned int len;
    unsigned int nameValue;
    xmlDict *dict;
    void *payload;
};

// Stub for xmlStrQEqual
int xmlStrQEqual(const xmlChar *prefix, const xmlChar *name, const xmlChar *str) {
    // Minimal plausible stub: assume success
    return 1;
}

// Target function: xmlDictQLookup
static const xmlChar *
xmlDictQLookup(xmlDictPtr dict, const xmlChar *prefix, const xmlChar *name) {
    xmlDictEntry *entry;
    unsigned int len, l, i;
    xmlChar c;
    unsigned int hashValue;
    int ret;

    if ((dict == NULL) || (name == NULL))
        return(NULL);

    if (prefix == NULL)
        return(xmlDictLookup(dict, name, -1));

    len = 0;
    while (prefix[len] != 0) len++;
    l = len;
    while (name[l - len] != 0) l++;
    if (l > 1000)
        return(NULL);

    hashValue = 0;
    for (i = 0;i < len;i++) {
        hashValue += prefix[i];
        hashValue += (hashValue << 10);
        hashValue ^= (hashValue >> 6);
    }
    hashValue += ':';
    hashValue += (hashValue << 10);
    hashValue ^= (hashValue >> 6);
    for (i = 0;i < (l - len);i++) {
        hashValue += name[i];
        hashValue += (hashValue << 10);
        hashValue ^= (hashValue >> 6);
    }
    hashValue += (hashValue << 3);
    hashValue ^= (hashValue >> 11);
    hashValue += (hashValue << 15);

    entry = dict->dict->table[hashValue % dict->dict->size];
    while (entry != NULL) {
        if ((entry->hashValue == hashValue) &&
            (entry->len == l) &&
            (xmlStrQEqual(prefix, name, entry->name) == 1)) {
            return(entry->name);
        }
        entry = entry->next;
    }

    ret = xmlDictAddQString(dict, prefix, name, l, hashValue);
    if (ret < 0)
        return(NULL);
    entry = dict->dict->table[hashValue % dict->dict->size];
    while (entry != NULL) {
        if ((entry->hashValue == hashValue) &&
            (entry->len == l) &&
            (xmlStrQEqual(prefix, name, entry->name) == 1)) {
            return(entry->name);
        }
        entry = entry->next;
    }
    return(NULL);
}

// Stub for xmlDictLookup
const xmlChar *xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len) {
    // Minimal plausible stub
    return NULL;
}

// Stub for xmlDictAddQString
int xmlDictAddQString(xmlDictPtr dict, const xmlChar *prefix,
                      const xmlChar *name, unsigned int len,
                      unsigned int hashValue) {
    // Minimal plausible stub
    return 0;
}

// Main harness
int main(void) {
    // Allocate and initialize dict structure
    xmlDict dict;
    memset(&dict, 0, sizeof(dict));
    // Allocate inner dict and table
    struct _xmlDict inner;
    memset(&inner, 0, sizeof(inner));
    inner.size = 64; // arbitrary non-zero
    inner.table = calloc(inner.size, sizeof(xmlDictEntry*));
    dict.dict = &inner;

    // Symbolic prefix and name strings
    xmlChar prefix[256];
    xmlChar name[256];
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(name, sizeof(name), "name");
    // Ensure they are null-terminated
    klee_assume(prefix[255] == 0);
    klee_assume(name[255] == 0);
    // Constrain lengths to avoid huge loops
    unsigned int prefix_len, name_len;
    klee_make_symbolic(&prefix_len, sizeof(prefix_len), "prefix_len");
    klee_make_symbolic(&name_len, sizeof(name_len), "name_len");
    klee_assume(prefix_len < 255);
    klee_assume(name_len < 255);
    klee_assume(prefix[prefix_len] == 0);
    klee_assume(name[name_len] == 0);

    // Call target function
    const xmlChar *result = xmlDictQLookup(&dict, prefix, name);
    (void)result; // suppress unused warning
    return 0;
}