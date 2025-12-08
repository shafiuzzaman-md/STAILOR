// sa_manual/sailr_assert.h
#ifndef SAILR_ASSERT_H
#define SAILR_ASSERT_H

#include <klee/klee.h>

/*
 * Mark a vulnerability condition.
 * We encode the name "SAILR_VULN_ASSERT" in the message so the batch script
 * can grep for it in KLEE's outputs.
 */
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")

#endif
