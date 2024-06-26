@echo off & setlocal enabledelayedexpansion
title 批量安装APK应用
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo     提示：安装应用前请保证移动设备与电脑数据线连接正常(在 cmd 中输入 adb devices 命令可检查)
echo         (脚本运行时会自动修改以api结尾的文件名为.apk结尾，方便后续安装)
echo=
echo     检测设备是否连接正常(若List of devices attached下方出现 device 表示连接正常，其它情况均为不正常)......
adb devices 
echo=
echo     清理无用的 install.log、cmds.txt、allcmds.txt 文件(若提示系统找不到，不影响后续安装)......
del /f /s /q install.log
del /f /s /q cmds.txt
del /f /s /q allcmds.txt
echo=
echo     修改以api结尾的文件(若提示系统找不到指定的文件不影响后续安装)......
ren api* *.apk
dir *.apk /S/B >list.txt
echo=
echo=
echo ===============================================开始安装应用===============================================
echo=
set b=adb install -r
for /f %%a in (list.txt) do set /a no+=1
echo     将安装%no%个APP，若APK文件较大(超过1GB)可将其移动到其他文件夹下，再复制 install.bat 到这个文件夹下单独安装以节省安装时间
echo=
for /f "delims=" %%i in (list.txt)  do (
  set /a n+=1
  CALL :START
  echo !n! 安装APP %%i
  echo ...... 正在安装第!n!个APP，共%no%个
  echo !n! %b% %%i >> ^install.log
  %b% %%i >> ^install.log
  echo !n! %b% %%i >> ^cmds.txt
  echo %b% %%i >> ^allcmds.txt
  CALL :CHECK
  echo=
)

echo     结束：共%no%个APP
echo ================================================安装结束了================================================
echo=
echo     请检查所有应用是否都安装成功
echo=
echo     清理无用的文件 list.txt......
del /f /s /q list.txt
echo=
echo     应用安装失败时的解决方案：
echo         当前文件夹下生成的 cmds.txt 包含所有应用带序号的安装命令，当某几个应用安装失败时可在 cmd 中手动单独输入这些命令重试
echo         当前文件夹下生成的 allcmds.txt 包含所有应用不带序号的安装命令，当一批应用安装失败时可在 cmd 中手动批量输入这些命令重试
pause>nul&&exit

:START
  echo 时间：%date:~0,10% %time:~0,8%
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
  echo ======》安装成功) else (
  echo 安装失败 >> ^install.log
  echo ======》安装失败)
  GOTO :EOF
