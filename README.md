# Vim Shared Config

![Vim](https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg)

## Initial Setup

```bash
$ git clone https://github.com/buraian/vim.git ~/.config/vim
$ ln -s ~/.config/vim/.vimrc ~/.vimrc
```

## Tasks

- [Install Plugin](#install-plugin)
- [Cleanup Plugins](#cleanup-plugins)

### Install Plugin

Add plugin(s) to Vim initializations file:

```bash
$ vim ~/.vimrc
```

```vim
" ~/.vimrc

Plug 'tpope/vim-sensible'
```

Save and Refresh Vim settings, then Install Plugins:

```
:w
:source %
:PlugInstall
```

### Cleanup Plugins

```vim
:PlugClean
```