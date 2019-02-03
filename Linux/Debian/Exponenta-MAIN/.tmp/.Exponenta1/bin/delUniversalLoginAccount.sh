#!/bin/bash
###
#
# addUniversalLoginAccoont.sh
#
# This Script remove local admin user with login В«MSSQLSRВ» and password В«Admin01234В» from system
#
# The Script returns:
# * 2 if general ERROR occur when running the script
# * 0 otherwice (no syntax and runtime errors)
#

if [ -z $Exponenta1 ] & [ ! -d $Exponenta1/bin/deluser.sudo.sh ]; then
	echo "GENERAL ERROR: Exponenta Admin Pack is not properly Installed"
	exit 2
fi

$Exponenta1/bin/deluser.sudo.sh MSSQLSR
if [ $? -ne 0 ]
then
	echo "GENERAL ERROR occur"
	exit 2
fi
userdel -f -r MSSQLSR
exit 0
