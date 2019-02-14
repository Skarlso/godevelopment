#!/bin/bash

sudo apk update
sudo apk upgrade
sudo apk add --no-cache python python-dev ctags bash bash-doc bash-completion
sudo apk add --no-cache util-linux pciutils usbutils coreutils binutils findutils grep udisks2 udisks2-doc
sudo apk add --no-cache build-base gcc abuild binutils binutils-doc gcc-doc man man-pages cmake
sudo apk add --no-cache htop vim git wget mc nmap lynx curl mercurial bzr
sudo apk add --no-cache make
sudo apk add --no-cache perl shadow ncurses
sudo apk add --no-cache iptables
sudo apk add --no-cache py-pip
sudo pip install --upgrade pip
sudo apk update
