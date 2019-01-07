#!/usr/bin/env bash

# author: d1y
# date: 2019/01/04

# - install
# build need gcc :)
# Darwin system c build
echo '> You need git gcc'
tips_path='install_PATH: /usr/local/bin/proxychains \nconfig_PATH: /etc/proxychains.conf \nhome: https://github.com/rofl0r/proxychains-ng.git'
os=$(uname)

if [ $1 = 'install' ]
then
	if [ ${os} = 'Darwin' ]
		then
			brew install proxychains-ng
			echo -e $tips_path
	elif [ 'expr substr $(uname -s) 1 5' = 'Linux' ]
	then
		sudo apt install proxychains
		echo -e $tips_path
	else
		echo 'no,I won"t support it :('
	fi
elif [ $1 = 'build' ]
then
	old_path=$(pwd)
	install_for(){
		cd $TMPDIR
 		git clone https://github.com/rofl0r/proxychains-ng.git pyng
  	cd pyng
  	./configure  --sysconfdir=/etc
		make
		sudo make install
		sudo make install-config
		cd $old_path
	}
	install_for
fi
