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

Also, because values are setup using Vagrant Env plugin, make sure you run:

```
vagrant plugin install vagrant-env
```

Variables
---------

You need to export these variables into a ```.env``` file.

Environment variables that can be used (also their default value) => 
* VAGRANT_BOX=ubuntu/trusty64
* GO_VM_MEMORY=6024
* GO_VM_NAME=go_development
* GO_VM_CPU=2
* INSTALL_DOCKER=true

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
 * F8 :TagbarToggle
 * F10 :UpdateTags
 * C-n :NERDTreeToggle
 * F7 :tabnew

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

In order to do that, please set the following environment variable:
```
echo INSTALL_DOCKER=true > .env && vagrant up
```

Hugo
----

[Hugo](https://gohugo.io) is a choice install, just like Docker. One of Hugo's dependencies requires mercurial which is also getting installed. Installing Hugo is similar to Docker.

```
echo INSTALL_HUGO=true > .env && vagrant up
```

Otto
====

To Start otto you have to have the binary which you can download from here: [Install Otto](https://ottoproject.io/intro/getting-started/install.html).

Build the infrastructure using Packer template.

```
otto build
```

For now, because AWS is hardcoded into everything, if you don't want to use it, just press enter and give it a bogus passphrase.

After that, start the dev environment.

```
otto dev
```

Note: I encountered several problems while using otto. This just shows how immature otto is currently, and even though we are give some customization options, it uses a lot of Magic, which I do not like. Magic always leads to problems.


Support
=======

Any suggestions and requests for installation are welcome via the Issue system.

Thank you!
