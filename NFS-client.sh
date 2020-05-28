sudo yum -y install nfs-utils
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
sudo systemctl stop network
sudo chkconfig network off
cd /
sudo mkdir -p /shared/upload
sudo chmod 766 /shared
sudo chmod 766 /shared/upload
sudo cp /vagrant/shared-upload.mount /etc/systemd/system/shared-upload.mount
sudo systemctl daemon-reload
