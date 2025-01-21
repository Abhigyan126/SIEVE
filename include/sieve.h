#ifndef SIEVE_H
#define SIEVE_H

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#define MAX_KEY_SIZE 64

typedef struct Node {
    char key[MAX_KEY_SIZE];
    int value;
    bool visited;
} Node;

typedef struct Cache {
    Node *entries;
    size_t capacity;
    size_t size;
    size_t hand;
} Cache;

// Function declarations
Cache *create_cache(size_t capacity);
void free_cache(Cache *cache);
void insert(Cache *cache, const char *key, int value);
int *get(Cache *cache, const char *key);
void display_cache(Cache *cache);

#endif // CLOCK_CACHE_H