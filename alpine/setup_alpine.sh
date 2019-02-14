#!/bin/bash

cat > /etc/apk/repositories <<EOF
http://dl-2.alpinelinux.org/alpine/latest-stable/community
http://dl-2.alpinelinux.org/alpine/latest-stable/main
EOF

cat << EOF > /home/vagrant/.bash_profile
# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  # PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w # \\[$(tput sgr0)\\]"
  PS1="\[\033[01;32m\]\\u@\\h:\\w # \[\033[0m\]"
else # normal
  PS1="[\t \\u@\\h:\\w] $ "
fi

alias ll='ls -l'
EOF

cat << EOF > /home/vagrant/.profile
# If id command returns zero, you’ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="\[\033[01;32m\]\\u@\\h:\\w # \[\033[0m\]"
else # normal
  PS1="[\t \\u@\\h:\\w] $ "
fi

alias ll='ls -l'
EOF

echo "vagrant ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
echo "Defaults:vagrant !requiretty" >> /etc/sudoers

chown vagrant:vagrant /home/vagrant/.bash_profile
chown vagrant:vagrant /home/vagrant/.profile
chmod +w /home/vagrant/.profile
chmod +w /home/vagrant/.bash_profile