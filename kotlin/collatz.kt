// @DrParanoya on 08/23/2025
// Collatz Conjecture in Kotlin
// Kotlin takes a long time to compile >:(

import java.util.Scanner
import kotlin.system.measureNanoTime

fun main() {
    val scanner = Scanner(System.`in`)
    print("Please enter a positive integer to run the collatz conjecture on: ")
    var number = scanner.nextInt()
    var peak = 0
    var steps = 0
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
    println("Steps to reach 1: $steps\nPeak number reached: $peak\nExecution time: " + time.toDouble() / 1000000 + " milliseconds")
}
