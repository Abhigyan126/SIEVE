#include "sieve.h"
#include <time.h>

// Helper function to generate random string
void generate_random_string(char *str, size_t length) {
    const char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    for (size_t i = 0; i < length - 1; i++) {
        int index = rand() % (sizeof(charset) - 1);
        str[i] = charset[index];
    }
    str[length - 1] = '\0';
}

void run_random_tests(size_t num_operations, size_t cache_size) {
    Cache *cache = create_cache(cache_size);
    char key[MAX_KEY_SIZE];
    
    printf("Running %zu random operations on cache of size %zu\n", num_operations, cache_size);
    
    for (size_t i = 0; i < num_operations; i++) {
        // Randomly choose between insert and get operations
        if (rand() % 2 == 0) {
            // Insert operation
            generate_random_string(key, 5);  // Generate 4-character keys
            int value = rand() % 1000;
            printf("Inserting key: %s, value: %d\n", key, value);
            insert(cache, key, value);
        } else {
            // Get operation
            generate_random_string(key, 5);
            printf("Getting key: %s\n", key);
            int *result = get(cache, key);
            if (result) {
                printf("Found value: %d\n", *result);
            } else {
                printf("Key not found\n");
            }
        }
        
        // Display cache state every few operations
        if (i % 5 == 0) {
            printf("\nCache state after %zu operations:\n", i);
            display_cache(cache);
            printf("\n");
        }
    }
    
    free_cache(cache);
}

int main() {
    // Seed the random number generator
    srand(time(NULL));
    
    // Run tests with different cache sizes and operation counts
    printf("=== Test 1: Small cache, few operations ===\n");
    run_random_tests(10, 3);
    
    printf("\n=== Test 2: Medium cache, more operations ===\n");
    run_random_tests(20, 5);
    
    printf("\n=== Test 3: Larger cache, many operations ===\n");
    run_random_tests(30, 8);
    
    return 0;
}