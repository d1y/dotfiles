# choco
windows的包管理: https://chocolatey.org/

### 安装
- 在`cmd`环境下(可以新建成一个文件)
```bash
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```
- 在`powershell`
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### 上手
如果你用过`apt-get` | `pacman` 之类的,你就很容易上手,切记使用管理员权限打开

```bash
  # install
  choco install vim
  # uninstall
  choco uninstall vim
  # upgrade
  choco upgrade vim
  # search
  choco search vim
```
我的必装
```bash
  choco install wget curl github git nodejs python atom vim google-chrome mpv cmder
```


### 可能会出现的问题
- 无法安装

使用管理员权限来使用以上脚本: `win`+`x`+ `a` , 或者新建一个`.bat`文件使用管理员权限打开

- 无法使用

无法使用可能只有两种情况,你没有在管理员权限打开,第二种你需要代理(你懂的),关于代理可见[shadowsocks](shadowsocks.md)
