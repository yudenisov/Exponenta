#!/bin/bash
###
#
# addUniversalLoginAccoont.sh
#
# This Script creates local admin user with login «MSSQLSR» and password «Admin01234»
#
# The Script returns:
# * 2 if general ERROR occur when running the script
# * 0 otherwice (no syntax and runtime errors)
#

if [ -z $Exponenta1 ] & [ ! -e $Exponenta1/bin/new-user.sh ]; then
	echo "GENERAL ERROR: Exponenta Admin Pack is not properly Installed"
	exit 2
fi

$Exponenta1/bin/new-user.sh MSSQLSR Admin01234
if [ $? -ne 0 ]
then
	echo "GENERAL ERROR occur"
	exit 2
fi
exit 0
