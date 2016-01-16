#!/bin/bash
# Don't care that it doesn't define any binaries.
go get github.com/$1/docker || true
cd ~/gohome/src/github.com/$1/docker
go get ./... || true
# make test
