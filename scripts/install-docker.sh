#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh

sudo sh install-docker.sh --version 18.0.*

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker vagrant
newgrp docker

# Disable SELinux
setenforce 0
sed -i --follow-symlinks 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux

# Disable Firewall
systemctl disable firewalld >/dev/null 2>&1
systemctl stop firewalld