@echo off
setlocal
cd /d "%~dp0"
echo ===============================================
echo  EasyCraft Launcher beta.11.3 Windows build
echo ===============================================
echo.
echo Before building, run SET_WEIRD_HOST_SERVER.bat once.
echo.
echo [1/3] Installing dependencies...
call npm install
if errorlevel 1 goto :error
echo [2/3] Running smoke checks...
call npm run test:smoke
if errorlevel 1 goto :error
echo [3/3] Building Windows installer...
call npm run dist:win -- --publish never
if errorlevel 1 goto :error
echo.
echo Build complete. Check the dist folder.
pause
exit /b 0
:error
echo.
echo Build failed.
pause
exit /b 1
