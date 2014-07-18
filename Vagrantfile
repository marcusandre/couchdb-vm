# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.hostname = "IAA"
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.111.222"
  config.vm.synced_folder ".", "/IAA"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "IAA"
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end
end