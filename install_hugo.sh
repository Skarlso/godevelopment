#!/bin/bash
export GOPATH=/home/vagrant/gohome
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
# One of Hugo's dependencies requires Mercurial to be installed
sudo apt-get install mercurial -y
go get -v github.com/$1/hugo
go get -u -v github.com/$1/hugo
