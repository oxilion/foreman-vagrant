# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos64"

  config.vm.provider :libvirt do |v, override|
    override.vm.box_url = "http://kwok.cz/centos64.box"
  end

  config.vm.provider :virtualbox do |v, override|
    override.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130309.box"
    v.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "manager.pp"
  end
end
