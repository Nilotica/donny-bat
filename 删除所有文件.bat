@echo off
setlocal enabledelayedexpansion
title ɾ��Ŀ���ļ������������ļ��м��ļ�
:: ����Ŀ���ļ���·��

echo ����Ҫɾ��Ŀ���ļ���·��(���磺D:\app):
set /p target_folder=
echo Ŀ���ļ���·����:%target_folder%
echo=
:: ȷ��Ŀ���ļ����Ƿ����
if not exist "%target_folder%" (
    echo ָ���ĸ��ļ��в����ڡ�
    pause
    exit /b 1
)

:: ����Ŀ���ļ���
cd /d "%target_folder%"

echo ����ʱ�䣺%date:~0,10% %time:~0,8%

echo ��ʼɾ��...

:: ѭ��ɾ���������ļ����е��ļ������ļ���
for /d /r %%p in (*) do (
    echo �����������ļ���: "%%p"
    del /f /s /q "%%p\*"
    rd /s /q "%%p"
)

:: ��ʾ�����Ϣ
echo ����ʱ�䣺%date:~0,10% %time:~0,8%
echo �������ļ����е��ļ������ļ����ѱ�ɾ����
pause