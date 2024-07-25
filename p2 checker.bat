ECHO OFF
TITLE P2 Checker
ECHO **********************************
Color 0F
ECHO **********************************
:start
cls
wmic diskdrive get model, serialnumber
echo -------------------------------------------------
echo !
ECHO CPU 
wmic cpu get serialnumber
IF %ERRORLEVEL% NEQ 0 (Echo No error found) ELSE (Echo An error was found)
echo !
echo -------------------------------------------------
echo !

ECHO BIOS
wmic bios get serialnumber

echo !
echo -------------------------------------------------
echo !
ECHO Motherboard
wmic baseboard get serialnumber
echo !
echo -------------------------------------------------
echo !
ECHO System Bios UUID
wmic path win32_computersystemproduct get uuid
echo !
echo ------------------------------------------------- 
echo !
getmac
echo !
echo ------------------------------------------------- 
pause > nul
goto start