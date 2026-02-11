# Written by OrangeMan432 on 8/18/2025
from time import perf_counter

num = int(input("Input a starting number: "))

count = 0
peak_num = num

start = perf_counter()

while num != 1:
    if num % 2 == 0:
        num = num // 2
    else:
        num = num * 3 + 1
    if num >= peak_num:
        peak_num = num
    count += 1

print(f"Completed in {perf_counter() - start} seconds.")
print(f"Completed after {count} steps.")
print(f"Peak number was {peak_num}.")
