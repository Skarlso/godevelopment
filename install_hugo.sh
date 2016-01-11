#!/bin/bash
export GOPATH=/home/vagrant/gohome
export PATH=$PATH:/usr/local/go/bin
go get -v github.com/$1/hugo
# go get -u -v github.com/$1/hugo
