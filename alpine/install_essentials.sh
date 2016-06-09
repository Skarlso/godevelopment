#!/bin/bash

sudo apk update
sudo apk upgrade
sudo apk add bash bash-doc bash-completion
sudo apk add util-linux pciutils usbutils coreutils binutils findutils grep
sudo apk add udisks2 udisks2-doc
sudo apk add build-base gcc abuild binutils binutils-doc gcc-doc
sudo apk add man man-pages
sudo apk add htop vim git wget mc nmap lynx curl mercurial bzr
sudo apk add cmake cmake-doc extra-cmake-modules extra-cmake-modules-doc
sudo apk add make
sudo apk add python-dev ctags
sudo apk add perl shadow make ncurses
sudo apk add iptables
sudo apk add py-pip
sudo pip install --upgrade pip
sudo apk update
