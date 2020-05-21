sudo yum -y install nfs-utils
sudo chmod 777 /etc/idmapd.conf
sudo chmod 777 /etc/exports
sudo echo "Domain = localdomain" >> /etc/idmapd.conf 
sudo echo "/home 192.168.11.0/24(rw,no_root_squash)" >> /etc/exports
sudo systemctl start rpcbind nfs-server
sudo systemctl enable rpcbind nfs-server
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --add-service=nfs --permanent
sudo firewall-cmd --add-service={nfs3,mountd,rpc-bind} --permanent
sudo firewall-cmd --reload
