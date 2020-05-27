# -*- mode: ruby -*-
# vim: set ft=ruby :

MACHINES = {
  :nfsserver => {
        :box_name => "centos/7",
        :ip_addr => '192.168.11.101'
  },
  :nfsclient => {
        :box_name => "centos/7",
        :ip_addr => '192.168.11.102'
  }
}

Vagrant.configure("2") do |config|

  MACHINES.each do |boxname, boxconfig|

      config.vm.define boxname do |box|

          box.vm.box = boxconfig[:box_name]
          box.vm.host_name = boxname.to_s

          #box.vm.network "forwarded_port", guest: 3260, host: 3260+offset

          #box.vm.network "private_network", ip: boxconfig[:ip_addr]

          box.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "512"]
          end
          
          box.vm.provision "shell", inline: <<-SHELL
            mkdir -p ~root/.ssh; cp ~vagrant/.ssh/auth* ~root/.ssh
            yum install vim -y
          SHELL
      end
          config.vm.define "nfsserver" do |nfsserver|
                nfsserver.vm.provision "shell", inline: <<-SHELL
                sudo yum -y install nfs-utils
                sudo chmod 777 /etc/idmapd.conf
                sudo chmod 777 /etc/exports
                cd /
                sudo mkdir -p /mount/upload
                sudo chmod 777 /mount
                sudo chmod 777 /mount/upload
                sudo echo "/mount/upload 192.168.11.0/24(rw,no_root_squash)" >> /etc/exports
                sudo systemctl start rpcbind nfs-server
                sudo systemctl enable rpcbind nfs-server
                sudo systemctl start firewalld
                sudo systemctl enable firewalld
                sudo firewall-cmd --add-service=nfs --permanent
                sudo firewall-cmd --add-service={nfs3,mountd,rpc-bind} --permanent
                sudo firewall-cmd --reload
                # здесь для server
                SHELL
          end
          config.vm.define "nfsclient" do |nfsclient|
                nfsclient.vm.provision "shell", inline: <<-SHELL
                sudo yum -y install nfs-utils
                sudo systemctl start rpcbind
                sudo systemctl enable rpcbind
                cd /
                sudo mkdir /mount
                sudo chmod 766 /etc/fstab
                sudo echo "192.168.11.101:/mount  /mount		nfs        _netdev,x-systemd.automount,x-systemd.requires=network-online.target,x-systemd.device-timeout=10 0 0" >> /etc/fstab
                sudo mount -t nfs 192.168.11.101:/mount /mount
                # здесь для client
                SHELL
          end
  end
end
