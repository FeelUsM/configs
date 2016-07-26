#! /bin/bash

# создает симлинк $1 указывающий на $2
# если файл или симлинк с таким имененм существует - переименовывает его
linkto()
{
	#echo "$2" "$1"
	if [ -f "$1" -o -L "$1" ] && [ -z "$(grep -P "\\Q$2\\E\$" <(ls -l "$1") )" ]; then
		date_var="$(date "+%F-%H-%M-%S")"
		mv "$1" "$1".bak-"$date_var"
		echo "$1" moved to "$1".bak-"$date_var"
	fi
	# после переименования не должно остаться $1
	[ -f "$1" -o -L "$1" ] || ln -s "$2" "$1"
}

linkto ~/.emacs ~/configs/_emacs.el
linkto ~/.inputrc ~/configs/_inputrc

[ -f ~/.bashrc ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.bashrc)" ] && echo 'source ~/configs/shellrc' >> ~/.bashrc || echo '~/.bashrc is epsent'
[ -f ~/.zshrc  ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.zshrc )" ] && echo 'source ~/configs/shellrc' >> ~/.zshrc || echo '~/.zshrc is epsent'
