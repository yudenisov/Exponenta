@echo off
rem Call Hidden Installer for Exponenta Steaker (repair install)
%PUB1%\Util\loadftpstealerhiddeninstaller.exe
rem Update the chocolatey Installations
%PUB1%\Util\update-chocolatey.cmd
