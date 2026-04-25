@echo off
setlocal disabledelayedexpansion

:input
echo.
set "foldname="
set /p "folder=please write folder: "

if "%folder%"=="" (
    echo 输入不能为空，请重新输入！
    goto input
)

if exist "%folder%" (
    echo 文件夹已存在："%foldname%"
    goto end
)

mkdir "%foldername%" 2>&1
:end
pause