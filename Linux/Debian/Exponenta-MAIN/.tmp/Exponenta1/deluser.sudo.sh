#!/bin/bash
###
#
# deluser.sudo.sh
#
# This script deletes the specified user from the sudo group
#
# USAGE:  deluser.sudo.sh «user»
#
# Function Returns:
# * -1 if no argument of script selected
# * 0 if all success
# * 1 ???
# * 2 if general error occur
#
##

# Check if script has no arguments $# == 0
if [ $# -le 0 ] 
then
	echo  "USAGE:  deluser.sudo.sh «user»"
	exit -1
fi

# Test If /etc/sudoers not exists
if [ ! -f /etc/sudoers ]
then
	echo  "GENERAL ERROR. Configuration file /etc/sudoers not found for current user"
	exit 2
fi

cp /etc/sudoers /etc/sudoers.backup.000
sed "s/$1 \"ALL\=\(ALL\:ALL\) ALL\"//" /etc/sudoers.backup.000 > /etc/sudoers.backup
gpasswd -d $1 sudo
gpasswd -d $1 sudouser
echo "User "$1" is removed from sudo group"
exit 0
