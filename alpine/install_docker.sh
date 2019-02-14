#!/bin/bash
set -e
set -x

apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libseccomp
apk add docker
usermod -aG docker $(whoami)
usermod -aG docker vagrant
pip install docker-compose
rc-update add docker boot
service docker start
