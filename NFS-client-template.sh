    1  df -h
    2  systemctl status network
    3  sudo systemctl status network
    4  reboot 0
    5  sudo reboot 0
    6  sudo systemctl status network
    7  sudo systemctl status network -l
    8  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth0
    9  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth1
   10  sudo systemctl restart network
   11  sudo systemctl restart NetworkManager
   12  sudo reboot 0
   13  sudo systemctl status network -l
   14  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth0
   15  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth1
   16  ip a
   17  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth1
   18  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth0
   19  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth1
   20  sudo vi /etc/sysconfig/network-scripts/ifcfg-eth0
   21  nmcli device status
   22  sudo cat /etc/sysconfig/network-scripts/ifcfg-eth0
   23  sudo cat /etc/sysconfig/network-scripts/ifcfg-eth1
   24  systemctl stop NetworkManager
   25  sudo systemctl stop NetworkManager
   26  sudo systemctl disable NetworkManager
   27  sudo systemctl enable network
   28  sudo chkconfig network on
   29  sudo systemctl enable network
   30  sudo /sbin/chkconfig network on
   31  sudo systemctl enable network
   32  sudo /sbin/chkconfig network on
   33  sudo systemctl start network
   34  sudo touch /etc/sysconfig/network
   35  sudo systemctl restart network
   36  history

   
   
   Attempt 3

sudo sed -i '5d' /etc/sysconfig/network-scripts/ifcfg-eth0
sudo sed -i '1d;2d;3d' /etc/sysconfig/network-scripts/ifcfg-eth1
sudo systemctl start network
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo systemctl restart network
sudo chkconfig network on
sudo touch /etc/sysconfig/network

192.168.11.101:/mount	/mount		nfs	_netdev,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10	0 0
