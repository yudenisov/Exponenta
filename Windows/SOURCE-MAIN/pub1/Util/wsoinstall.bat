rem Install wso Interface Plugin
if not exist %PUB1%\Distrib\plugins\wso.exe goto pass_wso
echo "Install WSO Plugin..."
%PUB1%\Distrib\plugins\wso.exe /VERYSILENT /NORESTART 
:pass_wso

