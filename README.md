Go Development Environment
==========================

Prerequisites
=============


Vagrant Installation
--------------------

In order for this to work, you need a working version of vagrant. Please follow the appropriate instructions for your operating system.

[Vagrant Install Guide](http://www.vagrantup.com/downloads)

Please note, that for vagrant to work, you need an appropriate virtualization agent. I recommend using Virtual Box.

[VirtualBox Installation Guide](https://www.virtualbox.org/manual/ch02.html)


The Environment
===============

Starting
--------

Once vagrant is up and running, all you have to do is executing a ```vagrant up``` in the root directory of this repository.

Setup
-----

So, what is actually setup?

Vim
---

For vim [vim-go](https://github.com/fatih/vim-go) is configured and ready to be used. Various smaller features include:

* NerdTree (for folder view.) It is always toggled to be on. To disable this set this ~/.vimrc: let g:nerdtree_tabs_open_on_console_startup=0
* Colorscheme [onedark](https://github.com/joshdick/onedark.vim)
* 4 spaces for tabs
* PowerShell Syntax Highlight
* Autocomplete of various things with [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
* Ctags
* Plain Tasks for simple todos like in SublimeText
* SVN and Git integration
* Syntax Highlight
* Numbered Lines
* Highlight search results
* A few key bindings
 * <F8> :TagbarToggle
 * <F10> :UpdateTags
 * <C-n> :NERDTreeToggle
 * <F7> :tabnew

Environment
-----------

GoHome is setup. And a couple of utils are also installed along the way:
* htop
* vim
* git
* wget
* mc
* nmap
* lynx
* build-essential cmake
* python-dev
* ctags

Docker
------

Originally I'm using this environment to develop Docker, so I need docker setup as well. This installs docker-engine and adds vagrant user to the sudo docker group so docker can be called without sudo.

In order to do that, please uncomment this line in Vagrantfile:
```
#config.vm.provision "shell", path: "install_docker.sh"
```

Support
=======

Any suggestions and requests for installation are welcome via the Issue system.

Thank you!
