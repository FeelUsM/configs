#! /bin/bash
if [ -f ~/.emacs -a ! -L ~/.emacs ]; then
    mv ~/.emacs ~/.emacs.bak
    ln -s ~/configs/_emacs ~/.emacs
    echo ~/.emacs moved to ~/.emacs.bak
else
    echo ~/.emacs - not exists or is symbolic link
fi

if [ -f ~/.inputrc -a ! -L ~/.inputrc ]; then
    mv ~/.inputrc ~/.inputrc.bak
    ln -s ~/configs/_inutrc ~/.inputrc
    echo ~/.input moved to ~/.inputrc.bak
else
    echo ~/.inputrc - not exists or is symbolic link
fi


[ -f ~/.bashrc ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.bashrc)" ] && echo 'source\ ~/configs/shellrc' >> ~/.bashrc
[ -f ~/.zshrc  ] && [ -z "$(grep 'source\ ~/configs/shellrc' ~/.zshrc )" ] && echo 'source\ ~/configs/shellrc' >> ~/.zshrc
