<!-- 项目 LOGO -->
<br />
<div align="center">
  <a href="https://github.com/hemingtsai/zrynvim">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Zry Nvim</h3>

  <p align="center">
    简洁（简陋），现代，轻量化的Neovim配置
    <br />
    <a href="#安装">安装</a>
    ·
    <a href="https://github.com/hemingtsai/zrynvim/issues">反馈 Bug</a>
    ·
    <a href="https://github.com/hemingtsai/zrynvim/issues">请求新功能</a>
  </p>
</div>

# 简介

这是一个简单的neovim配置，主要分为四个部分：
    
- `core`：最核心的部分主要是Neovim本身的配置和Lazy.nvim的配置（插件管理）
- `prog`：写码时用的插件与配置，包括nvim-cmp，lsp等
- `tools`：其他常用的工具，比如which-key，telescope等
- `ui`：美化配置，包括dashboard，nvimtree等

我在当前版本下采用的主要插件如下：

|插件管理器|LSP管理器|补全插件|文件搜索|
|----------|---------|--------|--------|
|Lazy.nvim|Mason.nvim|nvim-cmp|Telescope|

这个项目永远针对Arch Linux软件源里最新版的neovim进行开发，***不建议***任何旧版本neovim使用！

# 安装

我个人推荐将这个配置与Neovide和Zed Mono Nerd Font字体搭配食用。

## 前置依赖

这份配置文件需要你拥有通过SSH访问Github的方式，如果你目前还没有，请利用github-cli或者手动配置。

如果你有，请你使用你使用Linux发行版的包管理器或者直接编译安装下列软件。

> 注：我个人不对GNU/Linux之外的任何操作系统提供正常运行的保障，包括MacOS和Android/Linux以及Windows。

> 又注：如果你在GNU/Linux发行版上安装这份配置文件的时候遇到了问题，请先试着自己排查（参见<a href="#FAQ">FAQ</a>），如果确认是这份配置文件的缺陷所致，请提出issue。

必须的：

```text
neovim git openssh nerd-fonts fzf ripgrep
```

推荐的：
```text
neovide kitty
```

还需要一些比较***难以获取***的东西：

- 一个健全的大脑
- 视力正常的眼睛（戴上眼镜视力正常即可）
- 稍高于平均线的道德水平
- 理解中文的能力
- 阅读文档的能力

如果以上任何一条，你认为你达不到，那么恭喜你，你是个好人，让我们接着往下看。

如果以上所有条目，你***十分自信***的认为你完全可以达到，那我个人***强烈建议***你再读一遍上面的所有条目，然后再往下看。

## 安装

处理完上面所有之后，首先，让我们克隆这个仓库到config文件夹下：

```sh 
git clone git@github.com:hemingtsai/nvim ~/.config/nvim
```

理论上，接下来你再执行`nvim`命令就可以自动获取所有插件并且安装LSP了。


# FAQ
#### 1.为什么提示我没有权限访问该仓库？

检查git的ssh配置。

#### 2.有的LSP在Mason里下载失败怎么办？

挂梯子。

#### 3.我用的发行版的软件源里缺少一些软件包怎么办？

编译安装，或者用Appimage。

#### 4.有些我需要的功能没有怎么办

如果你能自己实现的话，实现它，然后最好提个PR合并到项目里。

如果你不能实现，去提issue。

#### 5.为什么 Windows / MacOS / Android 上 xx 功能无法使用？

我不对除了GNU/Linux发行版以外的所有操作系统做出该配置文件可以正常运行的保证，同样的，我也不会回答在仅这些系统上发现的问题。


# 贡献

如果你有意向本项目做出贡献，那么请你读完下面的内容。

首先，这个项目现在还是我的个人项目，我可能没有太多精力放在这上面，请多包涵。

然后，如果你已经写完开始提PR了，那么你的PR里需要包含以下内容：

如果是bug修复：
- 对bug的描述以及测试修改前bug能否复现
- 修改后bug能否复现
- 对修改范围做出大概的描述

如果是新功能：
- 对功能的描述
- 修改后是否有关于这个功能的bug产生
- 对修改范围做出大概的描述

