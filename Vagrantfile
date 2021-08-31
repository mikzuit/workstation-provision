# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/hirsute64"
  config.disksize.size = '40GB'

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y python3 python3-pip ansible
    which ansible
    which ansible-pull
    ansible-pull -U https://github.com/mikzuit/workspace-provision.git
  SHELL
end
