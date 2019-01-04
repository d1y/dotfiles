# macos‍💻
终于上手一台Macbook😗
> 2018/11/28 11:24

在家里自闭了几天之后,回到学校,朋友送了我一台我梦寐以求的`Macbook`👻
```bash
☁  ~  neofetch
                    'c.          kozo4@chenhonhoudeAir
                 ,xNMM.          ---------------------
               .OMMMMo           OS: macOS Mojave 10.14 18A391 x86_64
               OMMM0,            Host: MacBookAir7,2
     .;loddo:' loolloddol;.      Kernel: 18.0.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 6 hours, 40 mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 67 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: zsh 5.3
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 1440x900
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Light)
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: iTerm2
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   Terminal Font: Monaco 16
    kMMMMMMMMMMMMMMMMMMMMMMd     CPU: Intel i5-5350U (4) @ 1.80GHz
     ;KMMMMMMMWXXWMMMMMMMk.      GPU: Intel HD Graphics 6000
       .cooc,.    .,coo:.        Memory: 2028MiB / 8192MiB


```
配置虽然不咋地,但也能将就着吧😋

## 目前上手体验
目前已经入手了一天,`Mac`和`Win`+`Linux`的快捷键完全不同,一开始我还适应不了,现在感觉用起来很优雅,不喜欢打游戏,所以不知道`Mac`在这方面表现的怎么样,但单就论续航能力绝对甩其他电脑一大锅,昨天从`21`点玩到`0`点还剩下`50`的电(比我那台渣渣`DELL`好太多了)
总之,是又能装逼,又能开发🙌
(不好折腾,有些东西改不了,不像`Linux`,想怎么玩就怎么玩)
## 必备软件推荐
为什么选`Mac`也是因为发现一些软件,一般情况下都会有`Mac`版,而没有`Linux`版,而且大部分都比较美观(有可能是我这么觉得吧👤),我看重了它的包管理`homebrew`,类似于`debian`系列的`apt-get` | `Archlinux`系列的`pacman` 反正就是包管理,优雅的解决一些依赖问题,它实际上就是调用了`git`和`ruby`命令,我这台刚上手,我记得好像都自带了👀这些依赖,只需要打开官网然后复制安装脚本即可(👀翻墙后执行更快哦)
```bash
# go url: htttp://brew.sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
然后就可以使用安装很多东西了
```bash
brew install wget curl tree htop ncdu
```
建议换成国内源(每次它会自动`update`,如果每次都是从`Github`推过来,会超级慢的)
```bash
# 看这里👀: https://mirror.tuna.tsinghua.edu.cn/help/homebrew/
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
# add PATH
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
```
然后加个`cask`,那个`tap`类似于`apt-add-repo`那个😁
```bash
    brew tap caskroom/cask
```
然后装一些常用了软件,比如`chrome`之类的
```bash
brew cask install google-chrome firefox mpv atom sublime-text
```
还有很多`app`就看个人来了,这里我贴一下我自己的`app`
## 常用的
- [Alfred](https://xclient.info/s/alfred.html?t=6fda0a2450cc619bf8251fae4b36405b9357d97f) - 神器不用说了吧!🍭
- [item2](https://www.iterm2.com/) - `Terminal`替代品🍕
- [网易云](https://music.163.com/#/download) - `网易云女朋友`
- [Google chrome](https://www.chrome64bit.com/) - `最好的浏览器,不接受反驳!`
- [Dash](https://xclient.info/s/dash.html) - `API`文档库
- [F.lux](https://justgetflux.com/) - 护眼神器
- [bilibili](https://typcn.com/legacy/bilimac/) - B站`Mac`客户端
- [noizio](https://xclient.info/s/noizio.html) - 白噪音,必备!
- [Atom](https://npm.taobao.org/mirrors/atom/) - 高颜值编辑器
- [LICEcap](https://www.cockos.com/licecap/) - Gif录制,轻量,小巧
- [mpv](https://mpv.io) - 播放器
- [Tickeys](http://www.yingdev.com/projects/tickeys) - 打字音效
- [Firefly](https://github.com/yinghuocho/firefly-proxy) - 跨越长城
- [system toolkit](https://xclient.info/s/system-toolkit.html) - 系统工具包
- [smoothscroll](https://www.smoothscroll.net/mac/) - 让滑动更舒畅
- [PicGo](https://github.com/Molunerfinn/PicGo) - 图床`app`
- [spectacle](https://github.com/eczarny/spectacle) - 快速排列你的窗口,必备!
- [搜狗输入法](https://pinyin.sogou.com/mac/) - 原生的也不错的
- [command-tab-plus](https://xclient.info/s/command-tab-plus.html) - 应用程序切换增强,神器!
- [keycastr](https://github.com/keycastr/keycastr) - 轻量级的屏幕按键录制的软件
- [OBS](https://obsproject.com/) - 开源的视频录制和直播
- [Kap](https://getkap.co/) - 同样开源的视频录制软件(electron)
- [WhereSign](https://wheresign.com/) - 菜单栏显示一句话(非主流🧝‍♀️)
- [icons8](https://icons8.com/app/) - `svg`图标,开发必备,支持导入`PS`
- [Insomnia](https://github.com/getinsomnia/insomnia) - `http`调试必备
- [jietu](https://jietu.qq.com) - 腾讯出品的截图工具
- [Keka](https://xclient.info/s/keka.html) - 压缩解压神器,必备
- [Logoist-3](https://xclient.info/s/logoist2.html) - 快速的logo制作
- [Mark text](https://github.com/marktext/marktext/) - 支持斗图的`markdown`编辑器
- [Monodraw](https://xclient.info/s/monodraw.html) - 画流程图,神器!(强大的ASCII艺术编辑器)
- [sip](https://xclient.info/s/sip.html) - 屏幕取色神器
- [Sketch](https://xclient.info/s/sketch.html) - 设计神器
- [balenaEtcher](https://www.balena.io/etcher/) - `mac`下免费刻录软件
> more 👇🏻

```bash

├── Adobe\ Photoshop\ CC\ 2019  # ps
├── Adobe\ Zii_4.0.4.app        # adobe系列破解工具
├── Android\ File\ Transfer.app # 和andriod传输文件
├── Aria2GUI.app                # 下载软件
├── Aseprite.app                # 画像素图
├── Backgrounds.app             # 动态背景
├── BaiduNetdisk_mac.app        # 百度云
├── Betwixt.app                 # chrome-devtools风格的网络调试工具
├── CSSDesigner.app             # css设计
├── Cakebrew.app                # homebrew-cask GUI
├── Charles.app                 # 牛逼的网络调试工具
├── DevDocs.app                 # 开发文档
├── Dukto.app                   # 局域网内传输文件
├── EFQRCode.app                # 二维码生成
├── Easy\ New\ File.app         # 在finder创建文件更容易
├── Firefox.app                 # 火狐浏览器,chrome替代品
├── Folx.app                    # 下载神器
├── GIPHY\ CAPTURE.app          # gif录制
├── Gas\ Mask.app               # hosts修改文件
├── GifCapture.app              # electron的壳的gif录制
├── GitHub\ Desktop.app         # github-desktop  
├── HaTTiP.app                  # http调试
├── Hyper.app                   # 终端
├── IINA.app                    # 更现代化的播放器
├── IconFly.app                 # 生成图标
├── Lantern.app                 # 蓝灯
├── MWeb.app                    # markdown :(
├── Mixxx.app                   # DJ打碟专用
├── NemuPlayer.app              # 网易mumu(安卓虚拟机)
├── OpenEmu.app                 # 打游戏模拟器
├── Opera.app                   # opera-browser
├── PDFelement\ Express.app     # PDF查看器
├── Parallels\ Desktop.app      # 虚拟机
├── Paw.app                     # http 调试
├── PopClip.app                 # 复制粘贴
├── ShadowsocksX-NG-R8.app      # 翻墙
├── Soda\ Player.app            # 支持磁力链播放的播放器
├── Sound\ Siphon.app           # 解决mac录制视频无法录制本机的声音🐍
├── Soundnode.app               # Soundcloud 的播放器
├── Sourcetree.app              # git 的 GUI
├── Sublime\ Text.app           # 编辑器
├── TeamViewer.app              # 协作
├── Telegram\ Desktop.app       # TG
├── Tencent\ Lemon.app          # 腾讯电脑管家233
├── Typora.app                  # markown 编辑器
├── Visual\ Studio\ Code.app    # 微软家出的一款编辑器
├── Vysor.app                   # 连接你的安卓手机  
├── iGlance.app                 # 在菜单栏显示你的资源(网速啊之类的~)
├── ieaseMusic.app              # 装逼必备!
├── linux-command.app           # linux 命令查询api
├── macSVG.app                  # mac下画svg
├── wechatwebdevtools.app       # 微信开发工具
└── wewechat.app                # 第三方微信

```

在`../files/Brewfile`里有我的配置文件
```bash
# 执行brew bundle dump备份命令
brew bundle dump --describe --force --file="~/Desktop/Brewfile"

# 参数说明
--describe：为列表中的命令行工具加上说明性文字。
--force：直接覆盖之前生成的Brewfile文件。如果没有该参数，则询问你是否覆盖。
--file="~/Desktop/Brewfile"：在指定位置生成文件。如果没有该参数，则在当前目录生成 Brewfile 文件。

# 该命令会在桌面上生成Brewfile文件，双击打开查看，其内容类似于

## 该部分是 brew 中的 tap，相当于一个个软件库
tap "homebrew/bundle"
tap "homebrew/cask"

## 该部分是 brew 安装的命令行工具
# Mac App Store command-line interface
brew "mas"
# UNIX shell (command interpreter)
brew "zsh"
# Fish shell like syntax highlighting for zsh
brew "zsh-syntax-highlighting"

## 该部分是 brew cask 安装的 app
cask "mounty"
cask "dteoh/sqa/slowquitapps"

## 该部分是 Mac App Store 安装的 app
mas "ting_en", id: 734383760
mas "Xcode", id: 497799835
```
怎么安装这份配置文件?

```bash
# 安装 Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 安装 mas
brew install mas

# 批量安装软件
brew bundle --file="~/Desktop/Brewfile"
```
