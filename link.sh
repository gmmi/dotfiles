#!/usr/bin/bash

if [[ -x /usr/bin/git ]]; then
	echo "[+] git installed"
else
	echo "[-] Installing git .."
	sudo apt install git &> /dev/null
fi

if [[ -x /usr/bin/zsh ]]; then
	echo "[+] zsh installed"
else
	echo "[-] Installing zsh .."
	sudo apt install zsh &> /dev/null
fi

if [[ -x /usr/bin/curl ]]; then
	echo "[+] curl installed"
else
	echo "[-] Installing curl .."
	sudo apt install curl &> /dev/null
fi

if [[ -e ~/.vim/autoload/plug.vim ]]; then
	echo "[!] ~/.vim/autoload/plug.vim already exists" 
else
	curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -e ~/.vimrc ]]; then
	ln -s $(pwd)/.vimrc ~/.vimrc
else
	echo "[!] ~/.vimrc already exists"
fi

if [[ ! -e ~/.zshrc ]]; then
	ln -s $(pwd)/.zshrc ~/.zshrc
else
	echo "[!] ~/.zshrc already exists"
fi
