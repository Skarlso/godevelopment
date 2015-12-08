#!/bin/bash

sudo apt-get install -y linux-headers-$(uname -r) build-essential
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y linux-image-generic-lts-trusty
sudo apt-get update
sudo apt-get install -y docker-engine
sudo usermod -aG docker vagrant
