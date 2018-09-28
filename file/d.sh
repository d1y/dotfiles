#!/bin/bash
# 首先是更新
echo "----> 现在是准备更新了 | 需要自己确定"
sudo apt update && sudo apt dist-upgrade
# 然后是安装常用软件
echo "----> 安装< vim tree git curl wget neofetch htop ncdu moc fd>"
sudo apt install -y vim tree git curl wget neofetch htop ncdu moc fd
# 安装主题与图标
# 1.主题
echo "----> 主题依赖"
sudo apt install -y gtk2-engines-murrine gtk2-engines-pixbuf
echo "----> marea-icon-theme"
sudo apt install -y marea-icon-theme
# 下载文件
mkdir $HOME/tmp
cd $HOME/tmp
echo "----> Yosemite-gtk-theme"
git clone https://github.com/vinceliuice/Yosemite-gtk-theme.git yosemite
cd $HOME/tmp/yosemite
chmod u+x Install
./Install
echo "----> Sierra-gtk-theme"
git clone https://github.com/vinceliuice/Sierra-gtk-theme.git sierea
cd sierea
chmod u+x Install
./Install
# .icons
echo "----> la-capitaine-icon-theme"
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git $HOME/.icons/la-capitaine
# 安装zsh
echo '----> zsh'
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "alias du='ncdu'" >> $HOME/.zshrc
echo '----> Homebrew'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "export PASH=:/home/linuxbrew/.linuxbrew/bin" >> $HOME/.zshrc
echo '----> bat'
brew install bat
echo "alias cat='bat'" >> $HOME/.zshrc
echo '----> ping加强版'
sudo wget -O /usr/local/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +X /usr/local/bin/prettyping
echo "alias ping='usr/local/bin/prettyping'" >> $HOME/.zshrc
echo "----> Develop Tools"
sudo apt install -y nodejs python3 python3-pip python3-dev atom sublime-text-dev moeditor netease-cloud-music listen1 tickeys npm
echo "----> Proxychains"
sudo apt install -y proxychains
# 这里记住注视到 socks4 代理
sudo echo "socks5 127.0.0.1 1080" >> /etc/proxychains.conf
echo "----> 接下来是cnpm"
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
echo "使用 cnpm 来安装全局模块"
cnpm i  -g fuck-you
