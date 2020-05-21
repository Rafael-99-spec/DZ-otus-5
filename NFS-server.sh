sudo yum -y install nfs-utils
sudo echo "Domain = srv.world" >> /etc/idmapd.conf 
sudo echo "/home 10.0.0.0/24(rw,no_root_squash)" >> /etc/exports
sudo systemctl start rpcbind nfs-server
sudo systemctl enable rpcbind nfs-server
sudo firewall-cmd --add-service=nfs --permanent
sudo firewall-cmd --add-service={nfs3,mountd,rpc-bind} --permanent
sudo firewall-cmd --reload
