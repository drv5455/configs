#!/bin/bash
PWD=`pwd`
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi
ln -s ${PWD}/.vimrc ~/.vimrc
if [ -f ~/.tmux.conf ]; then
	mv ~/.tmux.conf ~/.tmux.conf.old
fi
ln -s ${PWD}/.tmux.conf ~/.tmux.conf
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.old
fi
ln -s ${PWD}/.bashrc ~/.bashrc
