@echo off
title ʵʱ����ļ��д�С�������趨��ֵʱɾ�������ļ���
:: Author donnymoving@gmail.com
REM Ĭ����ֵΪ1GB������1GBʱɾ����һ���ļ���
set "CurrentFolder=%cd%"
set TargetFolder=%CurrentFolder%
set "ThresholdSize=1073741824" REM 1GB in bytes
echo=
:loop
cls
echo ��ǰ�ļ���λ��:%CurrentFolder%
echo ���ڼ���ļ��д�С......
for /f "delims=" %%a in ('wmic os get LocalDateTime ^| find "."') do set datetime=%%a
set "CurrentDateTime=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%"
echo ��ǰʱ��: %CurrentDateTime%
echo=
for /f "tokens=3 delims= " %%A in ('dir /-c /s "%TargetFolder%" ^| find "�ļ�"') do (
    set "FolderSize=%%A"
)
set /a mbsize=%FolderSize% / 1024 / 1024
set /a gbsize=%FolderSize% / 1024 / 1024 / 1024
if %gbsize%==0 (
    echo ��ǰ�ļ��д�С: %mbsize% MB
) else (
    echo ��ǰ�ļ��д�С: %gbsize% GB
)

if %FolderSize% gtr %ThresholdSize% (
    echo �ļ��д�С����1GB. ɾ����һ���ļ���......
    for /d %%D in ("%TargetFolder%\*") do (
        rd /s /q "%%D"
    )
)

timeout /nobreak /t 10 >nul
goto loop