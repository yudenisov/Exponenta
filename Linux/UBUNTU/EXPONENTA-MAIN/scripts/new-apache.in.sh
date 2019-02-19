#!/bin/bash
apt-get install -y apache2 apache2-doc
apt-get install -y apache2-utils
# apt-get install -y apache2 apachdoc
service apache2 stop
a2dismod userdir
a2dismod autoindex -f
a2dismod rewrite
a2dissite 000-default
cp /etc/apache2/apache2.conf @datadir@/@PACKAGE@/origin/etc_apache2__apache2.conf
cp /etc/apache2/mods-available/userdir.conf @datadir@/@PACKAGE@/origin/etc_apache2_mods-available__userdir.conf
cp /etc/apache2/mods-available/autoindex.conf @datadir@/@PACKAGE@/origin/etc_apache2_mods-available__autoindex.conf
sed -f @datadir@/@PACKAGE@/MYDIFF/apache2.conf.mydiff @datadir@/@PACKAGE@/origin/etc_apache2__apache2.conf > /etc/apache2/apache2.conf
sed -f @datadir@/@PACKAGE@/MYDIFF/userdir.conf.mydiff @datadir@/@PACKAGE@/origin/etc_apache2_mods-available__userdir.conf > /etc/apache2/mods-available/userdir.conf
sed -f @datadir@/@PACKAGE@/MYDIFF/autoindex.conf.mydiff @datadir@/@PACKAGE@/origin/etc_apache2_mods-available__autoindex.conf > /etc/apache2/mods-available/autoindex.conf
cp /etc/apache2/sites-available/000-default.conf @datadir@/@PACKAGE@/origin/etc_apache2_sites-available__000-default.conf
sed -f @datadir@/@PACKAGE@/MYDIFF/000-default.conf.mydiff @datadir@/@PACKAGE@/origin/etc_apache2_sites-available__000-default.conf > /etc/apache2/sites-available/000-default.conf
a2enmod userdir
a2enmod autoindex
a2enmod rewrite
a2ensite 000-default

service apache2 start
