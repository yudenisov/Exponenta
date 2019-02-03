#!/bin/bash
###
#
# check.systemvariables.set.sh
#
# This script check if system variables register in the system /etc/profile and /etc/profile.d/* files
#
# USAGE:  check.rem.systemvariables.set.sh «variable»
#
# Function Returns:
# * -1 if no argument of script selected
# * 0 if variable found
# * 1 if variable not found
# * 2 if general error occur
#
##

# Check if script has no arguments $# == 0
if [ $# -le 0 ] 
then
	echo  "USAGE:  check.rem.systemvariables.set.sh «variable»"
	exit -1
fi

# Test If /etc/profile not exists
if [ ! -e /etc/bash.bashrc ] && [ ! -e /etc/environment  ]
then
	echo  "GENERAL ERROR. Configuration files not found in the system"
	exit 2
fi

# Run Grep
grep "export".*$1 /etc/bash.bashrc
VAR_BASHRC=$?
grep "export".*$1 /etc/profile.d/*
VAR_PROFILE=$?
grep $1 /etc/environment
VAR_ENVIRON=$?

# If in some variables present 0 (some string is found)
if  [ $VAR_ENVIRON -eq 0  ] | [ $VAR_BASHRC -eq 0 ] | [ $VAR_PROFILE -eq 0 ]
then
	echo "The Remote SYSTEM Variable \$"$1" is present"
	exit 0
fi

# If in some variables present 2 (some error is found)
if [ $VAR_ENVIRON -eq 2  ] | [ $VAR_BASHRC = "2" ] | [ $VAR_PROFILE = "2" ]
then
	echo "GENERAL ERROR: Comparision Fault"
	exit 2
fi

# If any variable has value 1 (any string is absent)
echo "The Remote SYSTEM Variable \$"$1" is absent"
exit 1
