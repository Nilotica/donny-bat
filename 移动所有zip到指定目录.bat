@echo off & setlocal enabledelayedexpansion
title �ƶ��ļ�
echo=
echo �ű����ã��ƶ���ǰ·��������zipѹ���ļ���ָ����·��
echo=
echo=
dir *.zip /S/B >zip.txt
echo ��ȡzipѹ���ļ�·�����
echo ������zipҪ�ƶ�����λ�õ�·��:
set /p target=
for /f %%a in (zip.txt) do set /a no+=1
for /f "delims=" %%i in (zip.txt)  do (
  set /a n+=1
  echo !n! �ƶ��ļ�:%%i
  echo ...... �����ƶ���!n!���ļ��У���%no%��
  move %%i %target%
  echo=
)
del /f /s /q zip.txt
echo=
echo ȫ���ƶ����
echo ���������س����ر�
pause>nul&&exit