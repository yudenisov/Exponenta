# Check if script run at root mode
#

if [ $EUID -ne 0 ]; then
	echo "ERROR: process must be start with root permissions"
	exit 1
fi

# Set Main Variables
#
#echo "Setting Variables..."

httppref=http 
httphost=
httpport=80
httpMainFolder=ExponentaLinux

# Create Source Directories
#echo "Creating Temproraries..."
if [ ! -d /opt/.tmp ]
then
    mkdir /opt/.tmp > /dev/null 2> /dev/null
fi

mkdir -p /opt/.tmp/.Exponenta1 > /dev/null 2> /dev/null
LocalFolder=/opt/.tmp/.Exponenta1

# Download dependence
#
# echo "Downloading dependences..."
apt-get install -y wget curl ftp  > /dev/null 2> /dev/null

# Set System variables for curl command
#
# echo "Setting Host Variable..."
Host=$httppref"://"$httphost":"$httpport"/"$httpMainFolder

#Test Copy Existing Exponenta1-Main-Install.tar.gz file
#
#echo "Coping file(s)..."
cp ./Exponenta1-Main-Install.tar.gz /opt/.tmp/.Exponenta1  > /dev/null 2> /dev/null

# Load Main Files
# echo "Loading Exponenta1-Main-Install.tar.gz..."
cd $LocalFolder
# curl $Host/Exponenta1-Main-Install.tar.gz  > /dev/null 2> /dev/null

# Extract Installation Files
#
#echo "Extracting Installation Files..."
tar  -C $LocalFolder -xzvf $LocalFolder/Exponenta1-Main-Install.tar.gz  > /dev/null 2> /dev/null
if [ $? -ne 0 ]
then
#    echo "GENERAL ERROR: Files cannot Extract from Exponenta-Main-Install"
    exit 2
fi

# Run the Installer of main Exponenta Setup
#
# echo "Running Installer..."
chmod 775 $LocalFolder/*.sh
chmod 664 $LocalFolder/*.gz
chmod 664 $LocalFolder/*.bat
chmod 644 $LocalFolder/descript.ion
$LocalFolder/InstallMainExponenta.sh > /dev/null 2> /dev/null
if [ $? -ne 0 ]
then
#    echo "GENERAL ERROR: InstallMainExponenta.sh is Failed"
    exit 2
fi

# Define the variables
if [ ! -z Exponenta1 ]; then
#	echo "GENERAL WARNING: The Exponenta1 Variable does not set"
#	echo "Trying to set It..."
	if [ -d /root/.tmp/.Exponenta1 ]
	then
		Exponenta1=/root/.tmp/.Exponenta1
	else
#		echo "GENERAL ERROR: The Admin Pack has not been properly Installed"
		exit 2
	fi
fi

#echo "Making Distributives Directory..."
mkdir -p $Exponenta1/Distrib/plugins > /dev/null 2> /dev/null
#echo "Moving Files..."
mv $LocalFolder/InstallMainExponenta.sh $Exponenta1/Distrib/plugins/ > /dev/null 2> /dev/null
mv $LocalFolder/loadmainupdate.sh $Exponenta1/Distrib/plugins/ > /dev/null 2> /dev/null
# mv $LocalFolder/loadhttpmaindistrib.sh $Exponenta1/Distrib/plugins/ > /dev/null 2> /dev/null
mv $LocalFolder/mainupdate.variables.sh $Exponenta1/Distrib/plugins/ > /dev/null 2> /dev/null

#echo "Updating Installation..."
$Exponenta1/Distrib/plugins/loadmainupdate.sh  > /dev/null 2> /dev/null
