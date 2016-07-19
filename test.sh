#!/bin/bash

set -e

newArray=()
for e in $@; do
    newArray+=($( echo $e | sed -e 's/,accel=kvm//g'))
done
/usr/bin/qemu-system-x86_64 "${newArray[*]}"
