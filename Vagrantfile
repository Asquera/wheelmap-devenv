# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.ssh.forward_agent = true
  config.vm.network "private_network", ip: "192.168.33.10"
  # Use NFS mount for VM
  config.vm.synced_folder "../wheelmap", "/vagrant", type: 'nfs'

  # For Virtualbox use:
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end
  # For VM Fusion use:
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "2"
  end
  config.vm.provision "shell", path: 'install.sh'
end
