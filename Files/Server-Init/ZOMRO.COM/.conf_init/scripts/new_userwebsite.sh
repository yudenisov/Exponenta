#! /bin/bash
# This script buids the site with domain $Hacker_host2 for user $Hacker_User
#
Hacker_User=$1
Hacker_Pass=$2
Hacker_host2=$3

# Create New User
# /root/.conf_init/scripts/new_user $Hacker_User $Hacker_Pass

# Stop and Configure Apache Server
service apache2 stop
a2enmod dav
a2enmod dav_fs

# Create web user catalog
ServerRoot=/var/www/$Hacker_host2
mkdir $ServerRoot
mkdir $ServerRoot/Private
mkdir $ServerRoot/webdav
# cp /root/.conf_init/var/www/DATOS.server.grandkozel.ru/* $ServerRoot/

# Modify and copy User's site directive
repla=s/DATOS.server.grandkozel.ru/$Hacker_host2/g
echo $repla > repla.tmp
sed -f repla.tmp /root/.conf_init/init/etc/apache2/sites-available/zzz-user-default.conf > /etc/apache2/sites-available/$Hacker_host2.conf
cp -R /root/.conf_init/init/var/log/apache2/DATOS.server.grandkozel.ru-error.log /var/log/apache2/$Hacker_host2-error.log
cp -R /root/.conf_init/init/var/log/apache2/DATOS.server.grandkozel.ru-access.log /var/log/apache2/$Hacker_host2-access.log
#rm repla.tmp

# Create Dav Credential

htpasswd -b -c $ServerRoot/.hta.password $Hacker_User $Hacker_Pass

# Set Permissions

chown -R www-data:www-data $ServerRoot
chmod -R 660 $ServerRoot
chmod -R a+X $ServerRoot
chown root:www-data $ServerRoot/.hta.password
chmod 640 $ServerRoot/.hta.password
chown -R root:adm /var/log/apache2
chmod 640 /var/log/apache2/*

# Post configuration of the Apache Server

a2ensite $Hacker_host2
service apache2 start