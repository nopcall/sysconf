#!/bin/bash

PWD="$(cd "$(dirname "$0")" > /dev/null 2>&1 ; pwd -P)"
ROOT=$HOME/.sysconf

ZSH=$ROOT/zsh

TMUX=$ROOT/tmux
EMACS=$ROOT/emacs
SPACEMACS=$EMACS/spacemacs

install() {
    ln -s $PWD $ROOT 2>&1

    ln -s $ZSH/init.rc $HOME/.zshrc 2>&1
    ln -s $ZSH/themes/nopcall.zsh-theme $ZSH/oh-my-zsh/custom/themes/ 2>&1

    ln -s $TMUX/init.conf $HOME/.tmux.conf 2>&1

    ln -s $SPACEMACS/repos $HOME/.emacs.d 2>&1
    ln -s $SPACEMACS/init.el $HOME/.spacemacs 2>&1
}

uninstall() {
    rm -rf $ROOT 2>&1

    # zsh
    rm -rf $HOME/.zshrc 2>&1
    rm -rf $PWD/zsh/oh-my-zsh/custom/themes/nopcall.zsh-theme 2>&1

    # tmux
    rm -rf $HOME/.tmux.conf 2>&1

    # emacs
    rm -rf $HOME/.emacs.d 2>&1
    rm -rf $HOME/.spacemacs 2>&1
}

# usage: init.sh [install|uninstall]
case $1 in
    install) install ;;
    uninstall) uninstall ;;
    *) install ;;
esac
