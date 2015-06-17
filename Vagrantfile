# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "nercceh/ubuntu14.04"
  
  config.vm.network :forwarded_port, guest: 80, host: 80

  config.vm.provision :shell, :path => "shell/librarian.sh"
  
  # Now run the puppet provisioner. Note that the modules directory is entirely
  # managed by librarian-puppet
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "site.pp"
    puppet.hiera_config_path = "puppet/hiera.yaml"
  end
end
