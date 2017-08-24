#!/bin/bash

# Configure network interface
cat<<EOF
TYPE=Ethernet
NAME=enp2s0
UUID=7b7b75f2-abc6-46e0-a4f5-74ae26e5bf6c
DEVICE=enp2s0
ONBOOT=yes
BRIDGE=br0
ZONE=public
EOF > /etc/sysconfig/network-scripts/ifcfg-enp2s0

# Configure bridge interface (used by kvm)
cat<<EOF
DEVICE=br0
STP=yes
TYPE=Bridge
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=br0
UUID=77295c6d-2126-4d69-879b-41da08f13596
ONBOOT=yes
BRIDGING_OPTS=priority=32768
IPADDR=192.168.1.100
PREFIX=24
DNS1=192.168.1.1
IPV6_PEERDNS=yes
IPV6_PEERROUTES=yes
DELAY=2
ZONE=public
EOF > /etc/sysconfig/network-scripts/ifcfg-br0
