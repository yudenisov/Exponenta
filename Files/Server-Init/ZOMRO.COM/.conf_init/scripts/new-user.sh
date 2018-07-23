#!/bin/bash
mkpasswd $2 -m sha-512 > salt.tmp
read AA < salt.tmp
rm salt.tmp
useradd -m -p $AA -c "Ordinary User" -s /bin/bash $1
addgroup $1 www-data
addgroup $1 sudouser
addgroup $1 sudo
echo $1 "ALL=(ALL:ALL) ALL" >> /etc/sudoers
