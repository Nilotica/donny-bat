@echo off & setlocal enabledelayedexpansion
title ������װAPKӦ��
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo     ��ʾ����װӦ��ǰ�뱣֤�ƶ��豸�������������������(�� cmd ������ adb devices ����ɼ��)
echo         (�ű�����ʱ���Զ��޸���api��β���ļ���Ϊ.apk��β�����������װ)
echo=
echo     ����豸�Ƿ���������(��List of devices attached�·����� device ��ʾ�������������������Ϊ������)......
adb devices 
echo=
echo     �������õ� install.log��cmds.txt��allcmds.txt �ļ�(����ʾϵͳ�Ҳ�������Ӱ�������װ)......
del /f /s /q install.log
del /f /s /q cmds.txt
del /f /s /q allcmds.txt
echo=
echo     �޸���api��β���ļ�(����ʾϵͳ�Ҳ���ָ�����ļ���Ӱ�������װ)......
ren api* *.apk
dir *.apk /S/B >list.txt
echo=
echo=
echo ===============================================��ʼ��װӦ��===============================================
echo=
set b=adb install -r
for /f %%a in (list.txt) do set /a no+=1
echo     ����װ%no%��APP����APK�ļ��ϴ�(����1GB)�ɽ����ƶ��������ļ����£��ٸ��� install.bat ������ļ����µ�����װ�Խ�ʡ��װʱ��
echo=
for /f "delims=" %%i in (list.txt)  do (
  set /a n+=1
  CALL :START
  echo !n! ��װAPP %%i
  echo ...... ���ڰ�װ��!n!��APP����%no%��
  echo !n! %b% %%i >> ^install.log
  %b% %%i >> ^install.log
  echo !n! %b% %%i >> ^cmds.txt
  echo %b% %%i >> ^allcmds.txt
  CALL :CHECK
  echo=
)

echo     ��������%no%��APP
echo ================================================��װ������================================================
echo=
echo     ��������Ӧ���Ƿ񶼰�װ�ɹ�
echo=
echo     �������õ��ļ� list.txt......
del /f /s /q list.txt
echo=
echo     Ӧ�ð�װʧ��ʱ�Ľ��������
echo         ��ǰ�ļ��������ɵ� cmds.txt ��������Ӧ�ô���ŵİ�װ�����ĳ����Ӧ�ð�װʧ��ʱ���� cmd ���ֶ�����������Щ��������
echo         ��ǰ�ļ��������ɵ� allcmds.txt ��������Ӧ�ò�����ŵİ�װ�����һ��Ӧ�ð�װʧ��ʱ���� cmd ���ֶ�����������Щ��������
pause>nul&&exit

:START
  echo ʱ�䣺%date:~0,10% %time:~0,8%
  echo %date:~0,10% %time:~0,8% >> ^install.log
  GOTO :EOF

:COLOR
  color 0A
  GOTO :EOF

:CHECK
  for /f "delims=" %%j in ('type install.log') do (
    set lastline=%%j
  )
  if "%lastline%"=="Success" (
  echo ======����װ�ɹ�) else (
  echo ��װʧ�� >> ^install.log
  echo ======����װʧ��)
  GOTO :EOF
