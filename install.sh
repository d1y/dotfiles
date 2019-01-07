#!/usr/bin/env bash
if [ $1 = 'tree']
then
	echo '--------'
	tree sh/ | grep '.sh'
	echo '--------'
	exit
fi
echo -e Welcome to "\033[32;49;1mD1Y\033[39;49;0m"
echo -e '→ \033[32;31;1minstall for configure ↓\033[39;49;0m'
echo -e "-- ^ install script ^ --
1 ── bbr.sh
2 ── deepin.sh
3 ── github-issuse-back.sh
4 ── proxychains.sh
5 ── pythonhttp.sh
6 ── ssh_port.sh
7 ── ssr.sh
8 ── tmux.sh
9 ── vpstest.sh
10 ─ ssr
-----------------------"
read -p '=> input Number: '
case $REPLY in
	1)
		sudo chmod u+x sh/bbr.sh
		./sh/bbr.sh
		# reset
		;;
	2)
		sudo chmod u+x sh/deepin.sh
		./sh/deepin.sh
		# reset
		;;
	3)
		sudo chmod u+x sh/github-issuse-back.sh
		./sh/github-issuse-back.sh
		reset
		;;
	4)
		sudo chmod u+x sh/proxychains.sh
		echo '>> install & build <<'
		read confirm
		if [ ${confirm} = 'install' ]
		then
			./sh/proxychains.sh install
		elif [ ${confirm} = 'build']
		then
			./sh/proxychains.sh build
		fi
		# reset
		;;
	5)
		sudo chmod u+x sh/pythonhttp.sh
		./sh/pythonhttp.sh
		reset
		;;
	6)
		sudo chmod u+x sh/ssh_port.sh
		./sh/ssh_port.sh
		reset
		;;
	7)
		sudo chmod u+x sh/ssr.sh
		echo '请确定你是服务端 Y/n'
		read confirm
		if [ $confirm = 'Y' -a $confirm = 'y' ]
			then
				./sh/ssr.sh
		fi
		# reset
		;;
	8)
		sudo chmod u+x sh/tmux.sh
		./sh/tmux.sh
		;;
	9)
		sudo chmod u+x sh/vpstest.sh
		echo '建议此脚本在服务端运行:)'
		read
		./sh/vpstest.sh
		;;
	10)
		sudo cp sh/ssr /usr/local/bin/
		sudo chmod 775 /usr/local/bin/ssr
		;;
esac
