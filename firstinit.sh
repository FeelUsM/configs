#! /bin/bash

source ~/scripts/aliases-and-functions
# for linkto() and append_line() 

linkto ~/.emacs ~/configs/_emacs.el
linkto ~/.inputrc ~/configs/_inputrc
mkdir -p ~/.xneur/
linkto ~/.xneur/xneurrc ~/configs/xneurrc

[ -f ~/.bashrc ] && append_line 'source ~/configs/shellrc' ~/.bashrc || echo '~/.bashrc is epsent'
[ -f ~/.zshrc  ] && append_line 'source ~/configs/shellrc' ~/.zshrc  || echo '~/.zshrc is epsent'

if [ -n "$(git --version)" ]; then
	git config --global user.name FeelUs
	git config --global user.email 'fel1992@mail.ru'
	# git config --global что-то там еще ... 
	git config --global core.quotepath false # по чловечески выводить unicode а не <число><число><число>
	git config --global credential.helper 'cache --timeout 30000' # помнить пароль 8 часа
fi
