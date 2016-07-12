lycheng's vim config
---

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

修改了不少快捷键，更新了一些适合自己使用的东西，更多的文档可见上方的链接

## 快捷键

### 编辑

* `9 + {w, b, e}` -> 快速移动
* `<leader> + c + space` -> 代码注释


### IDE Feature

* `Alt` + `1~9` -> 多个 buffers 的跳转
* `Ctrl` + `h/j/k/l` -> 多个 windows 间的跳转
* `F5` -> 打开目录树
* `F6` -> 打开 tarbar
* `Ctrl` + `p` -> 打开 ctrlp
* `<leader> + a` -> 使用 ag 进行在当前目录下进行查找关键字
* `:vs` -> 垂直分隔再打开当前的文件, 可用 ctrlp 进行切换文件

## 安装

代码补全用的是 [YCM](https://github.com/Valloric/YouCompleteMe)

```bash
cd ~/.vim/bundle/YouCompleteMe
sudo ./install.py --clang-completer
```

还有很多很多没写。。。


## 主题

目前使用的主题

1. [dracula](https://github.com/dracula/vim)
2. [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)


配置

```
# for dracula
syntax on
color dracula

# for tomorrow
colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night-Blue
" colorscheme Tomorrow-Bright
" colorscheme Tomorrow-Night
" colorscheme Tomorrow
```
