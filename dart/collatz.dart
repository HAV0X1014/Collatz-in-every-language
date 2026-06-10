// Written by @DrParanoya on 06/10/2026 (MM/DD/YYYY)
// I hate dart. At first, I thought the syntax was nice and the language was nice to use overall
// But the null-checker made me very very angry, even though I did everything correct
// So either there's a trick I don't know about, or the null-checker doesn't work
// I will never use dart again

import 'dart:io';

void main(List<String> arguments) {
  stdout.write(
    'Please enter a positive integer to run the collatz conjecture on: ',
  );
  var input = stdin.readLineSync();
  if (input == null) {
    print("Invalid input!");
    exit(-1);
  }
  var inNumber = int.tryParse(input);
  if (inNumber == null) {
    print("Invalid input!");
    exit(-1);
  }
  if (inNumber < 1) {
    print("Invalid input!");
    exit(-1);
  }
  int number = inNumber;
  int peak = number;
  int steps = 0;

  Stopwatch stopwatch = Stopwatch()..start();

  while (number > 1) {
    if (number % 2 == 0) {
      number ~/= 2;
    } else {
      number = number * 3 + 1;
      if (number > peak) {
        peak = number;
      }
    }
    steps += 1;
  }

  stdout.write(
    'Steps to reach 1: $steps\nPeak number reached: $peak\nTime taken: ${stopwatch.elapsed}',
  );
}
