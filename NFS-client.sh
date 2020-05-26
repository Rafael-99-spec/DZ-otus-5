sudo yum -y install nfs-utils
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
cd /
sudo mkdir /mount
sudo chmod 777 /etc/fstab
sudo echo "192.168.11.101:/mount  /mount		nfs       x-systemd.automount,x-systemd.device-timeout=10,timeo=14,hard,intr,noatime 0 0" >> /etc/fstab
sudo mount -t nfs 192.168.11.101:/mount /mount
