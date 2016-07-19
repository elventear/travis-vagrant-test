#!/bin/bash

set -x -e 

# http://linuxsimba.com/vagrant-libvirt-install
apt-get -y install jq curl
# https://github.com/mitchellh/vagrant-installers/issues/12
LATEST_VAGRANT=$(curl -s https://releases.hashicorp.com/vagrant/index.json | jq --raw-output '.versions | to_entries | max_by(.key) | .value.builds | .[] | select(.arch=="x86_64") | select(.os=="debian") | .url ')
test -f /tmp/vagrant.deb || { wget -q $LATEST_VAGRANT -O /tmp/vagrant.deb && dpkg -i /tmp/vagrant.deb; }
apt-get -qq update 
apt-get -y install qemu-kvm libvirt-bin libvirt-dev htop tmux libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev  qemu-utils libvirt-dev
vagrant plugin install vagrant-mutate
vagrant plugin install vagrant-libvirt
