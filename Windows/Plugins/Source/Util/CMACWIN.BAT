@echo off
rem Командный файл, компилирующий исходный файл
rem макросов редакторе Multi Edit из исходного каталога.
rem Редактор должен установлен в каталог
rem C:\PROGRA~1\MULTIE~1 (=%MEPATH%), копия исходного
rem файла помещается в каталог %MEPATH%\SRC, результирующий
rem макрос -- в папку %MEPATH%\MAC, остальные опции
rem используются определения файла с ошибками и 
rem для предотвращения останова после компиляции файла.
rem "%MEPATH%\cmacwin.exe" %1 -P%MEPATH%\MAC -I%MEPATH%\SRC -O%MEPATH%\CONFIG\MEERR00C.TMP -W
rem %MEPATH%\cmacwin.exe %1
@start C:\PROGRA~1\MULTIE~1\CMACWIN.EXE %1 -PC:\PROGRA~1\MULTIE~1\MAC -IC:\PROGRA~1\MULTIE~1\SRC -OC:\PROGRA~1\MULTIE~1\CONFIG\MEERR00C.TMP -w
