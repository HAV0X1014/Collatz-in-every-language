# Written with <3 by @DrParanoya on 08/23/2025
# Golfed Collatz Conjecture in Python 3 (130 characters)

import time;n=int(input());s=0;p=n;a=time.time()
while n!=1:
 n=n/2 if n%2==0 else n*3+1
 if n>p:
  p=n
print([s,p,time.time()-a])