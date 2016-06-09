#!/bin/bash

cat > /etc/apk/repositories <<EOF
http://dl-6.alpinelinux.org/alpine/edge/community/
http://dl-6.alpinelinux.org/alpine/edge/community/
http://dl-5.alpinelinux.org/alpine/v3.3/main/
http://dl-6.alpinelinux.org/alpine/v3.3/main/
http://nl.alpinelinux.org/alpine/edge/testing
http://nl.alpinelinux.org/alpine/v3.3/main/
EOF

cat > /home/vagrant/.bash_profile <<EOF
# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w #\\[$(tput sgr0)\\]"
else # normal
  PS1="[\t \\u@\\h:\\w] $ "
fi

alias ll='ls -l'
EOF

sudo chown vagrant:vagrant /home/vagrant/.bash_profile
