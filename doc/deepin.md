# 安装
- 官网下载镜像: https://www.deepin.org/download/
- 镜像站
  - http://mirrors.ustc.edu.cn/
  - https://mirrors.tuna.tsinghua.edu.cn/
# 初始化
先安装常用的一些软件
```bash
sudo apt update && sudo apt dist-upgrade
sudo apt install -y vim tree git curl wget neofetch htop ncdu moc fd
```
接下来安装一下主题
```bash
# 依赖
sudo apt install -y gtk2-engines-murrine gtk2-engines-pixbuf
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
```
安装`zsh`
```bash
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
`.zshrc`
```bash
echo "alias du='ncdu'" >> $HOME/.zshrc
```
接下来上手`linuxbrew`
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "export PASH=:/home/linuxbrew/.linuxbrew/bin" >> $HOME/.zshrc
echo '----> bat'
brew install bat
echo "alias cat='bat'" >> $HOME/.zshrc
```
`ping`的加强版`prettyping`
```bash
sudo wget -O /usr/local/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +X /usr/local/bin/prettyping
echo "alias ping='usr/local/bin/prettyping'" >> $HOME/.zshrc
```
接下来就是安装开发工具
```bash
sudo apt install -y nodejs python3 python3-pip python3-dev atom sublime-text-dev moeditor netease-cloud-music listen1 tickeys npm
```
然后是终端代理工具: `Proxychains`
```bash
sudo apt install -y proxychains
# 记得注释掉 socks4
sudo echo "socks5 127.0.0.1 1080" >> /etc/proxychains.conf
```
不要`npm`上手`cnpm`
```bash
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
```
`cnpm`安装常用的全局
```bash
sudo cnpm i  -g fuck-you
sudo cnpm i -g hexo-cli
```
然后是`albert`和`safeeyes`
```bash
sudo -y apt install albert
sudo -y apt install safeeyes
```
忘了`PPA`
```bash
sudo apt-get -y install python-software-properties
sudo apt-get -y install software-properties-common
```
`hyper`
```bash
wget -O $HOME/tmp/hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i $HOME/tmp/hyper.deb
sudo apt install -f
```
