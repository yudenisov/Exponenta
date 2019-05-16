rem Install Threads and Malware Plugin
if not exist %PUB1%\Distrib\Zlovred\ThreadsSetup.exe goto pass_threads
echo "Install Threadss Plugin..."
%PUB1%\Distrib\Zlovred\ThreadsSetup.exe /VERYSILENT /NORESTART /PASSWORD=Admin01234 
:pass_threads

