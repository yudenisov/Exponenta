@echo off
rem check_reg_node checks the node <node> for default value
rem If node is present script returns 0
rem Usage check_reg_item.bat <node>
setlocal enableextensions enabledelayedexpansion

set node=%1

reg query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "Ошибка. Неверный синтаксис" && goto reg_Absent
reg query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "Ошибка: Не удается найти указанный раздел или параметр в реестре." && goto reg_Absent
goto reg_Present
:reg_Absent
echo Данное звено в реестре отсутствует
rem exit 1
goto reg_Finish
:reg_Present
echo Данное звено в реестре присутствует
rem exit 0
:reg_Finish