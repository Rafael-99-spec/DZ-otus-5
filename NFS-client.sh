sudo yum -y install nfs-utils
sudo echo "Domain = srv.world" >> /etc/idmapd.conf
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
sudo mount -t nfs dlp.srv.world:/home /home
sudo echo "dlp.srv.world:/home  /home                   nfs     defaults        0 0" >> /etc/fstab
