lycheng's vim config
---

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

更多的文档可见上方的链接。

个人常用于 Python, Golang 的开发

快捷键
---

### 编辑

* `9 + {w, b, e}` -> 快速移动
* `<leader> + c + space` -> 代码注释
* `F9` -> 切换 复制 / 普通模式


### IDE Feature

* `Alt` + `1~9` -> 多个 buffers 的跳转
* `Ctrl` + `h/j/k/l` -> 多个 window 间的跳转
* `F5` -> 打开目录树
* `F6` -> 打开 tarbar
* `Ctrl` + `p` -> 打开 ctrlp
* `<leader> + a` -> 使用 ag 进行在当前目录下进行查找关键字
* `:vs` -> 垂直分隔再打开当前的文件, 可用 ctrlp 进行切换文件

安装
---

### 插件管理

```bash

# 管理 vim 插件的插件
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 安装插件
vim +PluginInstall +qall
```


### 安装 YCM

代码补全用的是 [YCM](https://github.com/Valloric/YouCompleteMe)

```bash
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
```

主题
---

使用 [vim-colorschemes](https://github.com/flazz/vim-colorschemes) 的插件，集成了各种主题

```
syntax on
colorscheme wombat256
```

在 [这里](https://github.com/flazz/vim-colorschemes/tree/master/colors) 选择一个自己想要的即可。
