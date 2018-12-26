rem Install Chocolatey Packet
if exist %Chocolatey% goto pass_Chocolatey
if not exist %PUB1%\Util\chock.install.cmd goto pass_Chocolatey
echo "Install Chocolatey..."
call %PUB1%\Util\chock.install.cmd
:pass_Chocolatey

rem Install Chocolatey's Packet
if not exist %Chocolatey% goto pass_ChocPack
if not exist %PUB1%\Util\choc_pack.install.cmd goto pass_ChocPack
echo "Install Chocolatey's Packets..."
call %PUB1%\Util\choc_pack.install.cmd
:pass_ChocPack

