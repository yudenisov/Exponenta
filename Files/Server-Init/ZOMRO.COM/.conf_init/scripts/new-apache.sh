#!/bin/bash
apt-get install -y apache2 apache2-doc
# ﻿apt-get install -y apache2 apachdoc
service apache2 stop
a2dismod userdir
a2dismod autoindex -f
a2dismod rewrite
a2dissite 000-default
cp /etc/apache2/apache2.conf /root/.conf_init/origin/etc/apache2/apache2.conf
cp /etc/apache2/mods-available/userdir.conf /root/.conf_init/origin/etc/apache2/mods-available/userdir.conf
cp /etc/apache2/mods-available/autoindex.conf /root/.conf_init/origin/etc/apache2/mods-available/autoindex.conf
sed -f /root/.conf_init/apache2.conf.mydiff /root/.conf_init/origin/etc/apache2/apache2.conf > /etc/apache2/apache2.conf
sed -f /root/.conf_init/userdir.conf.mydiff /root/.conf_init/origin/etc/apache2/mods-available/userdir.conf > /etc/apache2/mods-available/userdir.conf
sed -f /root/.conf_init/autoindex.conf.mydiff /root/.conf_init/origin/etc/apache2/mods-available/autoindex.conf > /etc/apache2/mods-available/autoindex.conf
cp /etc/apache2/sites-available/000-default.conf /root/.conf_init/origin/etc/apache2/sites-available/000-default.conf
sed -f /root/.conf_init/000-default.conf.mydiff /root/.conf_init/origin/etc/apache2/sites-available/000-default.conf > /etc/apache2/sites-available/000-default.conf
a2enmod userdir
a2enmod autoindex
a2enmod rewrite
a2ensite 000-default

service apache2 start
