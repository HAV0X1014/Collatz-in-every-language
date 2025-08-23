:: Written without <3 by @DrParanoya on 08/18/2025
:: Golfed Collatz Conjecture in Batch (200 characters)
:: Batch is awful! I hate it so much!

set /A n=%1+0&set /A s=0&set /A p=0&set a=%time%
:l
set /A m=n%% 2
if %m%==0 (set /A n/=2)else (set /A n=n*3+1)
set /A s=s+1&if %n% gtr %p% (set /A p=%n%)
if %n% NEQ 1 (goto l)
echo %s% %p% %a% %time%