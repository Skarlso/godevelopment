#!/bin/bash

cat <<EOT >> ~/.bash_profile
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
EOT
