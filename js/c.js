// Written with <3 by @DrParanoya on 08/23/2025
// Golfed Collatz Conjecture in JS (98 characters)
// Runs in brower console

var n=prompt(),s=0,p=n,a=Date.now();for(;n!=1;){n=n%2?n*3+1:n/2;s++;p=n>p?n:p;}[Date.now()-a,p,s];