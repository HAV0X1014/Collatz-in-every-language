// Written with <3 by @DrParanoya on 08/23/2025
// Collatz Conjecture in C

#include <stdint.h>
#include <stdio.h>
#include <time.h>

int main() {
    uint64_t number = 0, peak = 0, steps = 0;

    printf("Please enter a positive integer to run the collatz conjecture on: ");

    if (!scanf("%llu", &number) || !number) { puts("Invalid input!"); return -1; }

    clock_t start = clock();

    while (number != 1) {
        if (number % 2 == 0)
            number /= 2;
        else
            number = number * 3 + 1;

        if (number > peak)
            peak = number;
        steps++;
    }

    clock_t end = clock(); 

    printf("Steps to reach 1: %llu\nPeak number reached: %llu\nExecution time (in seconds): %f", steps, peak, ((double)(end - start)) / CLOCKS_PER_SEC);

    return 0;
}