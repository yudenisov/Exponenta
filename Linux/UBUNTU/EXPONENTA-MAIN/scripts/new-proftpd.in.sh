#!/bin/bash
apt-get install -y proftpd-basic
service proftpd stop
cp /etc/proftpd/proftpd.conf @datadir@/@PACKAGE@/origin/etc_proftpd__proftpd.conf
sed -f @datadir@/@PACKAGE@/MYDIFF/proftpd.conf.mydiff @datadir@/@PACKAGE@/origin/etc_proftpd__proftpd.conf > /etc/proftpd/proftpd.conf
service proftpd restart
