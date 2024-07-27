@echo off
setlocal enabledelayedexpansion
title 删除目标文件夹下所有子文件夹及文件
:: 设置目标文件夹路径

echo 设置要删除目标文件夹路径(例如：D:\app):
set /p target_folder=
echo 目标文件夹路径是:%target_folder%
echo=
:: 确认目标文件夹是否存在
if not exist "%target_folder%" (
    echo 指定的父文件夹不存在。
    pause
    exit /b 1
)

:: 进入目标文件夹
cd /d "%target_folder%"

echo 现在时间：%date:~0,10% %time:~0,8%

echo 开始删除...

:: 循环删除所有子文件夹中的文件和子文件夹
for /d /r %%p in (*) do (
    echo 正在清理子文件夹: "%%p"
    del /f /s /q "%%p\*"
    rd /s /q "%%p"
)

:: 显示完成信息
echo 现在时间：%date:~0,10% %time:~0,8%
echo 所有子文件夹中的文件和子文件夹已被删除。
pause