#!/usr/bin/env bash

echo '> You need to Git'
os=$(uname)
if [ ${os} = 'Darwin' ] 
then
	echo '> planform is Macos'
	echo '> Macos need homebrew packages-manage'
	brew install tmux
	cd $HOME
	git clone https://github.com/gpakosz/.tmux.git
	ln -s -f .tmux/.tmux.conf
	cp .tmux/.tmux.conf.local .
	reset
	echo '> You can restart TMUX now'
elif [ ${os} = 'Linux' ]
then
	echo '> planform is Linux'
	echo '> Support Debian series only'
	sudo apt install tmux
	cd $HOME
	git clone https://github.com/gpakosz/.tmux.git
	ln -s -f .tmux/.tmux.conf
	cp .tmux/.tmux.conf.local .
	reset
else
	echo "I don't no"
fi
