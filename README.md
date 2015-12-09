Go Development Environment
==========================

Sets up vim-go, and Go home directory, installs a bunch of utils and sets up docker optionally.

Otto Setup
==========

Build the infrastructure using Packer template.

```
otto build
```

For now, because aws is hardcoded into everything, if you don't want to use it, just press enter and give it a bogus passphrase.

After that, start the dev environment.

```
otto dev
```

Note: I encountered several problems while using otto. This just shows how immature otto is currently, and even though we are give some customization options, it uses a lot of Magic, which I do not like. Magic always leads to problems.
