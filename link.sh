#!/usr/bin/bash

if ! [ -x "/usr/bin/curl" ]; then
  	sudo apt install curl
fi

if [ -e "~/.vim/autoload/plug.vim" ]; then
	echo "[!] ~/.vim/autoload/plug.vim already exists" ]
else
	curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ -e "~/.vimrc" ]; then
	echo "[!] ~/.vimrc already exists"
else
	ln -s $(pwd)/.vimrc ~/.vimrc
fi

if ! [ -x "/usr/bin/zsh" ]; then
	sudo apt install zsh
fi

if [ -e "~/.zshrc" ]; then
	echo "[!] ~/.zshrc already exists"
else
	ln -s $(pwd)/.zshrc ~/.zshrc
fi

if [ -d "~/.config/i3" ]; then
  ln -s $(pwd)/.config/i3/config ~/.config/i3/config
fi
