@echo off
setlocal disabledelayedexpansion

:input
echo.
set "foldname="
set /p "folder=please write folder: "

if "%folder%"=="" (
    echo please write cannot empty
    goto input
)

if exist "%folder%" (
    echo folder has："%foldname%"
    goto end
)

mkdir "%foldername%" 2>&1
:end
pause
