###
# .base.commandshell.uninstall.sh
# This script uninstall base configuration for developing base debian server
# with anvanced Exponenta Admin Pack installable features
# It mast never be run in Debian System
# IMPORTANT NOTE! The Apt-get Debian packet, its own configuration and Internet Access must have correct settings and must properly works!
#
# Script Returns:
# * -1 if The Package not properly installed
# *  0 if Success
#
##
if [ ! -f @datadir@/@PACKAGE@/MYDIFF/.sources.list.debianinit.mydiff ] && [ !  -f /etc/apt/sources.list ]
then
	echo -en "\nThe Package has not properly installed.\n\n"
	echo -en "Please turn on initial settings and try again\n"
#	apt-get remove -y bash
#	apt-get remove -y sed
	exit -1
fi
if [ -f /etc/apt/sources.list ] && [ -f /etc/apt/sources.list.origin ]
then
	echo -en "\n\nUninstall repository...\n\n"
	mv /etc/apt/sources.list.origin /etc/apt/sources.list
else
	echo "File /etc/apt/sources.list.origin no exist"
	echo "The Script Has Already Run"
fi
apt-get update -y
apt-get remove -y net-tools
apt-get remove -y nano
apt-get remove -y ftp
apt-get remove -y ftp-app
apt-get remove -y curl
apt-get remove -y wget
apt-get remove -y mc 
apt-get remove -y aptitude
apt-get remove -y screen
apt-get remove -y telnet
apt-get remove -y whois
#	apt-get remove -y openssh-server openssh-client
#	apt-get remove -y bash
#	apt-get remove -y sed
