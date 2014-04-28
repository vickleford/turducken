# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ci-ubuntu-12.04"
  config.berkshelf.enabled = true

  config.vm.hostname = "gobquackcluck.example.org"

  config.vm.network "forwarded_port", guest: 80, host: 1080

  config.vm.provision :chef_solo do |chef|
    chef.json = { }
    chef.run_list = [ "recipe[apt]", "recipe[turducken]", "recipe[minitest-handler]" ]
  end

  config.proxy.no_proxy = "localhost,127.0.0.1,#{config.vm.hostname}"
end
