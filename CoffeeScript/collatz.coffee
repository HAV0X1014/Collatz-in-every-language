#Written by HAV0X_ on 12/28/2025
#Written on coffeescript.org/#try and jsfiddle.net
number = 0
peak = 0
steps = 0

number = prompt "Input a positive integer to run the collatz conjecture on: "
console.log "Starting number: #{number}"

startTime = performance.now()

while number isnt 1
  if number > peak
    peak = number
  if number % 2 is 0
    number = number / 2
  else
    number = number * 3 + 1
  steps++
  console.log number

endTime = performance.now()
duration = endTime - startTime
console.log "Peak number: #{peak} Steps: #{steps} Duration: #{duration}"
