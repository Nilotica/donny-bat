@echo off & setlocal enabledelayedexpansion
title 对正在运行的应用进行monkey测试
:: Author donnymoving@gmail.com
echo 注意：一次只能monkey测试一个应用
echo=
for /f "delims=" %%t in ('adb shell dumpsys window ^| findstr mCurrentFocus') do (set value=%%t)
for /f "tokens=1* delims=/" %%a in ("%value:~34%") do (
  if "%%a"=="NotificationShade}" (
      echo 请亮屏解锁后再进行monkey测试
      echo=
      GOTO :END
  ) else (
        if "%%a"=="com.bbk.studyos.launcher" (
          echo 请打开应用后再进行monkey测试
      	  echo=
      	  GOTO :END
  	) else (
      	  set package=%%a
  	)
  )
)
echo=
echo 当前应用的包名是:%package%
echo=
echo 输入monkey测试的应用名称:
set /p app=
echo 输入的应用名称是:%app%
echo=
echo monkey命令是：
echo adb shell monkey -p %package% --throttle 300 --pct-touch 80 -v -v -v 3500 ^> E:\test\monkeytest.txt
echo=
echo 开始执行monkey测试
adb shell monkey -p %package% --throttle 300 --pct-touch 80 -v -v -v 3500 > E:\test\monkeytest.txt
echo=
echo monkey执行结束，请查看monkeytest.txt
pause

:END
  pause