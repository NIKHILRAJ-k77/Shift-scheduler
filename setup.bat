@echo off
setlocal
echo ==========================================
echo ShiftFlow setup
echo ==========================================
echo.
echo 1. Install root tools...
call npm install
if errorlevel 1 goto :error
echo.
echo 2. Install backend...
call npm install --prefix backend
if errorlevel 1 goto :error
echo.
echo 3. Install frontend...
call npm install --prefix frontend
if errorlevel 1 goto :error
echo.
echo Setup complete.
echo If PostgreSQL is installed locally, create the shiftflow database
echo and run backend\database\schema.sql and backend\database\seed.sql.
echo.
echo Or, if Docker Desktop is installed:
echo   docker compose up -d
echo.
echo Then run:
echo   npm run dev
echo.
pause
exit /b 0
:error
echo.
echo Setup failed. Check the error above.
pause
exit /b 1
