#!/bin/bash

# Redirect the output into a log file, because vim +PluginInstall messes up the terminal
logfile=vim_config.log
exec > $logfile 2>&1

git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim

mkdir /home/vagrant/.vim/colors
curl https://raw.githubusercontent.com/Skarlso/devops/master/vimrc -o /home/vagrant/.vimrc
curl https://raw.githubusercontent.com/Skarlso/onedark.vim/master/colors/onedark.vim -o /home/vagrant/.vim/colors/onedark.vim
#Ignore that vundle install will fail because YouCompleteMe must be built
vim +PluginInstall +qall || true
#Build YouCompleteMe
cd /home/vagrant/.vim/bundle/YouCompleteMe || exit
#Ignore any errors
./install.py || true
