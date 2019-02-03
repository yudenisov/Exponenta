#!/bin/bash
###
#
# getip_1.sh
#
# The Script gets external IPV4 address of computer 
# and saves it in the file MyIP.external
#
# The Script returns:
# * -1 if package is not Properly installed
# * 0 otherwise
#
##

if [ -z $Exponenta1 ] && [ ! -d $Exponenta1/bin]; then
	exit -1
fi
if [ -f $Exponenta1/bin/MyIP.external ]
	rm $Exponenta1/bin/MyIP.external
fi
curl http://ipinfo.io/ip > $Exponenta1/bin/MyIP.external
exit 0