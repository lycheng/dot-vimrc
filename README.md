lycheng's vim config
===

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

更多的文档可见上方的链接。

个人常用于 Python, Golang 的开发，适用于 neovim（或者 Vim 8.0+）

Usage
---

### Vim Basic

NORMAL 模式下

* `Ctrl + E` -> 保持光标不动，窗口向下移动一行
* `Ctrl + Y` -> 保持光标不动，窗口向上移动一行
* `Ctrl + F` -> 下一页
* `Ctrl + B` -> 上一页
* `Ctrl + U` -> 上移半屏
* `Ctrl + D` -> 下移半屏

### Features

* `Ctrl` + `c` -> 选中相应的行之后复制到系统黏贴板，需要 xclip 支持

F 区

* `F5` -> 打开目录树
* `F6` -> 打开 tarbar
* `F9` -> pastetoggle（在 nvim 中似乎默认的即可，不需要使用 PASTE 模式）

`<leader>` 键为默认的 \

* `:vs` -> 垂直分隔再打开当前的文件, 可用 `Ctrl + p` 进行切换文件
* `Ctrl` + `h/j/k/l` -> 多个 window 间的跳转
* `<leader> + a` -> 使用 [FlyGrep](https://github.com/wsdjeg/FlyGrep.vim) 进行在当前目录下进行查找关键字
* `<leader> + g` -> 跳转到当前符号的定义或声明，YCM [GoTo](https://github.com/Valloric/YouCompleteMe#the-goto-subcommand)
* `<leader> + G` -> 跳转到当前文件的 github / bitbucket / ... 链接，如果选了某行则调到那一行
* `<leader> + f` -> 列出当前符号的引用（只适用于 js, py, ts），YCM [GoToReferences](https://github.com/Valloric/YouCompleteMe#the-gotoreferences-subcommand)
* `{Visual}gc` -> 注释当前选中的代码
* `gcc` -> 注释当前行

---

[LeaderF](https://github.com/Yggdroot/LeaderF) 配置

* `Ctrl` + `p` -> 当前目录下的文件搜索
* `ff` -> 列出当前打开的文件列表
* `<leader> + t` -> 列出当前文件的 symbol 列表
* `<leader> + T` -> 列出当前打开的所有文件的 symbol 列表

---

[vim-surround](https://github.com/tpope/vim-surround) 配置，该插件用于修改，删除 surroundings （括号，方括号，引号等）

NORMAL 模式下

* cs(src-symbol)(dst-symbol) -> 更新符号
* cst(dst-symbol) -> 从 xml / html 的 tag 换成其它的 surrounding
* ds(src-symbol) -> 删除 surroundings
* ysiw(symbol) -> 当前单词使用添加 surrounding

上述的 iw 为 [text object](https://zhuanlan.zhihu.com/p/39261818)，更多用法可自行替换。

---

[gv.vim](https://github.com/junegunn/gv.vim) 用于查看 git 日志

* :GV -> 查看 commit list
* :GV! -> 当前文件的修改的 commit list

再按 o 则看到指定 commit 的 diff

---

[vim-mark](https://github.com/inkarkat/vim-mark) 用于标记（多个）单词，高亮

* `<leader> + m` -> 标记当前光标选中的单词
* `<leader> + n` -> 取消标记当前光标选中的单词
* `<leader> + *` -> 跳到下一个当前的标记
* `<leader> + /` -> 跳到下一个标记
* `*` -> 如果光标处于标记了的单词上，则跳到下一个标记
* `<leader> + M` -> toggle 光标高亮
* `<leader> + N` -> 取消光标高亮

---

[vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

* `<leader> + tm` -> toggle vim table mode

Install
---

```bash
# ubuntu 下 neovim 安装
sudo apt install neovim
sudo apt install python-neovim
sudo apt install python3-neovim
pip install --user --upgrade pynvim
pip install --user --upgrade neovim

git clone git://github.com/lycheng/dot-vimrc.git ~/.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim .config/nvim
ln -s ~/.vimrc .config/nvim/init.vim
```

Plugins Management
---

在 vim 中执行相应的命令

```
# 安装插件
:PlugInstall

# 更新插件
:PlugUpdate
```

也可以使用 make 命令来管理

```
# 更新插件，编译 YCM，安装依赖，更新 pip 的 neovim 的依赖
make update
```

Theme
---

使用 [gruvbox](https://github.com/morhetz/gruvbox)

```
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_improved_warnings=1
colorscheme gruvbox
```

Others
---

### Syntax Check

使用 [ale](https://github.com/w0rp/ale) 替换 [syntastic](https://github.com/vim-syntastic/syntastic)

#### Python

ale 中使用 flake8 进行检查，如果是虚拟环境下的则需要安装一个 flake8 才行，否则 Python2 / Python3 的版本会有问题

```
pip install flake8
```

CHANGELOG
---

 - 2019-01-16: 原有的支持旧的 vim 的配置使用 for-classics-vim 分支来保存，master 分支只支持 neovim
 - 2019-01-14: 添加 vim-table-mode && 移除 Yapf
 - 2019-01-10: 删除 mundo
 - 2019-01-09: 使用 neovim 替代 vim
