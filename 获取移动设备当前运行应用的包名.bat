@echo off & setlocal enabledelayedexpansion
title ��ȡ��ǰ����Ӧ�õİ���
echo �л�������ͬ��Ӧ�ÿ�������ȡ����
echo=
:LOOP
for /f "delims=" %%t in ('adb shell dumpsys window ^| findstr mCurrentFocus') do (set value1=%%t)
if "%value1%"=="" (
  echo �������豸���ٻ�ȡ����
  GOTO :WAIT
)
for /f "tokens=1* delims=/" %%a in ("%value1%") do (
  set value2=%%a
)
for /f "tokens=1* delims= " %%b in ("%value2%") do (
  set value3=%%c
)
for /f "tokens=1* delims= " %%d in ("%value3%") do (
  set package=%%e
)
if "%package%"=="NotificationShade}" (
  echo �������������ٻ�ȡ����
  GOTO :WAIT
)
if "%package%"=="com.bbk.studyos.launcher" (
  echo ���Ӧ�ú��ٻ�ȡ����
  GOTO :WAIT
)
echo %package% | clip
echo ��ǰӦ�õİ�����:%package%    
echo=
echo �����Ѹ��Ƶ�������,��ֱ��ճ��ʹ��
pause

:WAIT
 echo �ȴ�5��......
 ping 127.0.0.1 -n 5 > nul
 echo=
 GOTO :LOOP


