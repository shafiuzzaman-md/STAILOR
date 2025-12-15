#include <klee/klee.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stddef.h>

/* Minimal types and macros from libxml2 */
typedef unsigned char xmlChar;
#define XML_DICT_NAMELEN 4

/* Stub structs */
typedef struct _xmlDictEntry xmlDictEntry;
typedef struct _xmlHashedString xmlHashedString;

struct _xmlHashedString {
    xmlChar *name;
    unsigned int hashValue;
};

struct _xmlDictEntry {
    xmlHashedString hashStr;
    unsigned int hashValue;
    struct _xmlDictEntry *next;
};

/* Stub functions */
static int xmlStrncmp(const xmlChar *str1, const xmlChar *str2, int len) {
    if (str1 == NULL || str2 == NULL) return -1;
    return memcmp(str1, str2, len);
}

static int xmlStrlen(const xmlChar *str) {
    if (str == NULL) return 0;
    int i = 0;
    while (str[i] != 0) i++;
    return i;
}

/* Target function from dict.c line 541 */
static xmlDictEntry *
xmlDictLookupInternal(xmlDictPtr dict, const xmlChar *name, int namelen,
                      unsigned int hashValue, int add) {
    xmlDictEntry *entry;
    xmlDictEntry *insert = NULL;
    unsigned int length;
    int i, len;
    const xmlChar *ret;

    if ((dict == NULL) || (name == NULL)) return(NULL);

    if (namelen <= 0) return(NULL);

    len = (namelen > 0) ? namelen : xmlStrlen(name);
    if (len < 0) return(NULL);

    for (i = 0; i < dict->size; i++) {
        entry = dict->table[i];
        while (entry != NULL) {
            if ((entry->hashValue == hashValue) &&
                (entry->hashStr.name != NULL) &&
                (xmlStrncmp(entry->hashStr.name, name, len) == 0) &&
                (entry->hashStr.name[len] == 0)) {
                klee_assert(len < XML_DICT_NAMELEN && "BUG_ASSERT");
                klee_assert(0 && "REACH_ASSERT");
                if ((memcmp(entry->name, name, len) == 0) && (entry->name[len] == 0)) {
                    return(entry);
                }
            }
            entry = entry->next;
        }
    }
    return(NULL);
}

/* Minimal dict stub */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;
struct _xmlDict {
    int size;
    xmlDictEntry **table;
};

int main(void) {
    /* Initialize dict */
    xmlDict dict;
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_assume(dict.size > 0 && dict.size < 10);
    dict.table = calloc(dict.size, sizeof(xmlDictEntry*));
    klee_assume(dict.table != NULL);

    /* Initialize entry */
    xmlDictEntry entry;
    memset(&entry, 0, sizeof(entry));
    entry.hashValue = klee_int("hashValue");
    entry.hashStr.hashValue = entry.hashValue;
    entry.hashStr.name = malloc(1024);
    klee_assume(entry.hashStr.name != NULL);
    klee_make_symbolic(entry.hashStr.name, 1024, "entry_name");
    entry.hashStr.name[1023] = 0;
    entry.next = NULL;

    /* Link entry into dict */
    int idx = klee_int("idx");
    klee_assume(idx >= 0 && idx < dict.size);
    dict.table[idx] = &entry;

    /* Initialize name */
    xmlChar *name = malloc(1024);
    klee_assume(name != NULL);
    klee_make_symbolic(name, 1024, "name");
    name[1023] = 0;
    int namelen = klee_int("namelen");
    klee_assume(namelen > 0 && namelen < 1024);
    unsigned int hashValue = klee_int("hashValue2");
    int add = klee_int("add");

    /* Call target function */
    xmlDictLookupInternal(&dict, name, namelen, hashValue, add);
    return 0;
}