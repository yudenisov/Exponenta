#!/bin/bash
###
#
# check_uname_present.sh
#
# This Script Checks if specified user present in the Linux system
#
# USAGE: check_uname_present.sh «Username»
#
# Script Returns:
# * -1 if No Username spcified
# * 1 if Username absent in system
# * 0 if Username present in system
#
####
if [ $# -ne 1 ]
then
	echo -en "\nUSAGE: \n\tcheck_uname_present.sh «Username»\n"
	exit -1
fi
grep $1 /etc/passwd >/dev/null
if [ $? -ne 0 ]; then
	echo -en "\nNo username "$1" found\n"
	exit 1
else
	echo -en "\nUsername "$1" is found on system\n"
	exit 0
fi