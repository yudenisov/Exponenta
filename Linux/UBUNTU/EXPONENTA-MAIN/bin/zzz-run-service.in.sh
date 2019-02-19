#!/bin/bash

### BEGIN INIT INFO
# Provides:		skeleton
# Folder Start		/etc/profile.d ???
# Must start Before:	User Initialization Scripts
# Mast Start After:	All System Initialization Scripts
# Interactive:		false
# Short-Description:	Service Run in Computer Start
# Description:		This file should be used to Run in Start Computer 
#			scripts, written here
### END INIT INFO

service apache2 start
service nginx start
service ssh start
service cron start
service networking start
service php7.0-fpm start

service avahi-daemon start
##service beef-xss start
##service exim4 start
##service hddtemp start
##service pcapdump start
service postgresql start
##service rwhod start
service binfmt-support start
service dbus start
##service lightdm start
service rsyslog start
service smartmontools start
service sudo start
service sysstat start
##service thin start
service mysql start 
service NetworkManager start