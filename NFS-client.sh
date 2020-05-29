sudo yum -y install nfs-utils
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
sudo chkconfig network off
cd /
sudo mkdir -p /shared/upload
sudo chmod 766 /shared
sudo chmod 766 /shared/upload
sudo cp /vagrant/shared-upload.mount /etc/systemd/system/shared-upload.mount
sudo cp /vagrant/network-online.service /etc/systemd/system/netowrk-service.online
sudo systemctl daemon-reload
sudo systemctl start netowrk-service.online
sudo systemctl enable network-service.online
sudo systemctl start shared-upload.mount
sudo systemctl enable shared-upload.mount
