#!/bin/bash

PWD="$(pwd)"

HCONF="$HOME/.sysconf"

ln -s $PWD $HCONF

ln -s $HCONF/init.conf $HOME/.tmux.conf
ln -s $HCONF/zshrc $HOME/.zshrc
