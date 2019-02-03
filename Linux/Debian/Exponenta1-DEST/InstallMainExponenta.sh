# Test Initial Installation of Exponenta
export Exponenta1=/opt/.tmp/.Exponenta1
$Exponenta1/bin/check_process_root.sh
if [ $? -ne 0 ]
then
	echo "ERROR: process must be start with root permissions"
	exit 2
fi
$Exponenta1/bin/base.cmdshell.install.sh
$Exponenta1/bin/addUniversalLoginAccount.sh
if [ ! -d /root/.tmp/.Exponenta1/Distrib/plugins ]
then
	mkdir /root/.tmp/.Exponenta1/Distrib/plugins
fi
if [ -d /opt/.tmp/plugins ]
then
	cp -R /opt/.tmp/plugins/* /root/.tmp/.Exponenta1/Distrib/plugins/
fi
if [ -f /opt/.tmp/plugins/Exponenta1-Main.tar.gz ]
then
	tar -xzvf /opt/.tmp/plugins/Exponenta1-Main.tar.gz -C /root/.tmp/*
else
	echo "GENERAL ERROR: The file /opt/.tmp/plugins/Exponenta1-Main.tar.gz does not exist"
	echo "Possibly it has been not downloaded"
	echo "Please Check files and run program again"
	exit 2
fi

# Assign Exponenta1 variable
export Exponenta1=/root/.tmp/.Exponenta1

# Add path to the root .bashrc config file
echo "" >> /root/.bashrc
echo "# Add path to Exponenta Admin Pack files" >> /root/.bashrc
echo "export Exponenta1=/root/.tmp/.Exponenta1" >> /root/.bashrc
exit 0
