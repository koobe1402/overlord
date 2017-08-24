#!/bin/bash

yum update -y
# Install required packages
yum install -y qemu-kvm \
               libvirt \
               virt-install \
               bridge-utils
