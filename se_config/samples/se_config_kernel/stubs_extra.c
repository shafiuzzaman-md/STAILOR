/* stubs_extra.c — Kernel function stubs for KLEE symbolic execution */

#include <stdlib.h>
#include <string.h>

/* === Memory allocation stubs (kernel → userspace for KLEE) === */
void *kmalloc(unsigned long size, unsigned int flags) {
    return malloc(size);
}
void *kzalloc(unsigned long size, unsigned int flags) {
    return calloc(1, size);
}
void *kcalloc(unsigned long n, unsigned long size, unsigned int flags) {
    return calloc(n, size);
}
void kfree(const void *ptr) {
    free((void *)ptr);
}
void kfree_rcu(void *ptr, ...) {
    free(ptr);
}
void kvfree(const void *ptr) {
    free((void *)ptr);
}

/* === Slab cache stubs === */
struct kmem_cache;
void *kmem_cache_alloc(struct kmem_cache *cache, unsigned int flags) {
    /* Size unknown without cache metadata; allocate generous default */
    return malloc(4096);
}
void kmem_cache_free(struct kmem_cache *cache, void *ptr) {
    free(ptr);
}

/* === Locking stubs (all no-ops for KLEE) === */
typedef struct { int val; } spinlock_t;
typedef struct { int val; } mutex;
typedef struct { int val; } rwlock_t;

void spin_lock(spinlock_t *l) {}
void spin_unlock(spinlock_t *l) {}
void spin_lock_irqsave(spinlock_t *l, unsigned long f) {}
void spin_unlock_irqrestore(spinlock_t *l, unsigned long f) {}
void spin_lock_bh(spinlock_t *l) {}
void spin_unlock_bh(spinlock_t *l) {}

void mutex_lock(mutex *m) {}
void mutex_unlock(mutex *m) {}
int mutex_lock_interruptible(mutex *m) { return 0; }

void rcu_read_lock(void) {}
void rcu_read_unlock(void) {}
void synchronize_rcu(void) {}
void call_rcu(void *head, void (*func)(void *)) {}

void rtnl_lock(void) {}
void rtnl_unlock(void) {}

/* === Reference counting stubs === */
typedef struct { int counter; } atomic_t;
typedef struct { int counter; } refcount_t;

void atomic_inc(atomic_t *v) { v->counter++; }
int atomic_dec_and_test(atomic_t *v) { return --v->counter == 0; }
void refcount_inc(refcount_t *r) { r->counter++; }
int refcount_dec_and_test(refcount_t *r) { return --r->counter == 0; }

/* === Printing stubs === */
int printk(const char *fmt, ...) { return 0; }
void dump_stack(void) {}

/* === Error handling stubs === */
void *ERR_PTR(long error) { return (void *)error; }
long PTR_ERR(const void *ptr) { return (long)ptr; }
int IS_ERR(const void *ptr) { return (unsigned long)ptr >= (unsigned long)-4095; }

/* === List operations === */
struct list_head {
    struct list_head *next, *prev;
};

static inline void INIT_LIST_HEAD(struct list_head *list) {
    list->next = list;
    list->prev = list;
}

static inline void __list_add(struct list_head *new_entry,
                              struct list_head *prev,
                              struct list_head *next) {
    next->prev = new_entry;
    new_entry->next = next;
    new_entry->prev = prev;
    prev->next = new_entry;
}

static inline void list_add(struct list_head *new_entry, struct list_head *head) {
    __list_add(new_entry, head, head->next);
}

static inline void list_del(struct list_head *entry) {
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
    entry->next = (void *)0xDEAD;
    entry->prev = (void *)0xBEEF;
}

/* === RCU dereference stubs === */
#define rcu_dereference(p) (p)
#define rcu_assign_pointer(p, v) ((p) = (v))
#define READ_ONCE(x) (x)
#define WRITE_ONCE(x, v) ((x) = (v))
