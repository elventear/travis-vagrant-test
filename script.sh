#!/bin/bash

set -e -x

cp Vagrantfile /tmp

cd /tmp

vagrant up --provider=libvirt
