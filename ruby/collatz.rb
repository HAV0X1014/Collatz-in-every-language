# Written by @DrParanoya on 01/19/2026

print "Please enter a positive integer to run the collatz conjecture on: "

number = $stdin.gets.to_i
peak = number
steps = 0

start = Time.now

while number != 1
  if number % 2 == 0
    number /= 2
  else
    number = number * 3 + 1
  end
  steps += 1
  if number > peak
    peak = number
  end
end

print "\nSteps to reach 1: #{steps}\nPeak number reached: #{peak}\nTime taken (in nanoseconds): #{(Time.now - start) * 1000000000}"
