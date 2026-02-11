// Written with <3 by @DrParanoya on 08/21/2025
// Updated on 02/11/2026
// Collatz Conjecture in C++14

#include <chrono>
#include <cstdint>
#include <iostream>

int main() {
    uint64_t number = 1, steps = 0, peak = 0;
    std::cout << "Please enter a positive integer to run the collatz conjecture on: ";
    std::cin >> number;
    peak = number;

    auto a = std::chrono::high_resolution_clock::now();

    while (number != 1) {
        if (number % 2) {
            number = (number * 3 + 1);
            if (number > peak)
                peak = number;
            number /= 2;
            steps += 2;
        }
        else {
            number /= 2;
            if (number > peak)
                peak = number;
            steps += 1;
        }
    }
    auto b = std::chrono::high_resolution_clock::now();
    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(b - a).count();

    std::cout <<
        "\nSteps to reach 1: " << steps <<
        "\nPeak number reached: " << peak <<
        "\nExecution time (in nanoseconds): " << time << '\n';
}
