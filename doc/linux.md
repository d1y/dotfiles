# linux✨
在`17-18`年,几乎完全使用了`linux`来进行学习和开发(`嘿嘿`,·不幸的是,在18年11月我拥有了我第一台mac💥)

## who release?
配置文件相对于发行版而言
- `debian`系列
- `archlinux`系列
- `redhat`系列(服务器方向)

```bash
cat /etc/os-release
# 在redhat系列
# 查看一下relase文件
ls /etc/*release
```
一定要换源!

			我用的是国内的源: https://mirrors.tuna.tsinghua.edu.cn/help/AOSP/

- `ubuntu`发行版
```bash
##
# ubuntu --version :: 18.04
##
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse

##
# ubuntu -- 16.10
##

# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ yakkety-proposed main restricted universe multiverse
```

- AUR
> 用`arch`系列的就是看中了`AUR`👀

`manjaro`的配置见: [上手`manjaro`](https://github.com/d1y/MoePiku/issues/15)

```bash
# 配置文件在: **/etc/pacman.conf**
# 需要安装: **archlinuxcn-keyring** 包
# 配套安装: **yaourt** 包管理(据说不维护了,推荐使用**yay**)
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

## App
- `tmux` :: (配置见: `../sh/tmux.sh`,配置和学习:[jianshu](https://www.jianshu.com/p/c217318a9380)
- `neofetch`
- `google-chrome` :: https://www.chrome64bit.com/
- `SafeEyes` :: 神器,必备,不用说了吧!
- `sublime-text`
