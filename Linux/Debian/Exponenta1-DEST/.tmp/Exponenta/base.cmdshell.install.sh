###
# .base.commandshell.install.sh
# This script install base configuration for developing base debian server
# with anvanced Exponenta Admin Pack installable features
# It mast be first Script to be run in Debian System
# IMPORTANT NOTE! The Apt-get Debian packet, its own configuration and Internet Access must have correct settings and must properly works!
#
# Script Returns:Nothing
#
##
apt-get install -y bash
apt-get install -y sed
/bin/bash
if [ ! -f ./.sources.list.init.mydiff ] && [ !  -f /etc/apt/sources.list ]
then
	echo "The Package has not properly installed."
	echo "Please turn on initial settings and try again"
	if [ -f cp /etc/apt/sources.list.origin ]
	then
		mv /etc/apt/sources.list.origin /etc/apt/sources.list.origin.old
	fi
	goto Finish
fi
if [ -f /etc/apt/sources.list ] && [ ! -f /etc/apt/sources.list.origin ]
then
	cp /etc/apt/sources.list /etc/apt/sources.list.origin
else
	echo "File /etc/apt/sources.list.origin already exist"
	echo "The Script Has Already Runned"
	goto Continue0
fi`
:Continue0
	sed -f ./.sources.list.init.mydiff /etc/apt/sources.list.origin > /etc/apt/sources.list
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
apt-get install -y openssh-server openssh-client
:Finish