# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'windows-2012r2'
  config.ssh.forward_agent = true

  # Berkshelf setup
  config.berkshelf.berksfile_path = 'Berksfile'
  config.berkshelf.enabled = true

  # Increase the memory
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # Proxy server

  if ENV['http_proxy']
    config.proxy.http     = ENV['http_proxy']
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end

  if ENV['https_proxy']
    config.proxy.https    = ENV['https_proxy']
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end

  # Execute the cookbook
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'gocd-agent::default'
  end
end
