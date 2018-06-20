lycheng's vim config
===

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

更多的文档可见上方的链接。

个人常用于 Python, Golang 的开发，适用于 vim 8.0 以上的版本

快捷键
---

### 基本功能

* `s` -> 输入 2 个字母进行快速跳转
* `F9` -> 切换 复制 / 普通模式
* `Ctrl` + `c` -> 选中相应的行之后复制到系统黏贴板，需要 xclip 支持

### IDE Feature

F 区

* `F3` -> Python PEP8 格式化
* `F4` -> 切换缩进显示
* `F5` -> 打开目录树
* `F6` -> 打开 tarbar
* `F9` -> pastetoggle

`<leader>` 键为默认的 `\\`

* `:vs` -> 垂直分隔再打开当前的文件, 可用 `Ctrl + p` 进行切换文件
* `Ctrl` + `h/j/k/l` -> 多个 window 间的跳转
* `<leader> + a` -> 使用 [ack](https://beyondgrep.com/install/) 进行在当前目录下进行查找关键字
* `<leader> + g` -> 跳转到当前符号的定义或声明，YCM [GoTo](https://github.com/Valloric/YouCompleteMe#the-goto-subcommand)
* `<leader> + G` -> 跳转到当前文件的 github / bitbucket / ... 链接，如果选了某行则调到那一行
* `<leader> + f` -> 列出当前符号的引用（只适用于 js, py, ts），YCM [GoToReferences](https://github.com/Valloric/YouCompleteMe#the-gotoreferences-subcommand)
* `{Visual}gc` -> 注释当前选中的代码

LeaderF 配置

* `Ctrl` + `p` -> 打开 [LeaderF](https://github.com/Yggdroot/LeaderF) preview the result
* `<leader> + b` OR `ff` -> 列出当前打开的文件列表
* `<leader> + t` -> 列出当前文件的 symbol 列表
* `<leader> + T` -> 列出当前打开的所有文件的 symbol 列表

安装
---

### 插件管理

```bash
# 管理 vim 插件的插件
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 安装插件
vim +PluginInstall +qall

# vim 下面
# 更新插件
:PluginUpdate

# 安装插件
:PluginInstall
```


### YCM 编译安装

代码补全用的是 [YCM](https://github.com/Valloric/YouCompleteMe)

```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
```

主题
---

使用 [gruvbox](https://github.com/morhetz/gruvbox)

```
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_improved_warnings=1
colorscheme gruvbox
```

其它
---

### 语法检查

使用 [ale](https://github.com/w0rp/ale) 替换 [syntastic](https://github.com/vim-syntastic/syntastic)

#### Python

ale 中使用 flake8 进行检查，如果是虚拟环境下的则需要安装一个 flake8 才行，否则 Python2 / Python3 的版本会有问题

```
pip install flake8
```
