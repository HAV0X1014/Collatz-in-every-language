/**
 * Written by HAV0X_ on 8/26/2025
 */

using System;
                    
public class Program {
    public static void Main() {
        int steps = 0;
        int peak = 0;
        Console.WriteLine("Input a positive integer to run the collatz conjecture on: ");
        int number = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Starting number: " + number);
        var watch = System.Diagnostics.Stopwatch.StartNew();
        while (number != 1) {
            if (number > peak) peak = number;
            if (number % 2 == 0) {
                number = number / 2;
                steps++;
            } else {
                number = (number * 3) + 1;
                steps++;
            }
        }
        watch.Stop();
        Console.WriteLine("Peak number: " + peak + " Steps: " + steps + " Calculation time: " + watch.ElapsedMilliseconds + " milliseconds.");
    }
}
