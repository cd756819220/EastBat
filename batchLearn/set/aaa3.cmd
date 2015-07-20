@echo off

set a=bbsverybat.cn
set var=%a:~1,2%
echo %var%

set var=%a:~-4%
echo %var%

set var=%a:~4%
echo %var%

set var=%a:~2,-4%
echo %var%

pause
