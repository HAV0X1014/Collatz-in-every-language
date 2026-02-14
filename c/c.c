// Written with <3 by @DrParanoya on 08/23/2025
// Golfed Collatz Conjecture in Ansi-C (154 characters, 168 with -includetime.h)
// gcc c.c -ansi -includetime.h

main(){int n,s=scanf("%d",&n),p=s;auto a=clock();for(;n!=1;){n=n%2?n*3+1:n/2;++s;p=n>p?n:p;}printf("%d %d %f",--s,p,((float)(clock()-a))/CLOCKS_PER_SEC);}