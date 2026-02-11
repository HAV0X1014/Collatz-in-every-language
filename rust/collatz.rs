// @DrParanoya on 12/04/2025
// Why does it take 5 lines to read an integer from stdin? Rust is even worse than C++

use std::time::Instant;
use std::io::stdin;
use std::io::{self, Write};

fn main() {
    print!("Please enter a positive integer to run the collatz conjecture on: ");
    io::stdout().flush().expect("Could not flush stdout");

    let mut input_line = String::new();
    stdin()
        .read_line(&mut input_line)
        .expect("Failed to read line");
    let mut number: u64 = input_line.trim().parse().expect("Invalid input!");

    let mut peak: u64 = number;
    let mut steps: u64 = 0;

    let start = Instant::now();
    while number != 1 {
        if number % 2 == 0 {
            number /= 2;
        } else {
            number = number * 3 + 1;
        }
        if number > peak {
            peak = number;
        }
        steps += 1;
    }
    println!("Steps to reach 1: {}\nPeak number reached: {}\nExecution time: {:.5?}", steps, peak, start.elapsed());
}
