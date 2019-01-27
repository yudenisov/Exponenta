#!/bin/bash
###
# .copy_systigervnc_kali_files.sh
# This script creates backup of origin system files of Linux Vnc Serverswhich mast be changed
# and copy in its place examples files with correct settings of VNC protocols
# It mast be executed inline the program of tigerVNC packets installation for Kali Linux
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
if [ -e /etc/X11/Xvnc_session && ! -f  /root/.AdminT/backups/etc_X11__Xvnc_Session ]
then
	echo "Create backups of file /etc/X11/Xvnc_session ... "
	cp /etc/X11/Xvnc_session /root/.AdminT/backups/etc_X11__Xvnc_Session
fi
if [ -e /etc/systemd/system/vncserver.service && ! -f  /root/.AdminT/backups/etc_systemd_system__vncserver.service ]
then
	echo "Create backups of file /etc/systemd/system/vncserver.service ... "
	cp /etc/systemd/system/vncserver.service /root/.AdminT/backups/etc_systemd_system__vncserver.service
fi
if [ ! -e /root/.AdminT/examples/etc_systemd_system__vncserver.service ]
then
	echo "Plugin AdminT has not valid Install"
	exit 1
else
	cp /root/.AdminT/examples/etc_systemd_system__vncserver.service /etc/systemd/system/vncserver.service
fi
if [ ! -e /root/.AdminT/examples/etc_X11__Xvnc_Session ]
then
	echo "Plugin AdminT has not valid Install"
	exit 1
else
	cp /root/.AdminT/examples/etc_X11__Xvnc_Session /etc/X11/Xvnc_session
fi
exit 0
