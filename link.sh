#!/usr/bin/bash

if [[ -x /usr/bin/git ]]; then
	echo "[+] git installed"
else
	echo "[-] Installing git .."
	sudo apt install git -y &> /dev/null
fi

if [[ -x /usr/bin/zsh ]]; then
	echo "[+] zsh installed"
else
	echo "[-] Installing zsh .."
	sudo apt install zsh -y &> /dev/null
fi

if [[ -x /usr/bin/curl ]]; then
	echo "[+] curl installed"
else
	echo "[-] Installing curl .."
	sudo apt install -y curl &> /dev/null
fi

echo "[*] Installing prequisites for YCM .."
sudo apt install -y build-essential cmake vim-nox python3-dev mono-complete golang nodejs default-jdk npm &> /dev/null

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
