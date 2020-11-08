#!/bin/bash

PWD="$(pwd)"
ROOT="$HOME/.sysconf"
ln -s $PWD $Root

ZSH=$ROOT/zsh
ln -s $ZSH/zshrc $HOME/.zshrc

TMUX=$ROOT/tmux
ln -s $TMUX/init.conf $HOME/.tmux.conf

EMACS=$ROOT/emacs
SPACEMACS=$EMACS/spacemacs
ln -s $SPACEMACS/init.el $HOME/.spacemacs
