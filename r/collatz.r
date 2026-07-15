# r is awful.
# DrParanoya 15/07/2026 (DD/MM/YYYY)
cat("Please enter a positive integer to run the collatz conjecture on!\n")
number <- 5

if (number <= 0) {
    cat("Invalid input!")
}

peak <- number
steps <- 0

start <- Sys.time()

x <- c(0)
y <- c(number)

while (number != 1) {
    if (number %% 2 == 0) {
        number <- number / 2
    } else {
        number <- number * 3 + 1
    }

    if (number > peak) {
        peak <- number
    }

    steps <- steps + 1
    x <- c(x, steps)
    y <- c(y, number)
}
end <- Sys.time()
taken <- end - start

cat("Steps to reach 1: ")
cat(steps)
cat("\nPeak number reached: ")
cat(peak)
cat("\nTime taken (in seconds): ")
cat(taken)

plot(x, y, main="Collatz Conjecture", xlab="Steps", ylab="Number", type="l")
