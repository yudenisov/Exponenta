#!/bin/bash
apt-get install -y proftpd-basic
service proftpd stop
cp /etc/proftpd/proftpd.conf $Exponenta1/origin/etc_proftpd__proftpd.conf
sed -f $Exponenta1/mydiff/proftpd.conf.mydiff $Exponenta1/origin/etc_proftpd__proftpd.conf > /etc/proftpd/proftpd.conf
service proftpd restart
