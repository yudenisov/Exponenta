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
	echo -en "\nUSAGE:  \n\tdeluser.sudo.sh «user»\n"
	exit -1
fi

# Test If /etc/sudoers not exists
if [ ! -f /etc/sudoers ]
then
	echo -en "\nGENERAL ERROR. \n\tConfiguration file /etc/sudoers not found for current user\n"
	exit 2
fi
AA=&1
cp /etc/sudoers /etc/sudoers.backup.000
sed "s/$1 ALL=(ALL:ALL) ALL//" /etc/sudoers.backup.000 > /etc/sudoers
gpasswd -d $1 sudo
gpasswd -d $1 sudouser
echo -en "\nUser "$1" is removed from sudo group\n"
exit 0
