# Download dependence
#
echo "Downloading dependences..."
apt-get install -y bash
apt-get install -y sed
apt-get install -y coreutils
apt-get install -y diffutils
apt-get install -y m4
apt-get install -y make
apt-get install -y perl
apt-get install -y autoconf
apt-get install -y autotool-dev
apt-get install -y tar
apt-get install -y gzip

# Extract Installation Files
#
echo "Extracting Installation Files..."
# Extract archieve and install packet
tar -xzf exponenta-admin-pack.tar.gz
if [ $? -ne 0 ]
then
    echo "GENERAL ERROR: Files cannot Extract from exponenta-admin-pack.tar.gzll"
    exit 2
fi

echo "Installing Exponenta admin pack..."
cd EXPONENTA-MAIN
autoreconf -iv
./configure
make
make install
make clean

# Install Base packets
#base.cmdshell.install.sh
addUniversalLoginAccount.sh

# Copy Installer files to root user directory if exist
#
echo "Creating Distribution Directories..."
if [ ! -d /root/.tmp/.Exponenta1/Distrib/plugins ]
then
	mkdir -p /root/.tmp/.Exponenta1/Distrib/plugins
fi
if [ ! -d /root/.tmp/.Exponenta1/bin ]
then
	mkdir -p /root/.tmp/.Exponenta1/bin
fi

# Assign Exponenta1 variable
#
echo "Assigning and Store Exponenta1 Variable..."
export Exponenta1=/root/.tmp/.Exponenta1

# Add path to the root .bashrc config file
if [ ! -f /root/.bashrc ]
then
	echo "GENERAL ERROR: File /root/.bashrc does not exist"
	exit 2
fi
echo "Updating .bashrc..."
echo "" >> /root/.bashrc
echo "# Add path to Exponenta Admin Pack files" >> /root/.bashrc
echo "export Exponenta1=/root/.tmp/.Exponenta1" >> /root/.bashrc

# Add path to the MSSQLSR .bashrc config file
if [ ! -f /home/MSSQLSR/.bashrc ]
then
	echo "GENERAL WARNING: File /home/MSSQLSR/.bashrc does not exist"
else
	echo "Updating .bashrc..."
	echo "" >> /home/MSSQLSR/.bashrc
	echo "# Add path to Exponenta Admin Pack files" >> /home/MSSQLSR/.bashrc
	echo "export Exponenta1=/root/.tmp/.Exponenta1" >> /home/MSSQLSR/.bashrc
fi

exit 0
