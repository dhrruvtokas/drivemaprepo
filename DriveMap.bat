@echo off
color b
Title DriveMap - By Starry
mode con cols=120 lines=35

:Ask_Drive_Letter
cls
echo.
echo.
echo.
echo  Enter Drive Letter To Map 
echo.
echo.
set/p "cho=>"
if %cho%==c goto map
if %cho%==d goto map
if %cho%==e goto map
if %cho%==f goto map
if %cho%==g goto map
if %cho%==h goto map
if %cho%==i goto map
if %cho%==j goto map
if %cho%==k goto map
if %cho%==l goto map
if %cho%==m goto map
if %cho%==n goto map
if %cho%==o goto map
if %cho%==p goto map

:map
cls
echo.
echo.
echo.
echo.
echo.
echo  Select your choice :
echo.
echo   1.View Mapped Data
echo   2.Save Mapped Data
echo   3.Map Another Drive
set/p "cho2=>"
if %cho2%==1 goto view
if %cho2%==2 goto save
if %cho2%==3 goto Ask_Drive_Letter

:view
cls
cd
tree %cho%: /f /a >>"Drive %cho% Mapped Data.txt"
more "Drive %cho% Mapped Data.txt"
pause>nul
del "Drive %cho% Mapped Data.txt"
pause>nul
goto map

:save
cls
tree %cho%: /f /a >>"Drive %cho% Mapped Data.txt"
echo.
echo.
echo Mapped Data Saving Success
echo.
echo.
echo Press any key to goto Main Menu
pause>nul
goto map

