@echo off & setlocal enabledelayedexpansion
title ����ж��APKӦ��
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo     ж����ʾ��ж��ǰ�뱣֤�ƶ��豸�����������������(�� cmd ������ adb devices �ɼ��)
echo         (ж��ʱĬ�ϻᱣ��QQ��΢��)
echo         (ֻж�ص�����Ӧ�ã�����ж��ϵͳӦ��)
echo         (ÿ�����ж��������ϴ����� ж����־(ж�سɹ����ɾ�����ļ�).log �ļ�����Щ�ļ�ͨ������ʹ��)
echo=
echo     ����豸�Ƿ�����������������List of devices attached���������һ���ַ��� device ��ʾ�豸������������������������Ϊ��������
adb devices 
echo=
echo     �������õ� uninstall.txt������ʾϵͳ�Ҳ���ָ�����ļ���Ӱ��ж�أ�
del /f /s /q unlist.txt 
del /f /s /q ж����־(ж�سɹ����ɾ�����ļ�).log
del /f /s /q unallcmds(ж�سɹ����ɾ�����ļ�).txt
echo=
set b=adb shell pm list packages -3
set x=adb uninstall
%b% >> unlist.txt
echo=
echo ==============================================��ʼж��Ӧ��==============================================
echo ʱ�䣺%date:~0,10% %time:~0,8%
echo=
for /f "delims=" %%i in (unlist.txt)  do (
  set /a n+=1
  set str=%%i
  set un=!str!
  set s=!un:~8!
::����QQ�İ�����ж�أ����������һ���ж�
  if not "!s!"=="com.tencent.mobileqq" (CALL :SKIPA) else (CALL :SKIP)
  echo=
)
echo %date:~0,10% %time:~0,8%
ENDLOCAL
echo ================================================ж�ؽ�����===============================================
echo=
echo     ��� uninstall.log ���Ӧ���Ƿ�ж�سɹ�
echo=
echo     ���������õ��ļ� unlist.txt ��
del /f /s /q unlist.txt
echo=
echo     Ӧ��ж��ʧ��ʱ�Ľ��������
echo     ��ǰ�ļ��������ɵ� unallcmds.txt ��������Ӧ�ò�����ŵ�ж�������һ��Ӧ��ж��ʧ��ʱ���� cmd ���ֶ�������������
exit

:UNINSTALL
  echo !n! ��ʼж��APP��!s!
  echo !n! %x% !s! >> ^ж����־(ж�سɹ����ɾ�����ļ�).log
  %x% !s! >> ^ж����־(ж�سɹ����ɾ�����ļ�).log
  echo %x% !s! >> ^unallcmds(ж�سɹ����ɾ�����ļ�).txt
  GOTO :EOF

:SKIP
  echo !n! ����ж�����õ�APP��!s!
  echo !n! �������õ�APP !s! >> ^ж����־(ж�سɹ����ɾ�����ļ�).log
  GOTO :EOF

::����΢�ŵİ�����ж�أ���������
:SKIPA
  if not "!s!"=="com.tencent.mm" (CALL :UNINSTALL) else (CALL :SKIP)
  GOTO :EOF

:COLOR
  color 0A
  GOTO :EOF