#! /bin/bash

source ~/scripts/aliases-and-functions
# for linksave() and append_ifnot_line() 

linksave ~/configs/_emacs.el ~/.emacs
linksave ~/configs/_inputrc ~/.inputrc

if [ $(uname -o) = GNU/Linux ]; then
	mkdir -p ~/.xneur/
	linksave ~/configs/xneurrc ~/.xneur/xneurrc
fi

if [ -n "$BASH_VERSION" ]; then
	[ -f ~/.bashrc ] && append_ifnot_line 'source ~/configs/shellrc' ~/.bashrc || ln ~/configs/shellrc ~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
	[ -f ~/.zshrc  ] && append_ifnot_line 'source ~/configs/shellrc' ~/.zshrc  || ln ~/configs/shellrc ~/.zshrc
else
	[ -f ~/.bashrc ] && append_ifnot_line 'source ~/configs/shellrc' ~/.bashrc || echo '~/.bashrc is epsent'
	[ -f ~/.zshrc  ] && append_ifnot_line 'source ~/configs/shellrc' ~/.zshrc  || echo '~/.zshrc is epsent'
fi

if [ -n "$(git --version)" ]; then
	git config --global user.name FeelUs
	git config --global user.email 'fel1992@mail.ru'
	# git config --global что-то там еще ... 
	git config --global core.quotepath false # по чловечески выводить unicode а не <число><число><число>
	git config --global credential.helper 'cache --timeout 30000' # помнить пароль 8 часа
	git config --global alias.ch checkout
	git config --global alias.co commit
	git config --global alias.st status
	git config --global alias.br branch
fi
