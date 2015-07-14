@echo off

::echo create file is %1.lua
::copy /y TestUI1.lua %1.lua

::concat two file if they are this same lines and there is no blank line 

set modelFile1=a.txt
set modelFile2=b.txt

::%%b%%j
setlocal enabledelayedexpansion

@echo ==========================================method 1 add !@#$ ahead every line of files

for /f "tokens=1,2 delims=!@#$" %%a in ('findstr /n .* %modelFile1%') do (
for /f "tokens=1,2 delims=!@#$" %%i in ('findstr /n .* %modelFile2%') do (
if %%a equ %%i (@echo %%b%%j)
)

)

@echo ==========================================method 2 if you know the number of ":"

for /f "tokens=1-4 delims=:" %%a in ('findstr /n .* %modelFile1%') do (
for /f "tokens=1,2 delims=:" %%i in ('findstr /n .* %modelFile2%') do (
if %%a equ %%i (@echo %%b%%c%%d%%j)
)

)


@echo ==========================================method 3 by the correct line of two files
setlocal enabledelayedexpansion
set lineNum1=0
set lineNum2=0
for /f "tokens=*" %%a in (%modelFile1%) do (
set /a result1=lineNum1+=1

set lineNum2=0

for /f "tokens=*" %%i in (%modelFile2%) do (
set /a result2=lineNum2+=1
if !result1! equ !result2! (@echo %%a%%i)

)


)

pause
