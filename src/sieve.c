#include "sieve.h"

Cache *create_cache(size_t capacity) {
    Cache *cache = (Cache *)malloc(sizeof(Cache));
    cache->entries = (Node *)calloc(capacity, sizeof(Node));
    cache->capacity = capacity;
    cache->size = 0;
    cache->hand=0;
    return cache;
}

void free_cache(Cache *cache) {
    if (cache) {
        free(cache->entries);
        free(cache);
    }
}

int find_entry(Cache *cache, const char *key) {
    for (size_t i =0;i<cache->capacity;i++) {
        if (strcmp(cache->entries[i].key, key) == 0) {
            return i;
            }
        }
        return -1;
}

void evict(Cache *cache) {
        for (size_t i = 0; i < cache->capacity; i++) {
            if (!cache->entries[cache->hand].visited) {
                printf("Evicting key: %s\n", cache->entries[cache->hand].key);
                memset(&cache->entries[cache->hand], 0, sizeof(Node));
                cache->size--;
                return;
            }
            cache->entries[cache->hand].visited=false;
            cache->hand = (cache->hand +1) % cache->capacity;
        }
        printf("Evicting key: %s\n", cache->entries[cache->hand].key);
        memset(&cache->entries[cache->hand], 0, sizeof(Node));
        cache->size--;
        }

void insert(Cache *cache, const char *key, int value) {
    int index = find_entry(cache, key);
    if(index>=0) {
        cache->entries[index].value = value;
        cache->entries[index].visited = true;
        return;
    }
    if (cache->size >= cache->capacity) {
        evict(cache);
    }
    for (size_t i = 0; i < cache->capacity; i++) {
        size_t pos = (cache->hand + i) % cache->capacity;
        if (strlen(cache->entries[pos].key) == 0) {
            strncpy(cache->entries[pos].key, key, MAX_KEY_SIZE - 1);
            cache->entries[pos].value = value;
            cache->entries[pos].visited = true;
            cache->size++;
            return;
        }
    }
}

int *get(Cache *cache, const char *key) {
    int index = find_entry(cache, key);
    if (index >= 0) {
        cache->entries[index].visited = true;
        return &cache->entries[index].value;
    }
    return NULL;
}

void display_cache(Cache *cache) {
    printf("Cache contents:\n");
    for (size_t i = 0; i < cache->capacity; i++) {
        if (strlen(cache->entries[i].key) > 0) {
            printf("Key: %s, Value: %d, Visited: %d\n", 
                   cache->entries[i].key, 
                   cache->entries[i].value, 
                   cache->entries[i].visited);
        }
    }
}
