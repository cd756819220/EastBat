@echo off

rem 首先建立临时文件  test.txt
echo ;这一行是注释哈哈 >test.txt
echo 11demile 12demile  13demile 14demile 15demile  16demile >>test.txt
echo 11demile 12demile 13demile=14demile,15demile  16demile >>test.txt
echo 31demile,32demile 33demile 34demile-35demile  36demile >>test.txt

::for /f "eol=; tokens=1, 3* delims=,-= " %%i in (test.txt) do echo %%i %%j %%k
::for /f "eol= tokens=1, 3* delims=" %%x in (test.txt) do echo %%x %%y %%z
for /f "delims=" %%i in ('net user') do @echo %%i

set ttt=4
echo %ttt%

pause
del test.txt
