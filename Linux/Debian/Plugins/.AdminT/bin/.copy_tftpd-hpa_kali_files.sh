#!/bin/bash
###
# .copy_tftpd-hpa_kali_files.sh
# This script creates backup of origin system files of Linux BSD TFTP Servers which mast be changed
# and copy in its place examples files with correct settings of TFTP protocols
# It mast be executed inline the program of TFTPD-hpa packets installation for Kali Linux
#
# Script Returns:
# * 0 if files are copied success
# * 1 if AdminT Plugin is not properly installed
#
##
if { ! -d /root/.AdminT/examples && ! -d /root/.AdminT/backups }
then 
	echo "Plugin AdminT has not valid Install"
	exit 1
fi
if [ -f /etc/default/tftpd-hpa && ! -f  /root/.AdminT/backups/etc_default__tftpd-hpa ]
then
	echo "Create backups of file /etc/default/tftpd-hpa ... "
	cp /etc/default/tftpd-hpa  /root/.AdminT/backups/etc_default__tftpd-hpa
fi
if [ ! -f /root/.AdminT/examples/etc_default__tftpd-hpa ]
then
	echo "Plugin AdminT has not valid Install"
	exit 1
else
	cp /root/.AdminT/examples/etc_default__tftpd-hpa  /etc/default/tftpd-hpa
fi
exit 0
