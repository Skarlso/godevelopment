#!/bin/bash
mkdir ~/DockerDev
cd ~/DockerDev
git clone https://github.com/$1/docker.git
cd docker
git remote add upstream https://github.com/docker/docker.git
# make test
