@echo off
rem reg_addtopath.bat is a script which add the pointed path into the system evnviroment variable path
rem Usage > reg_addtopath.bat <Path name>

setlocal enableextensions enabledelayedexpansion

set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment


:: Указываем добавляемый каталог
set FolderToAdd=%1

:: Получаем текущее значение Path
For /f "tokens=2*" %%a In ('Reg.exe query "!Key!" /v Path^|%SystemRoot%\System32\find "Path"') do set "CurPath=%%~b"

:: Дописываем новый каталог
reg.exe add "!Key!" /v Path /t REG_EXPAND_SZ /d "!CurPath!;!FolderToAdd!" /F

