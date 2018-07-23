#! /bin/bash
# This script deletes the site with domain $Hacker_host2 for user $Hacker_User
#
Hacker_User=$1
Hacker_Pass=$2
Hacker_host2=$3

# Create New User
#/root/.conf_init/scripts/new_user $Hacker_User $Hacker_Pass

# Stop and Configure Apache Server
service apache2 stop
a2dismod dav_fs
a2dismod dav
a2dissite $Hacker_host2

# Remove web user catalog
ServerRoot=/var/www/$Hacker_host2
rm -R $ServerRoot
# rmdir $ServerRoot

# Delete User's site directive

rm /var/log/apache2/$Hacker_host2-error.log
rm /var/log/apache2/$Hacker_host2-access.log
rm /etc/apache2/sites-available/$Hacker_host2.conf

# Post configuration of the Apache Server

service apache2 start