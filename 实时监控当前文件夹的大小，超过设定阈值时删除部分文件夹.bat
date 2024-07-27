@echo off
title 实时监控文件夹大小，超过设定阈值时删除部分文件夹
:: Author donnymoving@gmail.com
REM 默认阈值为1GB，超过1GB时删除第一个文件夹
set "CurrentFolder=%cd%"
set TargetFolder=%CurrentFolder%
set "ThresholdSize=1073741824" REM 1GB in bytes
echo=
:loop
cls
echo 当前文件夹位置:%CurrentFolder%
echo 正在监控文件夹大小......
for /f "delims=" %%a in ('wmic os get LocalDateTime ^| find "."') do set datetime=%%a
set "CurrentDateTime=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%"
echo 当前时间: %CurrentDateTime%
echo=
for /f "tokens=3 delims= " %%A in ('dir /-c /s "%TargetFolder%" ^| find "文件"') do (
    set "FolderSize=%%A"
)
set /a mbsize=%FolderSize% / 1024 / 1024
set /a gbsize=%FolderSize% / 1024 / 1024 / 1024
if %gbsize%==0 (
    echo 当前文件夹大小: %mbsize% MB
) else (
    echo 当前文件夹大小: %gbsize% GB
)

if %FolderSize% gtr %ThresholdSize% (
    echo 文件夹大小超过1GB. 删除第一个文件夹......
    for /d %%D in ("%TargetFolder%\*") do (
        rd /s /q "%%D"
    )
)

timeout /nobreak /t 10 >nul
goto loop