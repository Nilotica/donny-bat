@echo off
title 遍历当前文件夹下文件
:: Author donnymoving@gmail.com
setlocal
for %%i in (* *) do echo %%i
echo=
endlocal && pause>nul&&exit
