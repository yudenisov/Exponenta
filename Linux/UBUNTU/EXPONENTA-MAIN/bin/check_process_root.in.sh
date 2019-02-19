#!/bin/bash
###
#
# check_process_root.sh
#
# This Script Checks if specified process run with superuser permissions
#
# USAGE: check_process_root.sh
#
# Script Returns:
# * 1 if Process runs with nonroot permissions
# * 0 if Process runs with root permissions
#
####
if [ $EUID -ne 0 ]; then
	echo -en "\nThis script is run as none root\n"
	exit 1
else
	echo -en "\nThis script is run as root\n"
	exit 0
fi

