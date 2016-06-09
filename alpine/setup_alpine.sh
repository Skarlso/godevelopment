#!/bin/bash

cat << EOF > /etc/apk/repositories
http://dl-6.alpinelinux.org/alpine/edge/community/
http://dl-6.alpinelinux.org/alpine/edge/community/
http://dl-5.alpinelinux.org/alpine/v3.3/main/
http://dl-6.alpinelinux.org/alpine/v3.3/main/
http://nl.alpinelinux.org/alpine/edge/testing
http://nl.alpinelinux.org/alpine/v3.3/main/
EOF

cat << EOF > ~/.bashrc
# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w #\\[$(tput sgr0)\\]"
else # normal
  PS1="[\t \\u@\\h:\\w] $ "
fi

alias ll='ls -l'
EOF
