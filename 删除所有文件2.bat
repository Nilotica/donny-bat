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

echo ����ʱ�䣺%date:~0,10% %time:~0,8%

echo ��ʼɾ��...

echo ɾ�� "%target_folder%"...
rd /s /q "%target_folder%"

echo Ŀ���ļ����Ѿ���ɾ��.
pause