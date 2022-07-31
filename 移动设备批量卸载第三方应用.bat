@echo off & setlocal enabledelayedexpansion
title 批量卸载APK应用
:: Author donnymoving@gmail.com
CALL :COLOR
echo=
echo     卸载提示：卸载前请保证移动设备与电脑数据连接正常(在 cmd 中输入 adb devices 可检查)
echo         (卸载时默认会保留QQ、微信)
echo         (只卸载第三方应用，不会卸载系统应用)
echo         (每次运行都会清理上次生成 卸载日志(卸载成功后可删除此文件).log 文件，这些文件通常不再使用)
echo=
echo     检测设备是否连接正常，若出现List of devices attached及下面出现一串字符和 device 表示设备与电脑连接正常，其它情况均为不正常：
adb devices 
echo=
echo     清理无用的 uninstall.txt，若提示系统找不到指定的文件不影响卸载：
del /f /s /q unlist.txt 
del /f /s /q 卸载日志(卸载成功后可删除此文件).log
del /f /s /q unallcmds(卸载成功后可删除此文件).txt
echo=
set b=adb shell pm list packages -3
set x=adb uninstall
%b% >> unlist.txt
echo=
echo ==============================================开始卸载应用==============================================
echo 时间：%date:~0,10% %time:~0,8%
echo=
for /f "delims=" %%i in (unlist.txt)  do (
  set /a n+=1
  set str=%%i
  set un=!str!
  set s=!un:~8!
::不是QQ的包名就卸载，否则进行下一步判断
  if not "!s!"=="com.tencent.mobileqq" (CALL :SKIPA) else (CALL :SKIP)
  echo=
)
echo %date:~0,10% %time:~0,8%
ENDLOCAL
echo ================================================卸载结束了===============================================
echo=
echo     请打开 uninstall.log 检查应用是否卸载成功
echo=
echo     清理不需再用的文件 unlist.txt ：
del /f /s /q unlist.txt
echo=
echo     应用卸载失败时的解决方案：
echo     当前文件夹下生成的 unallcmds.txt 包含所有应用不带序号的卸载命令，当一批应用卸载失败时可在 cmd 中手动批量输入重试
exit

:UNINSTALL
  echo !n! 开始卸载APP：!s!
  echo !n! %x% !s! >> ^卸载日志(卸载成功后可删除此文件).log
  %x% !s! >> ^卸载日志(卸载成功后可删除此文件).log
  echo %x% !s! >> ^unallcmds(卸载成功后可删除此文件).txt
  GOTO :EOF

:SKIP
  echo !n! 忽略卸载有用的APP：!s!
  echo !n! 保留有用的APP !s! >> ^卸载日志(卸载成功后可删除此文件).log
  GOTO :EOF

::不是微信的包名就卸载，否则跳过
:SKIPA
  if not "!s!"=="com.tencent.mm" (CALL :UNINSTALL) else (CALL :SKIP)
  GOTO :EOF

:COLOR
  color 0A
  GOTO :EOF