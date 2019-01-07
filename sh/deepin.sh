#!/usr/bin/env bash
reset
echo -e "--Your operating system?--
1 ── deepin
2 ── elementary-os
3 ── ubuntu-18.10
4 ── manjaro-gnome
5 ── macos
---------------------------"
read -p '=> input Number: '
wrap (){
  echo ../config/.alias >> $HOME/.zshrc
  echo ../config/.vimrc > $HOME/.vimrc
  sudo chmod u+x ./tmux.sh
  ./tmux.sh
  sudo cp ./ssr /usr/local/bin
  sudo chmod 776 /usr/local/bin/ssr
  sudo wget -O /usr/local/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
  sudo chmod 776 /usr/local/bin/prettyping
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  sudo echo ../config/.proxychains.conf > /etc/proxychains.conf
}
deepin (){
  echo -n 'switch to Chinese mirror?  Y/N ::=> '
  read check_mirror
  if [ ${check_mirror} = 'Y' -a ${check_mirror} = 'y' ]
  then
    mirrors='deb [by-hash=force] https://mirrors.tuna.tsinghua.edu.cn/deepin unstable main contrib non-free'
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    sudo echo -e ${mirrors} > /etc/apt/sources.list
  fi
  sudo apt update && sudo apt dist-upgrade
  sudo apt install -y vim tree \
  git curl wget neofetch htop ncdu moc \
  fd zsh nodejs python3 python3-pip \
  python3-dev atom sublime-text-dev \
  moeditor netease-cloud-music listen1 tickeys npm \
  tmux safeeyes proxychains albert \
  python-software-properties software-properties-common \
  dconf-editor
  mkdir $HOME/tmp
  cd $HOME/tmp
  wget https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_amd64.deb
  sudo dpkg -i bat_0.9.0_amd64.deb
  sudo apt install -f
  rm bat_0.9.0_amd64.deb
  sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
  sudo cnpm i  -g fuck-you
  sudo cnpm i -g hexo-cli
  sudo apt-get -y install
  sudo apt-get -y install
  wget -O $HOME/tmp/hyper.deb https://releases.hyper.is/download/deb
  sudo dpkg -i $HOME/tmp/hyper.deb
  sudo apt install -f
  sudo apt -y autoremove
  echo -n '是否需要安装主题? Y/n ::=> '
  read confirm
  if [ ${confirm} = 'Y' -a ${confirm} = 'y' ]
  then
    sudo apt install -y gtk2-engines-murrine gtk2-engines-pixbuf
    echo "----> marea-icon-theme"
    sudo apt install -y marea-icon-theme
    # 下载文件
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
    rm -rf $HOME/tmp
  fi
  wrap
}
wine (){
  git clone https://github.com/Jactor-Sue/Deepin-Apps-Installation.git
  cd Deepin-Apps-Installation && chmod +x ./install-deepin-wine.sh && ./install-deepin-wine.sh
  cd ./deepin-apps
  sudo dpkg -i *.deb
}
elementary (){
  mkdir $HOME/tmp
  cd $HOME/tmp
  mirrors='deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse \n
           deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse \n
           deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse \n
           deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse'
  echo -n 'checkout Chinese mirror?  Y/n => '
  read confirm
  if [ ${confirm} = 'y' -a ${confirm} = 'Y' ]
  then
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    sudo echo -e ${mirrors} > /etc/apt/sources.list
  fi
  sudo apt update && sudo apt dist-upgrade
  sudo apt install git
  sudo apt install -y vim tree \
  git curl wget neofetch htop ncdu moc \
  fd zsh tmux python-software-properties software-properties-common
  sudo chmod u+x proxychains.sh
  ./proxychains.sh build
  sudo add-apt-repository ppa:nilarimogard/webupd8
  sudo apt-get update
  sudo apt install albert
  sudo add-apt-repository ppa:slgobinath/safeeyes
  sudo apt update
  sudo apt install safeeyes
  git clone https://github.com/ysfl/elementaryos.git && ./elementaryos/elementary_config
  clonePath=$(HOME)
  wrap
  echo 'clone PATH => ${clonePath}/tmp/elementaryos \n
  home => https://github.com/ysfl/elementaryos'
}
ubuntu (){
  echo 'elementary end :)'
  elementary
}
manjaro (){
  sudo pacman-mirrors -g
  sudo pacman-mirrors -c China
  sudo pacman-optimize && sync
  sudo pacman -Syyu
  sudo pacman-mirrors -gb testing -c China
  mirrors='[archlinuxcn] \n
SigLevel = Optional TrustedOnly \n
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch \n
[arch4edu] \n
SigLevel = Never \n
Server = http://mirrors.tuna.tsinghua.edu.cn/arch4edu/$arch'
  sudo echo -e ${mirrors} >> /etc/pacman-mirrors.conf
  sudo pacman -Syyu
  sudo pacman -S fish git yaourt yay archlinuxcn-keyring
  chsh -s /usr/bin/fish
  # software
  sudo pacman -S fcitx-sogoupinyin fcitx-im fcitx-configtool
  pinyin='export GTK_IM_MODULE=fcitx \n export QT_IM_MODULE=fcitx \n export XMODIFIERS="@im=fcitx"'
  echo -e ${pinyin} > $HOME/.xprofile
  sudo pacman -S netease-cloud-music google-chrome firefox firefox-i18n-zh-cn \
  vim tree curl wget neofetch htop ncdu moc \
  fd zsh nodejs python3 python3-pip \
  python3-dev atom sublime-text-dev \
  moeditor listen1 tickeys npm \
  tmux safeeyes proxychains albert
  wrap
}

case $REPLY in
  1)
    deepin
    ;;
  2)
    elementary
    ;;
  3)
    ubuntu
    ;;
  4)
    manjaro
    ;;
  5)
    echo -n 'homebrew installed? Y/n => '
    read brewfile
    if [ ${brewfile} = 'y' -a ${brewfile} = 'Y' ]
    then
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
    brew install mas
    brew bundle --file="../config/.Brewfile"
    ;;
esac
