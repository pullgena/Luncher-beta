@echo off
setlocal
cd /d "%~dp0"
echo ===============================================
echo  EasyCraft beta.11 - Weird Host server setup
echo ===============================================
echo.
set /p ECURL=Weird Host server URL (example http://123.123.123.123:30123): 
if "%ECURL%"=="" (
  echo URL is empty.
  pause
  exit /b 1
)
set "EASYCRAFT_ACCOUNT_SERVER_URL=%ECURL%"
node scripts\configure-account-server.js
if errorlevel 1 (
  echo.
  echo Failed to save server URL.
  pause
  exit /b 1
)
echo.
echo Saved. This address is bundled into the launcher and is NOT shown in the user settings screen.
pause
