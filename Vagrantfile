# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.env.enable
  config.vm.box = "ubuntu/trusty64" unless ENV['VAGRANT_BOX']
  config.vm.network "forwarded_port", guest: 32768, host: 32768
  config.vm.synced_folder "data", "/vagrant_data"
  # Customize the amount of memory on the VM:
  memory = ENV['GO_VM_MEMORY'] ? ENV['GO_VM_MEMORY'] : 6024
  cpus = ENV['GO_VM_CPU'] ? ENV['GO_VM_CPU'] : 2
  name = ENV['GO_VM_NAME'] ? ENV['GO_VM_NAME'] : "go_development"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    vb.memory = memory 
    vb.name = name 
    vb.cpus = cpus
  end
  puts " --------------------------------------------------------------------------------------------------------"
  puts "               memory                             name                             CPUS               " 
  puts " --------------------------------------------------------------------------------------------------------"
  puts "                 #{memory}                         #{name}                          #{cpus}           "
  puts " --------------------------------------------------------------------------------------------------------"
  config.vm.provision "shell", path: "install_utils.sh"
  config.vm.provision "shell", path: "configure_vim.sh", privileged: false
  config.vm.provision "shell", path: "install_go.sh"
  if ENV['INSTALL_DOCKER']
      puts " ------------------- "
      puts "|Installing Docker..|"
      puts " ------------------- "
      config.vm.provision "shell", path: "install_docker.sh"
  end
end
