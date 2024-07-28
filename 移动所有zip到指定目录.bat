@echo off & setlocal enabledelayedexpansion
title 移动文件
echo=
echo 脚本作用：移动当前路径下所有zip压缩文件到指定的路径
echo=
echo=
dir *.zip /S/B >zip.txt
echo 获取zip压缩文件路径完成
echo 请输入zip要移动到的位置的路径:
set /p target=
for /f %%a in (zip.txt) do set /a no+=1
for /f "delims=" %%i in (zip.txt)  do (
  set /a n+=1
  echo !n! 移动文件:%%i
  echo ...... 正在移动第!n!个文件夹，共%no%个
  move %%i %target%
  echo=
)
del /f /s /q zip.txt
echo=
echo 全部移动完成
echo 结束，按回车键关闭
pause>nul&&exit