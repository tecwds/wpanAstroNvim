# wpan's astroNvim 配置

**NOTE:** 需要 `AstroNvim` 的版本 `v4+`

可以从 [AstroNvim](https://github.com/AstroNvim/AstroNvim) 中查看官方模板

## 🛠️ 安装 

#### 备份原有配置文件

一般来说， `nvim` 的配置文件存放在用户目录下的 `~/.config/nvim`。我的配置文件主要在此进行修改。

当然，也可以跟着下面官方的指令进行备份。

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### 从官方模板中创建一份自己的配置文件

> **Tips:** 貌似还在更新，会导致模板变动较大，大版本更新时候需要注意查看官方模板文件

我的建议是从官方的模板创建自己的配置文件（从上面的文档链接中查看）。

#### 克隆仓库

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### 可以启动 nvim 了

```shell
nvim
```

## 配置

### 依赖

有些插件需要使用 `python3-venv`，建议安装上。这里列举了 `Debian` 下的安装，理论上使用 `apt` 包管理的都可以使用下述指令进行安装。其他系统可以百度或者 AI。

`python3-venv`

```shell
# Debain/Deepin
sudo apt install python3-venv
```
