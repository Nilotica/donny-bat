@echo off
title 获取当前文件所在的绝对路径
echo=
set result=%~dp0
echo 当前文件所在的绝对路径：%result%
echo=
pause>nul&&exit