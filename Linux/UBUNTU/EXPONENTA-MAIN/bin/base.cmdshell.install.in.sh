###
# .base.commandshell.install.sh
# This script install base configuration for developing base debian server
# with anvanced Exponenta Admin Pack installable features
# It mast be first Script to be run in Debian System
# IMPORTANT NOTE! The Apt-get Debian packet, its own configuration and Internet Access must have correct settings and must properly works!
#
# Script Returns:
# * -1 if The Package not properly installed
# *  0 if Success
#
##
apt-get install -y bash
apt-get install -y sed
if [ ! -f @datadir@/@PACKAGE@/MYDIFF/.sources.list.init.mydiff ] && [ !  -f /etc/apt/sources.list ]
then
	echo -en "\nThe Package has not properly installed.\n\n"
	echo -en "Please turn on initial settings and try again\n"
	if [ -f cp /etc/apt/sources.list.origin ]
	then
		mv /etc/apt/sources.list.origin /etc/apt/sources.list.origin.old
	fi
	exit -1
fi
if [ -f /etc/apt/sources.list ] && [ ! -f /etc/apt/sources.list.origin ]
then
	echo "\n\nInstalling repositories...\n\n"
	cp /etc/apt/sources.list /etc/apt/sources.list.origin
	sed -f @datadir@/@PACKAGE@/MYDIFF/.sources.list.init.mydiff /etc/apt/sources.list.origin > /etc/apt/sources.list
else
	echo -en "\n\nFile /etc/apt/sources.list.origin already exist\n"
	echo -en "The Script Has Already Run\n"
fi
apt-get update -y
apt-get install -y net-tools
apt-get install -y nano
apt-get install -y ftp
apt-get install -y ftp-app
apt-get install -y curl
apt-get install -y wget
apt-get install -y mc 
apt-get install -y aptitude
apt-get install -y screen
apt-get install -y telnet
apt-get install -y whois
apt-get install -y openssh-server openssh-client
