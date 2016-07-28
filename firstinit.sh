#! /bin/bash

source ~/scripts/aliases-and-functions
# for linkto() and append_line() 

linkto ~/.emacs ~/configs/_emacs.el
linkto ~/.inputrc ~/configs/_inputrc

[ -f ~/.bashrc ] && append_line 'source\ ~/configs/shellrc' ~/.bashrc || echo '~/.bashrc is epsent'
[ -f ~/.zshrc  ] && append_line 'source\ ~/configs/shellrc' ~/.zshrc  || echo '~/.zshrc is epsent'

if [ -n "$(git --version)" ]; then
	git config --global user.name FeelUs
	git config --global user.email 'fel1992@mail.ru'
	# git config --global что-то там еще ...
	git config --global core.quotepath false
fi
