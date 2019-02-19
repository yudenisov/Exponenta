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

export Exponenta1=/opt/Exponenta

if [ -z $Exponenta1 ] & [ ! -e @bindir@/addUniversalLoginAccoont.sh ]; then
	echo -en "\nGENERAL ERROR: \n\tExponenta Admin Pack is not properly Installed\n"
	exit 2
fi

addUniversalLoginAccoont.sh
if [ $? -ne 0 ]
then
	echo "\n\nGENERAL ERROR occur\n"
	exit 2
fi
exit 0
