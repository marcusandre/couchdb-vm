# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.hostname = "couchdb"
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 5984, host: 5984

  config.vm.provider "virtualbox" do |vb|
    vb.name = "CouchDB"
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.vm.provision "shell", path: "setup.sh"
end
