#! /bin/bash
linkto()
{
    #echo "$2" "$1"
    if [ -f "$1" -o -L "$1" ] && [ -z "$(grep -P "\\Q$2\\E\$" <(ls -l "$1") )" ]; then
	mv "$1" "$1".bak-"$(date "+%F-%H-%M-%S")"
	echo "$!" moved to "$1".bak-"$(date "+%F-%H-%M-%S")"
	ln -s "$2" "$1"
    fi
}

linkto ~/.emacs ~/configs/_emacs.el
linkto ~/.inputrc ~/configs/_inputrc

[ -f ~/.bashrc ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.bashrc)" ] && echo 'source ~/configs/shellrc' >> ~/.bashrc
[ -f ~/.zshrc  ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.zshrc )" ] && echo 'source ~/configs/shellrc' >> ~/.zshrc
