@echo off
echo ^"1111>temp.txt
echo "2222">>temp.txt
echo 3333^">>temp.txt
echo "4444"44>>temp.txt
echo ^"55"55"55>>temp.txt

echo ====================
type temp.txt
echo =====================

for /f "delims=" %%i in (temp.txt) do echo %%~i
::无头不删，有头连尾删。有头一定删除
pause
del temp.txt
