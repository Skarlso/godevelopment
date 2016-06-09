#!/bin/bash

sudo apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libseccomp
sudo apk add docker
sudo rc-update add docker boot
sudo service docker start
sudo sysctl -w kernel.grsecurity.chroot_deny_chmod=0
sudo sysctl -w kernel.grsecurity.chroot_deny_mknod=0
sudo usermod -aG docker vagrant
sudo pip install docker-compose
