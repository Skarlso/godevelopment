#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim

mkdir /home/vagrant/.vim/colors
cp /vagrant_data/vimrc /home/vagrant/.vimrc
cp /vagrant_data/onedark.vim /home/vagrant/.vim/colors
#Ignore that vundle install will fail because YouCompleteMe must be built
vim +PluginInstall +qall || true
#Build YouCompleteMe
cd /home/vagrant/.vim/bundle/YouCompleteMe
#Ignore any errors
./install.py || true
