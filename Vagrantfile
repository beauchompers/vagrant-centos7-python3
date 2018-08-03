# -*- mode: ruby -*-
# vi: set ft=ruby :

# Simple Python3 development environment. 
Vagrant.configure("2") do |config|

  # Using a popular centos7 box with virtualbox guest additions installed.
  config.vm.box = "geerlingguy/centos7"

  # run ansible playbook to install packages etc.
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yml"
  end

  # run simple shell script to install python3
  config.vm.provision "shell", path: "script.sh"

end
