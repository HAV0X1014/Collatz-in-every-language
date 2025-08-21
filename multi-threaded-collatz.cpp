// Written with <3 by @DrParanoya (this is my first multi-threaded program)
// Multi-Threaded Collatz Conjecture in C++14

#include <array>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <mutex>
#include <thread>

namespace {
uint64_t STEPS = 0;
uint64_t PEAK = 0;
uint64_t PEAK_STEPS = 0;
uint64_t PEAK_START = 0;
uint64_t PEAK_STEPS_START = 0;
std::mutex m;

static constexpr uint64_t NUM_THREADS = 4;
static constexpr uint64_t MIN = 1;
static constexpr uint64_t MAX = 1'000'000;
static constexpr uint64_t SLICE = (MAX - MIN + 1) / NUM_THREADS;
static_assert(MIN <= MAX, "MIN must be smaller or equal to MAX!");
static_assert(NUM_THREADS <= MAX, "NUM_THREADS must be smaller or equal to MAX!");
static_assert(NUM_THREADS > 0, "Must use more than 0 threads!");
static_assert((MAX - MIN + 1) % NUM_THREADS == 0, "Range modulo NUM_THREADS must be 0!");
};

void collatz(const uint64_t start) {
	const uint64_t end = start + SLICE - 1;
	uint64_t num = 0, peak = 0, steps = 0, totalSteps = 0, peakSteps = 0, peakStart = 0, peakStepsStart;
	for (uint64_t i = start; i < end; ++i) {
		num = i;
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
			if (num > peak) {
				peak = num;
				peakStart = i;
			}
		}
		if (steps > peakSteps) {
			peakSteps = steps;
			peakStepsStart = i;
		}
		totalSteps += steps;
		steps = 0;
	}
	std::lock_guard<std::mutex> lock(m);
	if (peak > PEAK) {
		PEAK = peak;
		PEAK_START = peakStart;
	}
	if (peakSteps > PEAK_STEPS) {
		PEAK_STEPS = peakSteps;
		PEAK_STEPS_START = peakStepsStart;
	}
	STEPS += totalSteps;
}

int main() {
	std::cout << "Collatz Conjecture from " << MIN << " to " << MAX << " running on " << NUM_THREADS << " threads\n" << std::endl;
	auto a = std::chrono::high_resolution_clock::now();

	std::array<std::thread, 4> threads{};

	for (size_t i = 0; i < threads.size(); ++i)
		threads[i] = std::thread(collatz, SLICE * i + 1);

	for (auto &t : threads)
		if (t.joinable()) t.join();

	auto b = std::chrono::high_resolution_clock::now();
	auto timeNano = std::chrono::duration_cast<std::chrono::nanoseconds>(b - a).count();
	double timeMilli = static_cast<double>(timeNano) / 1'000'000.0;
	double timeSeconds = timeMilli / 1'000.0;
	std::cout <<
		"Total steps to reach 1: " << STEPS << " (peak: " << PEAK_STEPS << ", at num = " << PEAK_STEPS_START << ')' <<
		"\nPeak number reached: " << PEAK <<
		" (started at " << PEAK_START << ')' <<
		"\n\nExecution time\n  in nanoseconds: " << timeNano << '\n';
        if (timeNano > 1'000'000) std::cout << "  in milliseconds: " << std::fixed << std::setprecision(3) << timeMilli << '\n';
        if (timeMilli > 1000) std::cout << "  in seconds: " << std::fixed << std::setprecision(3) << timeSeconds << '\n';
}
