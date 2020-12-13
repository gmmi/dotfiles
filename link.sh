#!/usr/bin/bash

if ! [ -x "/usr/bin/curl"]; then
  sudo apt install curl
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc
if [ -d "~/.config/i3"]; then
  ln -s $(pwd)/.config/i3/config ~/.config/i3/config
fi
