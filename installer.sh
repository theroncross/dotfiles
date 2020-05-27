#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -si ${BASEDIR}/vimrc ~/.vimrc
ln -si ${BASEDIR}/vim/ ~/.vim

#nvim
ln -si ${BASEDIR}/nvim.init.vim ~/.config/nvim/init.vim

# git
ln -si ${BASEDIR}/gitconfig ~/.gitconfig

# alacritty
ln -si ${BASEDIR}/alacritty.yml ~/.config/alacritty/alacritty.yml
