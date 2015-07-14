@echo off

::echo create file is %1.lua
::copy /y TestUI1.lua %1.lua

set replaced=EastCheng
set all=%1
set timeStr=createTimeStr
set curTimeStr=%date:~0,10% %time:~0,8%
set modelFile=model.lua
set tempFileName=%1_tmp.tmp
set createPath=E:/allProject/trunk/program/client/res/script/ui/
::TestUI1.lua
echo replaced=%replaced%
echo all=%all%


setlocal enabledelayedexpansion

for /f "tokens=1,2 delims=#" %%a in ('findstr /n .* %modelFile%') do (
set isEmpty=0
for /f "delims=" %%i in ('findstr /n "^$" %modelFile%') do (set t=%%i&set t=!t::=!
if %%a==!t!: set isEmpty=1
)
if !isEmpty! equ 1 (@echo.>>%tempFileName%) else (
set str=%%b

set str=!str:%replaced%=%all%!
set str=!str:%timeStr%=%curTimeStr%!
@echo !str!>>%tempFileName%
)
)
ren %tempFileName% %1.lua
move %1.lua %createPath%
pause
