# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 32768, host: 32768
  config.vm.synced_folder "data", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = 6024
    vb.name = "go_development"
    vb.cpus = 2
  end
  config.vm.provision "shell", path: "install_utils.sh"
  config.vm.provision "shell", path: "configure_vim.sh", privileged: false
  config.vm.provision "shell", path: "install_go.sh"
  #config.vm.provision "shell", path: "install_docker.sh"
end
