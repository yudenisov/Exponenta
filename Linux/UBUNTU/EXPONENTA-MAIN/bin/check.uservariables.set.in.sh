#!/bin/bash
###
#
# check.uservariables.set.sh
#
# This script check if system variables register in the user ~/.bashrc and ~/.profile files
#
# USAGE:  check.uservariablesset.sh «variable»
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
	echo  -en "\nUSAGE:  \n\tcheck.uservariablesset.sh «variable»\n"
	exit -1
fi

# Test If ~/.bashrc not exists
if [ ! -e ~/.bashrc ]
then
	echo -en "\nGENERAL ERROR. \nConfiguration file .bashrc not found for current user\n"
	exit 2
fi

# Run Grep
grep "export".*$1 ~/.bashrc
VAR_BASHRC=$?
grep "export".*$1 ~/.profile
VAR_PROFILE=$?

# If in some variables present 0 (some string is found)
if  [ $VAR_BASHRC -eq 0 ] | [ $VAR_PROFILE -eq 0 ]
then
	echo -en "\nThe User Variable \$"$1" is present\n"
	exit 0
fi

# If in some variables present 2 (some error is found)
if [ $VAR_BASHRC = "2" ] | [ $VAR_PROFILE = "2" ]
then
	echo -en "\nGENERAL ERROR: \nComparision Fault\n"
	exit 2
fi

# If any variable has value 1 (any string is absent)
echo -en "\nThe User Variable \$"$1" is absent\n"
exit 1
