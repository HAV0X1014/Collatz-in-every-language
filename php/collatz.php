<?php
//Written by HAV0X_ on 9/1/2025
echo("Enter a positive integer to run the collatz conjecture on: ");
$number = (Int)readline();
$peak = $number;
$steps = 0;
echo("Starting number: $number\n");
$start_time = hrtime(true);
while ($number != 1) {
    if ($number > $peak) {
        $peak = $number;
    }
    if ($number % 2 == 0) {
        $number =  $number / 2;
        $steps++;
    } else {
        $number = $number * 3 + 1;
        $steps++;
    }
}
$end_time = hrtime(true);
$duration = ($end_time - $start_time) / 1e9;
echo("Peak number: $peak Steps: $steps Duration: $duration seconds");
?>
