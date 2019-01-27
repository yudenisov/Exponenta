#!\bin\bash
#
# This file is Adjust to run TigerVNC server on local machine
# Attention! Program needs to set a password for access VNC Remote Desktop Please Run Interactively
#
# USAGE:
#
# Script retutns:
# * 0 if Server ajust
# * 1 if Error in AdminT Plugins
apt-get install -y tigervnc tigervnc-server
echo "Begin to Entering the Password.."
vncserver
vncserver -kill :1
echo "End the Entering Password"
./.copy_systigervnc_kali_files.sh
if [ $? ! -eq 0]
then
	echo "The plugin AdminT id not properly installed"
	echo "It Lives the default settings"
	exit 1
else
	systemctl enable vncserver.service
	systemctl start vncserver.service
	echo "TigerVNC Server is installed seccessfully"
	echo "Test: Please Sure that port 15900 is Opened at All IPs"
	netstat -anltp | grep "LISTEN"
	exit 0
fi

