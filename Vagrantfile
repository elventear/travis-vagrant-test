# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT

set -e -x

time sudo dnf -y install tmux htop strace | tee
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "fedora/23-cloud-base"
    config.vm.provider :libvirt do |libvirt|
        libvirt.driver = "qemu"
        libvirt.cpus = 2
        libvirt.memory = 1024
        libvirt.volume_cache = 'unsafe'
    end

    config.vm.provision "shell", inline: $script
end

