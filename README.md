lycheng's vim config
---

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

更多的文档可见上方的链接。

个人常用于 Python, Golang 的开发

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

* `:vs` -> 垂直分隔再打开当前的文件, 可用 ctrlp 进行切换文件
* `Alt` + `1~9` -> 多个 buffers 的跳转
* `Ctrl` + `p` -> 打开 [LeaderF](https://github.com/Yggdroot/LeaderF)
* `Ctrl` + `h/j/k/l` -> 多个 window 间的跳转
* `<leader> + a` -> 使用 [Ag](https://github.com/ggreer/the_silver_searcher) 进行在当前目录下进行查找关键字
* `<leader> + g` -> 跳转到当前符号的定义或声明，YCM [GoTo](https://github.com/Valloric/YouCompleteMe#the-goto-subcommand)
* `<leader> + f` -> 列出当前符号的引用（只适用于 js, py, ts），YCM [GoToReferences](https://github.com/Valloric/YouCompleteMe#the-gotoreferences-subcommand)
* `<leader> + c + space` -> 注释当前选中的代码

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

使用 [vim-colorschemes](https://github.com/flazz/vim-colorschemes) 的插件，集成了各种主题

```
syntax on
colorscheme wombat256
```

在 [这里](https://github.com/flazz/vim-colorschemes/tree/master/colors) 选择一个自己想要的即可。

备注
---

### 关于 Python 语法检查

syntastic 中使用的 flake8 进行语法检查，使用的是不加路径的 python。

```
let g:syntastic_python_flake8_exec = 'python'
```

这是目前能想到的比较好解决 Python2/3 的问题的方法，如果实在 virtualenv 中有使用，则需要在当前的虚拟环境安装一个 flake8

```
pip install flake8
```
