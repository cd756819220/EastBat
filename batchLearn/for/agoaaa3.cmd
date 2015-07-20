@echo off

::%%~fI - 将 %I 扩展到一个完全合格的路径名
for /f "delims==" %%i in ('dir /b') do @echo %%~fi
for /f "delims=" %%i in ('dir /b') do @echo %%i

::%%~dI - 仅将 %I 扩展到一个驱动器号
for /f "delims=" %%i in ('dir /b') do @echo %%~di

::打印路径
for /f "delims=" %%i in ('dir /b') do @echo %%~pi

::仅文件名
for /f "delims=" %%i in ('dir /b') do @echo %%~ni

::扩展名
for /f "delims=" %%i in ('dir /b') do @echo %%~xi

::绝对短文件名
for /f "delims=" %%i in ('dir /b') do @echo %%~si

::文件属性
for /f "delims==" %%i in ('dir /b') do @echo %%~ai

::建立日期
for /f "delims=" %%i in ('dir /b') do @echo %%~ti

::文件大小
for /f "delims==" %%i in ('dir /b') do @echo %%~zi

::上面例子中的"delims=="可以改为"delims="，即不要分隔符

pause
