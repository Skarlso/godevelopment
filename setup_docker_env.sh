#!/bin/bash
go get github.com/$1/docker
cd ~/gohome/src/github.com/$1/docker
go get ./...
# make test
