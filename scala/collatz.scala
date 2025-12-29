// Written by @DrParanoya on 12/29/2025
// Collatz Conjecture in Scala

object Main {
  def main(args: Array[String]): Unit =

    println("Please enter a positive integer to run the collatz conjecture on: ");

    var number: Long = scala.io.StdIn.readLong();
    var steps: Long = 0;
    var peak: Long = 0;

    val start = System.nanoTime

    while (number != 1) {
        if (number % 2 == 0) {
            number /= 2;
        } else {
            number = number * 3 + 1;
        }
        steps += 1;
        if (number > peak) {
            peak = number;
        }
    }

    val duration = (System.nanoTime - start);

    println(s"Steps to reach 1: $steps\nPeak number reached: $peak\nTime taken (in nanoseconds): $duration");
}
