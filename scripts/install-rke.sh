#!/bin/bash

curl -LO https://github.com/rancher/rke/releases/download/v1.1.3/rke_linux-amd64

mv rke_linux-amd64 rke
chmod +x rke
sudo mv rke /usr/local/bin/rke
# rke --version
