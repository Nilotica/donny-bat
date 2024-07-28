@echo off & setlocal enabledelayedexpansion
title 压缩当前路径下所有文件及文件夹
echo=
cd /d "%~dp0"
dir /ad/b * >> list.txt
set a=WinRAR a -ep1 -r -x*.bat -xlist.txt -x*\netlog\ -m1 -df -afzip
echo 开始压缩日志...
for /f "delims=" %%i in (list.txt)  do (%a% %%i *)
echo 压缩完成，删除源文件
del /f /s /q list.txt
dir /b/a:d >path.txt
for /f "delims=" %%j in (path.txt) do rd /s /Q %%j
del /f /s /q path.txt
echo=