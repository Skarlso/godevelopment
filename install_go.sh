#!/bin/bash

mkdir /home/vagrant/gohome
mkdir /home/vagrant/gohome/src
mkdir /home/vagrant/gohome/bin
mkdir /home/vagrant/gohome/pkg
wget https://storage.googleapis.com/golang/go1.5.2.linux-amd64.tar.gz -O /home/vagrant/go.tar.gz
sudo tar -C /usr/local -xzf /home/vagrant/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/gohome
export PATH=$PATH:$GOPATH/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bash_profile
echo "export GOPATH=/home/vagrant/gohome" >> /home/vagrant/.bash_profile
echo "export PATH=$PATH:$GOPATH/bin" >> /home/vagrant/.bash_profile
