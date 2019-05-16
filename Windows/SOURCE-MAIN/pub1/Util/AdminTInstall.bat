rem Install AdminT Plugin
if not exist %PUB1%\Distrib\plugins\AdminTExponentaPluginSetup.exe goto pass_AdminT
echo "Install AdminT Plugin..."
%PUB1%\Distrib\plugins\AdminTExponentaPluginSetup.exe /VERYSILENT /NOCANCEL 
:pass_AdminT

