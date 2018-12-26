rem Install Elevation Plugin
if not exist %PUB1%\Distrib\plugins\ElevationSetupRepack.exe goto pass_Elevation
echo "Install Elevation..."
%PUB1%\Distrib\plugins\ElevationSetupRepack.exe /VERYSILENT /NOCANCEL 
:pass_Elevation

