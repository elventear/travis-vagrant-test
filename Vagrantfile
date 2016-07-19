# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "fedora/23-cloud-base"
    config.vm.provider :libvirt do |libvirt|
        libvirt.driver = "qemu"
        libvirt.cpus = 2
        libvirt.volume_cache = 'unsafe'
    end
end

