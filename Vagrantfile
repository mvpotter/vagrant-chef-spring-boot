# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.hostname = "vagrant-chef"

  config.vm.box = "ubuntu/trusty64"

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "chef/cookbooks/java_app/Berksfile"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.roles_path = "chef/roles"
    chef.add_role "vagrant-chef"
  end

end
