@echo off & setlocal enabledelayedexpansion
title ѹ����ǰ·���������ļ����ļ���
echo=
cd /d "%~dp0"
dir /ad/b * >> list.txt
set a=WinRAR a -ep1 -r -x*.bat -xlist.txt -x*\netlog\ -m1 -df -afzip
echo ��ʼѹ����־...
for /f "delims=" %%i in (list.txt)  do (%a% %%i *)
echo ѹ����ɣ�ɾ��Դ�ļ�
del /f /s /q list.txt
dir /b/a:d >path.txt
for /f "delims=" %%j in (path.txt) do rd /s /Q %%j
del /f /s /q path.txt
echo=