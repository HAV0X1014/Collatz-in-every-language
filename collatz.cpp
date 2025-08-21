// Written with <3 by @DrParanoya on 08/21/2025
// Collatz Conjecture in C++14

#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>

int main() {
    uint64_t num = 1, steps = 0, peak = 0, peakStart = 0, start = 1;
    bool halfed = false;
    std::cout << "Welcome\n\nPlease enter a positive integer to run the collatz conjecture on: ";
    std::cin >> num;
    auto a = std::chrono::high_resolution_clock::now();
    while (num != 1) {
        if (num % 2) {
            num = (num * 3 + 1);
            if (num > peak)
                peak = num;
            num /= 2;
            steps += 2;
        }
        else {
            num /= 2;
            if (num > peak)
                peak = num;
            steps += 1;
        }
    }
    auto b = std::chrono::high_resolution_clock::now();
    auto timeNano = std::chrono::duration_cast<std::chrono::nanoseconds>(b - a).count();
    double timeMilli = static_cast<double>(timeNano) / 1'000'000.0;
    double timeSeconds = timeMilli / 1'000.0;
    std::cout <<
        "\nSteps to reach 1: " << steps <<
        "\nPeak number reached: " << peak <<
        "\n\nExecution time\n  in nanoseconds: " << timeNano << '\n';
        if (timeNano > 1'000'000) std::cout << "  in milliseconds: " << std::fixed << std::setprecision(3) << timeMilli << '\n';
        if (timeMilli > 1000) std::cout << "  in seconds: " << std::fixed << std::setprecision(3) << timeSeconds << '\n';
}
