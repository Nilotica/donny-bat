@echo off & setlocal enabledelayedexpansion
title 获取当前运行应用的包名
echo 切换启动不同的应用可连续获取包名
echo=
:LOOP
for /f "delims=" %%t in ('adb shell dumpsys window ^| findstr mCurrentFocus') do (set value1=%%t)
if "%value1%"=="" (
  echo 请连接设备后再获取包名
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
  echo 请亮屏解锁后再获取包名
  GOTO :WAIT
)
if "%package%"=="com.bbk.studyos.launcher" (
  echo 请打开应用后再获取包名
  GOTO :WAIT
)
echo %package% | clip
echo 当前应用的包名是:%package%    
echo=
echo 包名已复制到剪贴板,可直接粘贴使用
pause

:WAIT
 echo 等待5秒......
 ping 127.0.0.1 -n 5 > nul
 echo=
 GOTO :LOOP


