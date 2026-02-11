:: Written without <3 by @DrParanoya on 08/18/2025
:: Updated on 02/11/2026
:: Golfed Collatz Conjecture in Batch (230 characters)
:: Batch is awful! I hate it so much!

@echo off&set /A n=%1&set /A s=0&set /A p=1&set a=%time%
if %n%==1 (goto e)
:l
set /A m=n%% 2
if %m%==0 (set /A n/=2)else (set /A n=n*3+1)
set /A s=s+1&if %n% gtr %p% (set /A p=%n%)
if %n% NEQ 1 (goto l)
:e
echo %s% %p% %a% %time%