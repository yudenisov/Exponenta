rem Install JRE8 & JDK8
if not exist %PUB1%\Distrib\plugins\jdk-8u211-windows-x64.exe goto pass_java
if not exist %PUB1%\Distrib\plugins\jdk-8u211-windows-i586.exe goto pass_java
if not exist %PUB1%\Distrib\plugins\jre-8u211-windows-x64.exe goto pass_java
if not exist %PUB1%\Distrib\plugins\jre-8u211-windows-i586.exe goto pass_java
echo "Install Java (JRE8 + JDK8) Update 8u211..."
%PUB1%\Distrib\plugins\jre-8u211-windows-i586.exe /s
%PUB1%\Distrib\plugins\jre-8u211-windows-x64.exe /s
%PUB1%\Distrib\plugins\jdk-8u211-windows-i586.exe /s
%PUB1%\Distrib\plugins\jdk-8u211-windows-x64.exe /s
:pass_java

