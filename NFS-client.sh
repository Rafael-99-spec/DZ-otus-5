sudo yum -y install nfs-utils
sudo chmod 777 /etc/idmapd.conf
sudo echo "Domain = localdomain" >> /etc/idmapd.conf
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
sudo mount -t nfs 192.168.11.101:/home /home
sudo chmod 777 /etc/fstab
sudo echo "192.168.11.101:/home  /home                   nfs     defaults        0 0" >> /etc/fstab
