@echo off & setlocal enabledelayedexpansion
title ���������е�Ӧ�ý���monkey����
:: Author donnymoving@gmail.com
echo ע�⣺һ��ֻ��monkey����һ��Ӧ��
echo=
for /f "delims=" %%t in ('adb shell dumpsys window ^| findstr mCurrentFocus') do (set value=%%t)
for /f "tokens=1* delims=/" %%a in ("%value:~34%") do (
  if "%%a"=="NotificationShade}" (
      echo �������������ٽ���monkey����
      echo=
      GOTO :END
  ) else (
        if "%%a"=="com.bbk.studyos.launcher" (
          echo ���Ӧ�ú��ٽ���monkey����
      	  echo=
      	  GOTO :END
  	) else (
      	  set package=%%a
  	)
  )
)
echo=
echo ��ǰӦ�õİ�����:%package%
echo=
echo ����monkey���Ե�Ӧ������:
set /p app=
echo �����Ӧ��������:%app%
echo=
echo monkey�����ǣ�
echo adb shell monkey -p %package% --throttle 300 --pct-touch 80 -v -v -v 3500 ^> E:\test\monkeytest.txt
echo=
echo ��ʼִ��monkey����
adb shell monkey -p %package% --throttle 300 --pct-touch 80 -v -v -v 3500 > E:\test\monkeytest.txt
echo=
echo monkeyִ�н�������鿴monkeytest.txt
pause

:END
  pause