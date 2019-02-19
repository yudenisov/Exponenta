#!/bin/bash
###
#
# check.systemvariables.set.sh
#
# This script check if local system variables register in the system /etc/profile and /etc/profile.d/* files
#
# USAGE:  check.loc.systemvariables.set.sh «variable»
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
	echo  -en "\nUSAGE:  \n\tcheck.loc.systemvariables.set.sh «variable»\n"
	exit -1
fi

# Test If /etc/profile not exists
if [ ! -e /etc/environment ] | [ ! -e /etc/bash.bashrc  ]
then
	echo -en "\nGENERAL ERROR. \nConfiguration files not found in the system\n"
	exit 2
fi

# Run Grep
grep $1"=" /etc/environment
VAR_BASHRC=$?
grep $1"=" /etc/bash.bashrc
VAR_PROFILE=$?

# If in some variables present 0 (some string is found)
if  [ $VAR_BASHRC -eq 0 ] | [ $VAR_PROFILE -eq 0 ]
then
	echo -en "\nThe Local SYSTEM Variable \$"$1" is present\n"
	exit 0
fi

# If in some variables present 2 (some error is found)
if [ $VAR_BASHRC = "2" ] | [ $VAR_PROFILE = "2" ]
then
	echo -en "\nGENERAL ERROR: \n\tComparision Fault"
	exit 2
fi

# If any variable has value 1 (any string is absent)
echo -en "\nThe Local SYSTEM Variable \$"$1" is absent\n"
exit 1
