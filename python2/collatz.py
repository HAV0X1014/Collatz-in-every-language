# Written by OrangeMan432 on 8/23/2025
from time import clock

num = int(input("Input a starting number: "))

count = 0
peak_num = num

start = clock()

while num != 1:
    if num % 2 == 0:
        num = num // 2
    else:
        num = num * 3 + 1
    if num >= peak_num:
        peak_num = num
    count += 1

print "Completed in {} seconds.".format(clock() - start)
print "Completed after {} steps.".format(count)
print "Peak number was {}.".format(peak_num)
