@echo off & setlocal enabledelayedexpansion
title ���������ļ�
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo=
echo     ��ʾ�����д˽ű�֮ǰȷ��������������wget��������������֧������
echo     ������ download.txt �а���ճ���������ӵ�ַ��������
echo ===============================================��ʼ�����ļ�===============================================
echo=
set a=wget -P
set p=.
for /f %%a in (download.txt) do set /a no+=1
echo     ������%no%���ļ�
echo=
for /f "delims=" %%i in (download.txt)  do (
  set /a n+=1
  echo !n! ���ص�!n!���ļ�����%no%��
  echo=
  echo !n! %a% %p% %%i >> ^download.log
  %a% %p% %%i
  echo=
)
echo     ������������%no%���ļ�
echo ================================================���ؽ�����================================================
echo=
echo     ��� download.log �鿴Ӧ�������������
pause>nul&&exit

:COLOR
  color 0A
  GOTO :EOF