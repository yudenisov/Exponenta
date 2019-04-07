#!/bin/bash
###
#
# new-user.sh
#
# This Script adds new user from command file, set a password for him
# and add him into the groups www-data and sudo
# The group www-data must be added previously
# The programs mkpasswd, read, useradd and addgroup need for properly works.
#
# USAGE: new-user.sh «login» «password»
#
# Script Returns:
# * -1 if wrong numbers of arguments
# * 0 otherwise

apt install -y whois

# Check if script has no arguments $# == 0
if [ $# -ne 2 ] 
then
	echo -en "\nUSAGE: \n\tnew-user.sh «login» «password»"
	exit -1
fi

# Make password with salt and save it in AA variable
mkpasswd $2 -m sha-512 > salt.tmp
read AA < salt.tmp
rm salt.tmp

# Make Ordinary user
useradd -m -p $AA -c "Ordinary User" -s /bin/bash $1

# Add it Into the Groups
addgroup $1 www-data
addgroup $1 sudouser
addgroup $1 sudo

# Add user into sudoerr as priveleged user
echo $1 "ALL=(ALL:ALL) ALL" >> /etc/sudoers
exit 0
