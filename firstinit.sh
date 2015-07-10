#! /bin/bash
[ -a ~/.emacs ] && { mv ~/.emacs ~/.emacs.bak; ln -s ~/configs/_emacs ~/.emacs }
[ -a ~/.inputrc ] && { mv ~/.inputsr ~/.inputrc.bak; ln -s ~/configs/_inutrc ~/.inputrc }

[ -f ~/.bashrc ] && [ -z $(grep 'source\ ~/configs/shellrc' ~/.bashrc) ] && echo 'source\ ~/configs/shellrc' >> ~/.bashrc
[ -f ~/.zshrc  ] && [ -z $(grep 'source\ ~/configs/shellrc' ~/.zshrc ) ] && echo 'source\ ~/configs/shellrc' >> ~/.zshrc
