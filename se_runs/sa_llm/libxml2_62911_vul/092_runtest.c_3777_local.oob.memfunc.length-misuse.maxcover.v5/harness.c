#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <klee/klee.h>

/* Stub for fprintf to avoid external dependencies */
int fprintf(FILE *stream, const char *format, ...) {
    return 0;
}

/* Target function signature inferred from context */
int target_function(const char *base, char *prefix) {
    int len;
    
    /* Simulate the length calculation - in real code this would be strlen(base) */
    for (len = 0; base[len] != '\0'; len++);
    
    if ((len > 499) || (len < 5)) {
        fprintf(stderr, "len(base) == %d !\n", len);
        return -1;
    }
    
    len -= 4; /* remove trailing .rng */
    
    /* This is the vulnerable memcpy line at runtest.c:3777 */
    memcpy(prefix, base, len);
    
    /* This is the OOB write after memcpy */
    prefix[len] = 0;
    
    return 0;
}

int main(void) {
    char base[504];  /* Max 499 + 1 for null terminator + 4 for safety */
    char prefix[500]; /* Destination buffer - size unknown from snippet */
    
    /* Make base symbolic */
    klee_make_symbolic(base, sizeof(base), "base");
    
    /* Ensure base is null-terminated */
    base[sizeof(base) - 1] = '\0';
    
    /* Make prefix symbolic to detect OOB writes */
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    
    /* Call the target function */
    int result = target_function(base, prefix);
    
    /* Vulnerability assertion: Check if len is within prefix bounds */
    /* We need to reconstruct len calculation to check the condition */
    int len = 0;
    while (base[len] != '\0' && len < sizeof(base)) {
        len++;
    }
    
    if (!((len > 499) || (len < 5))) {
        len -= 4;
        
        /* Vulnerability condition: len must be less than prefix buffer size */
        /* This is the OOB check for memcpy and the subsequent write */
        SAILR_ASSERT(len < sizeof(prefix));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return 0;
}