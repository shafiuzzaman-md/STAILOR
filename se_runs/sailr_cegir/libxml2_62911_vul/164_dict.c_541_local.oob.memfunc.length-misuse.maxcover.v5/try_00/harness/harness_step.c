#include <klee/klee.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

/* Minimal typedefs and structs for dict.c */
typedef unsigned char xmlChar;
typedef struct xmlDict xmlDict;
typedef struct xmlDictEntry xmlDictEntry;

struct xmlDictEntry {
    xmlChar *name;          /* entry name, allocated */
    unsigned int len;       /* length of name */
    unsigned int hash;      /* hash of name */
    xmlDictEntry *next;     /* next entry in same bucket */
};

struct xmlDict {
    xmlDictEntry **table;   /* hash table */
    unsigned int size;      /* size of table */
    unsigned int nbElems;   /* number of entries */
    /* other fields omitted */
};

/* Stub for xmlStrQEqual */
static int xmlStrQEqual(const xmlChar *pref, const xmlChar *name, int len) {
    /* Return 0 to force fall-through to target path */
    return 0;
}

/* Target function from dict.c line 541 */
static xmlDictEntry *
xmlDictFindEntry(xmlDict *dict, const xmlChar *name, int len,
                 unsigned int hash, const xmlChar **prefix) {
    xmlDictEntry *entry;
    xmlDictEntry *next;
    unsigned int mask = dict->size - 1;
    unsigned int idx = hash & mask;
    const xmlChar *limit;
    const xmlChar *cur;
    int l;

    if (dict->table == NULL)
        return NULL;
    entry = dict->table[idx];
    while (entry != NULL) {
        if ((entry->hash == hash) && (entry->len == len)) {
            if (prefix == NULL) {
                /* no prefix allowed */
                if (xmlStrQEqual(entry->name, name, len)) {
                    return entry;
                }
            } else {
                /* prefix allowed */
                limit = entry->name + len;
                for (cur = entry->name; cur < limit; cur++) {
                    if (*cur == ':') {
                        l = cur - entry->name;
                        if (xmlStrQEqual(entry->name, name, l) &&
                            xmlStrQEqual(cur + 1, name + l + 1, len - l - 1)) {
                            *prefix = entry->name;
                            return entry;
                        }
                        break;
                    }
                }
                /* no prefix found */
                if (xmlStrQEqual(entry->name, name, len)) {
                    *prefix = NULL;
                    return entry;
                }
            }
        }
        entry = entry->next;
    }
    if (prefix == NULL) {
        /* no prefix allowed */
        entry = dict->table[idx];
        while (entry != NULL) {
            if ((entry->hash == hash) && (entry->len == len)) {
                klee_assert(0 && "REACH_ASSERT");
                /* BUG ASSERT: memcmp may read OOB if entry->name is not null-terminated at len */
                klee_assert(entry->name[len] == 0 && "BUG_ASSERT");
                if ((memcmp(entry->name, name, len) == 0) && (entry->name[len] == 0)) {
                    return entry;
                }
            }
            entry = entry->next;
        }
    }
    return NULL;
}

int main(void) {
    /* Allocate and initialize dict */
    xmlDict dict;
    memset(&dict, 0, sizeof(dict));
    dict.size = 8;  /* power of two */
    dict.table = calloc(dict.size, sizeof(xmlDictEntry*));
    klee_assume(dict.table != NULL);

    /* Allocate and initialize a symbolic entry */
    xmlDictEntry entry;
    memset(&entry, 0, sizeof(entry));
    entry.len = 5;
    entry.hash = 12345;
    /* Allocate buffer for name with size entry.len (NOT +1) to force OOB read */
    entry.name = malloc(entry.len);  /* No extra byte for null terminator */
    klee_assume(entry.name != NULL);
    klee_make_symbolic(entry.name, entry.len, "entry_name");
    /* DO NOT set entry.name[entry.len] = '\0' because buffer is only entry.len bytes */
    entry.next = NULL;

    /* Link entry into dict table */
    unsigned int mask = dict.size - 1;
    unsigned int idx = entry.hash & mask;
    dict.table[idx] = &entry;

    /* Symbolic inputs for the call */
    int len;
    unsigned int hash;
    const xmlChar *prefix = NULL;  /* to hit the target path */
    const xmlChar *name;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&hash, sizeof(hash), "hash");
    name = malloc(entry.len);
    klee_assume(name != NULL);
    klee_make_symbolic((void*)name, entry.len, "name");

    /* Constrain inputs to match entry */
    klee_assume(len == entry.len);
    klee_assume(hash == entry.hash);
    /* prefix is already NULL */

    /* Ensure we reach the target path: prefix must be NULL and xmlStrQEqual must return 0 */
    /* Already satisfied */

    /* Call target function */
    xmlDictFindEntry(&dict, name, len, hash, &prefix);
    return 0;
}