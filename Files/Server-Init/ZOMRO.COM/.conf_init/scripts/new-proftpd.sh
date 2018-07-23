#!/bin/bash
apt-get install -y proftpd-basic
service proftpd stop
cp /etc/proftpd/proftpd.conf /root/.conf_init/origin/etc/proftpd/proftpd.conf
sed -f /root/.conf_init/proftpd.conf.mydiff /root/.conf_init/origin/etc/proftpd/proftpd.conf > /etc/proftpd/proftpd.conf
service proftpd restart
