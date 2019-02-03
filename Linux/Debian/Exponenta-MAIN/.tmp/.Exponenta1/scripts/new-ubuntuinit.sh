#

cp /etc/apt/sources.list /root/.conf_init/origin/etc/apt/sources.list.origin
sed -f /root/.conf_init/sources.list.mydiff /root/.conf_init/origin/etc/apt/sources.list.origin > /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt-get update
apt-get install -y nano
apt-get install -y mc 
apt-get install -y aptitude
apt-get install -y screen
apt-get install -y webmin
