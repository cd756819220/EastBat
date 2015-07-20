@echo off

set a=999
set /p b=please input:

echo %a%
echo %b%

set aa=0812
set /a aa=1%aa%-10000
echo %aa%

set /bb=%b%
echo bb
pause
