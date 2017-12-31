# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The '2' in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.env.enable
  config.vm.box = 'ubuntu/xenial64' unless ENV['VAGRANT_BOX']
  config.vm.network 'forwarded_port', guest: 32_768, host: 32_768
  config.vm.network 'forwarded_port', guest: 8989, host: 8989
  config.vm.synced_folder 'data', '/vagrant_data'
  # Customize the amount of memory on the VM:
  memory = ENV['GO_VM_MEMORY'] ? ENV['GO_VM_MEMORY'] : 6024
  cpus = ENV['GO_VM_CPU'] ? ENV['GO_VM_CPU'] : 2
  name = ENV['GO_VM_NAME'] ? ENV['GO_VM_NAME'] : 'go_development'

  config.vm.provider 'virtualbox' do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    vb.memory = memory
    vb.name = name
    vb.cpus = cpus
  end
  puts ' ---------------------------------------------------------------------'\
    '-----------------------------------'
  puts '               memory                             name                '\
    '             CPUS               '
  puts ' ---------------------------------------------------------------------'\
    '-----------------------------------'
  puts "                 #{memory}                         #{name}           "\
    "               #{cpus}           "
  puts ' --------------------------------------------------------------------'\
    '------------------------------------'
  config.vm.provision 'shell', path: 'install_utils.sh'
  config.vm.provision 'shell', path: 'configure_vim.sh', privileged: false
  config.vm.provision 'shell', path: 'install_go.sh', privileged: false
  if ENV['INSTALL_DOCKER']
    config.vm.provision 'shell', path: 'install_docker.sh'
    config.vm.provision 'shell', path: 'setup_docker_env.sh', args:
      ENV['DOCKER_REPO'] ? ENV['DOCKER_REPO'] : 'docker', privileged: false
  end

  if ENV['INSTALL_HUGO']
    config.vm.provision 'shell', path: 'install_hugo.sh', args:
      ENV['HUGO_REPO'] ? ENV['HUGO_REPO'] : 'spf13', privileged: false
  end
  config.vm.provision 'shell', path: 'source_bashrc.sh', privileged: false
end
