@echo off & setlocal enabledelayedexpansion
title 批量下载文件
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo=
echo     提示：运行此脚本之前确保电脑中已配置wget环境变量，否则不支持下载
echo     请先在 download.txt 中按行粘贴下载链接地址后再运行
echo ===============================================开始下载文件===============================================
echo=
set a=wget -P
set p=.
for /f %%a in (download.txt) do set /a no+=1
echo     将下载%no%个文件
echo=
for /f "delims=" %%i in (download.txt)  do (
  set /a n+=1
  echo !n! 下载第!n!个文件，共%no%个
  echo=
  echo !n! %a% %p% %%i >> ^download.log
  %a% %p% %%i
  echo=
)
echo     结束：共下载%no%个文件
echo ================================================下载结束了================================================
echo=
echo     请打开 download.log 查看应用下载详情情况
pause>nul&&exit

:COLOR
  color 0A
  GOTO :EOF