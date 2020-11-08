#!/bin/bash

PWD="$(pwd)"
ROOT="$HOME/.sysconf"
ln -s $PWD $Root

ZSH=$ROOT/zsh
ln -s $ZSH/init.rc $HOME/.zshrc
ln -s $ZSH/theme/nopcall.zsh-theme $ZSH/oh-my-zsh/custom/themes/

TMUX=$ROOT/tmux
ln -s $TMUX/init.conf $HOME/.tmux.conf

EMACS=$ROOT/emacs
SPACEMACS=$EMACS/spacemacs
ln -s $SPACEMACS/init.el $HOME/.spacemacs
