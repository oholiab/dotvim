#!/bin/bash

cd ~/.vim
git submodule init
git submodule update

cd ~
ln -s .vim/.vimrc
ln -s .vim/.bashrc
ln -s .vim/.screenrc
