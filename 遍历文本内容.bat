@echo off
:: Author donnymoving@gmail.com
setlocal EnableExtensions
title 遍历文本内容
for /f "tokens=1,2,* delims= " %%i in (run.log) do echo %%i %%j %%k
echo=
endlocal && pause>nul&&exit