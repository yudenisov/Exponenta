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
# * -1 if No Username spcifyed
# * 1 if Username absent in system
# * 0 if Username present in system
#
####
if [ $# -ne 1 ]
then
	echo "USAGE: check_uname_present.sh «Username»"
	exit -1
fi
grep $1 /etc/passwd >/dev/null
if [ $? -ne 0 ]; then
	echo 'No username "$1" found'
	exit 1
else
	echo "Username "$1" is found on system"
	exit 0
fi