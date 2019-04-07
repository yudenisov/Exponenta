rem Install Utils Plugin
if not exist %PUB1%\Distrib\plugins\UtilSetup.exe goto pass_Utils
echo "Install Utils Plugin..."
%PUB1%\Distrib\plugins\UtilSetup.exe /VERYSILENT /NOCANCEL 
:pass_Utils

