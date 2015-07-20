@echo off

set a=bbs.very bat. cn
echo before:%a%
set var=%a: =%
echo after:%var%

set var1=%a:b=c%
echo after again:%var1%

set var2=%a:bb=cheng%
echo after again:%var2%
pause
