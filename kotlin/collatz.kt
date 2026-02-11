// @DrParanoya on 12/04/2025
// Updated on 02/11/2026
// Collatz Conjecture in Kotlin
// Kotlin takes a long time to compile >:(

import java.util.Scanner
import kotlin.system.measureNanoTime

fun main() {
    val scanner = Scanner(System.`in`)
    print("Please enter a positive integer to run the collatz conjecture on: ")
    var number = scanner.nextInt()
    var peak = number
    var steps = 0
    if (number < 0) {
        print("Invalid number!")
        return
    }
    val time = measureNanoTime {
        while (number != 1) {
            if (number % 2 == 0)
                number /= 2
            else
                number = number * 3 + 1
            if (number > peak)
                peak = number
            ++steps
        }
    }
    println("Steps to reach 1: $steps\nPeak number reached: $peak\nExecution time: $time nanoseconds")
}