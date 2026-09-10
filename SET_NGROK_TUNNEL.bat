\
@echo off
setlocal
cd /d "%~dp0"
echo ===============================================
echo  EasyCraft beta.11.3 - ngrok tunnel setup
echo ===============================================
echo.
echo Weird Host server console's PUBLIC HTTPS TUNNEL domain,
echo or your ngrok Assigned/Reserved Domain.
echo Example: my-easycraft.ngrok.app
echo.
set /p ECDOMAIN=ngrok domain: 
if "%ECDOMAIN%"=="" (
  echo Domain is empty.
  pause
  exit /b 1
)
set "EASYCRAFT_ACCOUNT_SERVER_URL=%ECDOMAIN%"
node scripts\configure-account-server.js
if errorlevel 1 (
  echo.
  echo Failed to save tunnel domain.
  pause
  exit /b 1
)
echo.
echo Saved. EasyCraft will use HTTPS automatically.
echo This address is bundled into the launcher and is NOT shown in the user settings screen.
pause
