;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

;= File listing enhancements
:=ls=dir /x $*
l=dir /x $*
ll=dir /w $*
la=dir /x /a $*

;= Directory navigation
up=cd ..
pd=pushd

;= Copy and move macros
;=cp=copy
:=mv=move

;= Delete macros
;=rm=del /p $*
rmf=del /q $*
rmtmp=del /q *~ *# 2>nul

;= Fast access to Notepad
n=notepad $*

;= Fast access to Explorer
x=explorer .

;= Fast Access to python 2.7 and 3.7
py2=C:\Python27\python.exe $*
py3=C:\Python37\python.exe $*

;= :end
