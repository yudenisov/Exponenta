#!\bin\bash
apt-get install -y tftpd-hpa
mkdir /var/tftp
chown tftp:tftp /var/tftp
./.copy_tftpd-hpa_kali_files.sh
if [ $? ! -eq 0]
then
	echo "The plugin AdminT id not properly installed"
	echo "It Lives the default settings"
	exit 1
fi
setvice tftpd-hpa restart
