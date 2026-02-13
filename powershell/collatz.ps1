# Written by @DrParanoya on 02/11/2026
# Updated on 02/13/2026

[System.Int64] $number = Read-Host "Please enter a positive integer to run the collatz conjecture on"
[System.Int64] $peak = $number
[System.Int64] $steps = 0

if ($number -lt 1) {
	throw "Invalid input!"
}

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