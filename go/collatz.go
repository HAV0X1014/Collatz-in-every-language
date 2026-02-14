// @DrParanoya on 12/04/2025
// Updated on 02/11/2026
// Go compiles faster than Kotlin

package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Print("Please enter a positive integer to run the collatz conjecture on: ")
	var number int64
	_, err := fmt.Scanf("%d", &number)
	if err != nil {
		fmt.Print("An error occured.")
		return
	}
	if number < 1 {
		fmt.Print("Invalid number!")
		return
	}

	var steps int64
	peak := number

	start := time.Now()
	for ; number != 1; {
		if number % 2 == 0 {
			number /= 2
		} else {
			number = number * 3 + 1
		}
		if number > peak {
			peak = number
		}
		steps++
	}
	var duration = time.Since(start).Nanoseconds()
	fmt.Printf("Steps to reach 1: %d\nPeak number reached: %d\nExecution time (in nanoseconds): %d", steps, peak, duration)
}
