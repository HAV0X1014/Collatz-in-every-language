// Written with <3 by @DrParanoya on 08/23/2025
// Golfed Collatz Conjecture in Ansi-C (165 characters, 179 with -includetime.h)
// gcc c.c -ansi -includetime.h

main(){uint64_t n,s=scanf("%llu",&n),p=s;auto a=clock();for(;n!=1;){n=n%2?n*3+1:n/2;++s;p=n>p?n:p;}printf("%llu %llu %f",--s,p,((float)(clock()-a))/CLOCKS_PER_SEC);}