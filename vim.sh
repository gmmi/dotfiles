#!/bin/bash

if [ -x "/usr/bin/git"]; then
	echo "[+] git installed"
else
	echo "[-] Installing git .."
	sudo apt install git &> /dev/null
fi

if [ -x "/usr/bin/curl"]; then
	echo "[+] curl installed"
else
	echo "[-] Installing curl .."
	sudo apt install curl &> /dev/null
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
