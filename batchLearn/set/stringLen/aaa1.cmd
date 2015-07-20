@echo off

set /p b=please input str:
echo your input str is %b%

call:stringLeng "%b%" num
echo then string length is %num%

pause
exit
:stringLeng

