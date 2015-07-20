@echo off

for /r "D:\batch\for" %%i in (aaa*.*) do rename %%i ago%%~ni%%~xi

pause
