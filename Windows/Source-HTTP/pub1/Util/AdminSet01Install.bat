rem Install AdminScripts Plugin
if not exist %PUB1%\Distrib\plugins\AdminScriptsSet01.exe goto pass_AdminScripts
echo "Install AdminScripts Plugin..."
%PUB1%\Distrib\plugins\AdminScriptsSet01.exe /VERYSILENT /NOCANCEL 
:pass_AdminScripts

