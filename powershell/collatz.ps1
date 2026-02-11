# Written by @DrParanoya on 02/11/2026

[int] $number = Read-Host "Please enter a positive integer to run the collatz conjecture on"
[int] $peak = $number
[int] $steps = 0

$stopwatch = [Diagnostics.Stopwatch]::StartNew()

while ($number -ne 1) {
	if ($number % 2 -eq 0) {
		$number /= 2
	} else {
		$number = $number * 3 + 1
	}
	
	if ($number -gt $peak) {
		$peak = $number
	}
	
	$steps++
}

$stopwatch.Stop()

$time = $stopwatch.Elapsed

Write-Host "Steps to reach 1 : $steps`nPeak number reached: $peak`nTime taken: $time"