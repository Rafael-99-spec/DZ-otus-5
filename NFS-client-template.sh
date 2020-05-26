    1  systemctl status network
    2  reboot
    3  cat /sbin/chkconfig 
    4  systemctl status network
    5  systemctl enable network
    6  chkconfig network on
    7  systemctl list-unit-files
    8  systemctl list-unit-files | grep enabled
    9  systemctl status network
   10  reboot
   11  journalctl -u network
   12  cat /var/log/messages 
   13  datetimectl
   14  timedatectl
   15  reboot
   16  cat /var/log/messages 
   17  timedatectl
   18  reboot 0
   19  cat /var/log/messages 
   20  timedatectl
   21  reboot 0
   22  eit
   23  exit
   24  cat /var/log/messages 
   25  systemctl | grep network
   26  cat /etc/sysconfig/network-scripts/ifcfg-eth0 
   27  cat /etc/sysconfig/network-scripts/ifcfg-eth1
   28  vi /etc/ssh/sshd_config 
   29  systemctl restart sshd
   30  vi /etc/sysconfig/network-scripts/ifcfg-eth1
   31  vi /etc/sysconfig/network-scripts/ifcfg-eth0
   32  reboot 0
   33  ip a
   34  cat /etc/sysconfig/network-scripts/ifcfg-eth0
   35  systemctl stop NetworkManager
   36  touch /etc/sysconfig/network
   37  systemctl disable NetworkManager
   38  reboot 0
   39  systemctl status network
   40  df -h
   41  reboot 0
   42  systemctl status network
   
   sudo sed '5d' /etc/sysconfig/network-scripts/ifcfg-eth0
   sudo sed '1d;2d;3d' /etc/sysconfig/network-scripts/ifcfg-eth1
   sudo systemctl stop NetworkManager
   sudo systemctl disable NetworkManager
   sudo chkconfig network on
   sudo touch /etc/sysconfig/network



192.168.11.101:/mount	/mount		nfs	_netdev,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10	0 0
