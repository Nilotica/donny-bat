@echo off
setlocal enabledelayedexpansion

set "filename=20240712.zip"
set "search=%filename%"

for /f "tokens=*" %%a in (run.log) do (
  set "line=%%a"
  set "first=!line:~2,12!"
  if "!first!"=="!search!" (
  echo !first!
  set "result=ok"
  )
)
echo %result%
endlocal
pause>nul&&exit