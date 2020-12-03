#!/bin/bash

PWD="$(cd "$(dirname "$0")" > /dev/null 2>&1 ; pwd -P)"
ROOT=$HOME/.sysconf

XORG=$ROOT/xorg
ZSH=$ROOT/zsh
TMUX=$ROOT/tmux
EMACS=$ROOT/emacs
SPACEMACS=$EMACS/spacemacs

install() {
    ln -s $PWD $ROOT 2>&1

    # Xorg
    ln -s $XORG/Xdefaults $HOME/.Xdefaults
    ln -s $XORG/xinitrc $HOME/.xinitrc

    # zsh
    ln -s $ZSH/init.rc $HOME/.zshrc 2>&1
    ln -s $ZSH/themes/nopcall.zsh-theme $ZSH/oh-my-zsh/custom/themes/ 2>&1

    # tmux
    ln -s $TMUX/init.conf $HOME/.tmux.conf 2>&1

    # emacs
    ln -s $SPACEMACS/repos $HOME/.emacs.d 2>&1
    ln -s $SPACEMACS/init.el $HOME/.spacemacs 2>&1
}

uninstall() {
    unlink $ROOT 2>&1

    # Xorg
    unlink $HOME/.Xdefaults
    unlink $HOME/.xinitrc

    # zsh
    unlink $HOME/.zshrc 2>&1
    unlink $PWD/zsh/oh-my-zsh/custom/themes/nopcall.zsh-theme 2>&1

    # tmux
    unlink $HOME/.tmux.conf 2>&1

    # emacs
    unlink $HOME/.emacs.d 2>&1
    unlink $HOME/.spacemacs 2>&1
}

# usage: init.sh [install|uninstall]
case $1 in
    install) install ;;
    uninstall) uninstall ;;
    *) install ;;
esac
