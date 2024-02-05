# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-20.04"  # Ubuntu 18.04 LTS
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "6000" # Set the desired amount of RAM in megabytes
    end
  
    # Forward ports for Jenkins
    config.vm.network "forwarded_port", guest: 8080, host: 8080
  
    # Provisioning script for Jenkins installation
    config.vm.provision :shell, path: "install_jenkins.sh"
  end
  