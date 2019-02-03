#

# Create Source Directories
if [ ! -d /opt/.tmp ]
then
    mkdir /opt/.tmp
fi
if [ ! -d /opt/.tmp/plugins ]
then
    mkdir /opt/.tmp/plugins
fi
apt-get install -y wget curl ftp

# Set System variables fo curl command
#

# Define the variables

Host=$httppref"://"$httphost":"$httpport"/"$httpMainFolder
LocalFolder=/opt/.tmp

# Extract Installation Files
#
mv InstallMainExponenta.sh $LocalFolder
mv InstallMainExponenta.tar.gz $LocalFolder
cd $LocalFolder
tar -tzf InstallMainExponenta.tar.gz

# Start to download with curl
#
# ATTENTION!!! Changed Values! Check Before Use !!!
#
cd plugins
curl $Host/Exponenta1-Main.tar.gz
cd ..

# Run the Installer of main Exponenta Setup
#
$LocalFolder/InstallMainExponenta.sh
if [ $? -ne 2 ]
then
    exit 2
fi
