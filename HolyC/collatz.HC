// Collatz Conjecture in HolyC
// Written by @DrParanoya on 12/29/2025
// Updated on 02/13/2026
// HolyC is fun

extern "c" I32 scanf(U8 *format_string, ...);

U0 Main()
{
    I64 number = 0, peak = 0, steps = 0;
    "Please enter a positive integer to run the collatz conjecture on: ";
	scanf("%lld", &number);
	
	if (number < 1) {
		"Invalid input!\n";
		return;
	}
	
	U64 start = NowMilliseconds();
	while (number != 1) {
		if (number % 2 == 0) {
			number /= 2;
		} else {
			number = number * 3 + 1;
		}
		++steps;
		if (number > peak) {
			peak = number;
		}
	}
	U64 end = NowMilliseconds();	
	"Steps to reach 1: %llu\nPeak number reached: %llu\nTime taken (in milliseconds): %llu\n", steps, peak, end - start;
}