apt-get update
apt-get dist-upgrade
apt-get install -y linux-headers-$(uname -r)
apt-get install nvidia-kernel-dkms