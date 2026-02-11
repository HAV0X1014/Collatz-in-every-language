#!/usr/bin/perl
# Written by @DrParanoya on 01/14/2026
# First collatz of the year!


use Time::HiRes;

print "Please enter a positive integer to run the collatz conjecture on: ";
$number = <>;
$peak = $number;
$steps = 0;

$start_time = [Time::HiRes::gettimeofday()];

while ($number != 1) {
	if ($number % 2 == 0) {
		$number /= 2;
	} else {
		$number = $number * 3 + 1;
	}
	$steps++;
	if ($number > $peak) {
		$peak = $number;
	}
}

$diff = Time::HiRes::tv_interval($start_time);

print "Steps to reach 1: $steps\nPeak number reached: $peak\nTime taken (in nanoseconds): ", $diff * 1000000000, "\n";
