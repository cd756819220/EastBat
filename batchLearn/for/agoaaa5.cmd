@echo off

for /r "D:\batch\for" %%i in (aaa*.cmd) do rename %%i ago%%~ni%%~xi

pause
