// @DrParanoya on 12/04/2025
// Go compiles faster than Kotlin

package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Print("Please enter a positive integer to run the collatz conjecture on: ")
	var number int64
	var peak int64
	var steps int64
	_, err := fmt.Scanf("%d", &number)
	if err != nil {
		fmt.Print("An error occured.")
		return
	}
	if number < 0 {
		fmt.Print("Invalid number!")
		return
	}
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
	var duration float64 = float64(time.Since(start).Nanoseconds()) / 1000000.0
	fmt.Printf("Steps to reach 1: %d\nPeak number reached: %d\nExecution time: ", steps, peak)
	fmt.Print(duration, " milliseconds")
}
