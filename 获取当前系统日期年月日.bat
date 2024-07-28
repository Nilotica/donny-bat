@echo off
for /f "tokens=2 delims==" %%a in ('wmic path win32_operatingsystem get LocalDateTime /value') do (
  set t=%%a
)
set Today=%t:~0,4%-%t:~4,2%-%t:~6,2%
echo %Today%
pause