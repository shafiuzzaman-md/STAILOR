/*
 * ssample per-spec stubs_extra.c
 *
 * Copy to: se-config/per_spec/<SPEC_STEM>/stubs_extra.c
 *
 * These are appended AFTER global stubs_extra.c, only for this specific spec.
 * Use for function stubs unique to a particular vulnerability path.
 */

#include <stdlib.h>
#include <string.h>

/* Example: xmlDictLookup-specific — stub hash function to reduce path explosion */
unsigned long xmlDictComputeKey(const void *data, int len) {
    (void)data;
    return (unsigned long)len;
}
