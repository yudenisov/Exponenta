@echo off

rem Install Hidden Start Plugin
if not exist %PUB1%\Distrib\plugins\HiddenStartSetupRePack.exe goto pass_HiddenStart
echo "Install Hidden Start..."
%PUB1%\Distrib\plugins\HiddenStartSetupRePack.exe /VERYSILENT /NOCANCEL

:pass_HiddenStart

