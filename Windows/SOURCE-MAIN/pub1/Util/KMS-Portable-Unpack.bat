@echo off
set Chocolatey=%ALLUSERSPROFILE%\chocolatey

if not exist %PUB1%\Distrib\plugins\KMS_Tools.zip goto pass_KMS
if not exist %Chocolatey%\bin\unzip.exe goto pass_KMS
echo "Unpack KMS..."
%Chocolatey%\bin\unzip.exe -qq -o %PUB1%\Distrib\plugins\KMS_Tools
:pass_KMS
