sudo yum -y install nfs-utils
sudo systemctl start rpcbind
sudo systemctl enable rpcbind
cd /
sudo mkdir /mount
sudo chmod 766 /etc/fstab
sudo echo "192.168.11.101:/mount  /mount		nfs        _netdev,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
sudo mount -t nfs 192.168.11.101:/mount /mount
sudo sed -i '5d' /etc/sysconfig/network-scripts/ifcfg-eth0
sudo sed -i '1d;2d;3d' /etc/sysconfig/network-scripts/ifcfg-eth1
sudo systemctl start network
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo systemctl restart network
sudo chkconfig network on
sudo touch /etc/sysconfig/network
