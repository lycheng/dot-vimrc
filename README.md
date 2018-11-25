lycheng's vim config
===

forked from [Maple's Vim config](https://github.com/humiaozuzu/dot-vimrc)

更多的文档可见上方的链接。

个人常用于 Python, Golang 的开发，适用于 vim 8.0 以上的版本

快捷键
---

### 基本功能

* `F9` -> 切换 复制 / 普通模式
* `Ctrl` + `c` -> 选中相应的行之后复制到系统黏贴板，需要 xclip 支持

### IDE Feature

F 区

* `F4` -> 列出 vim 修改记录 [mundo](https://simnalamburt.github.io/vim-mundo/)
* `F5` -> 打开目录树
* `F6` -> 打开 tarbar
* `F8` -> Python PEP8 格式化，需要安装 [yapf](https://github.com/google/yapf)
* `F9` -> pastetoggle

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
* `<leader> + b` OR `Ctrl + E` -> 列出当前打开的文件列表
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

[mundo](https://github.com/simnalamburt/vim-mundo) 按 `F5` 查看改动记录时

* p -> 查看与当前的差异
* enter -> 返回那个版本

---

[vim-mark](https://github.com/inkarkat/vim-mark) 用于标记（多个）单词，高亮

* `<leader> + m` -> 标记当前光标选中的单词
* `<leader> + n` -> 取消标记当前光标选中的单词
* `<leader> + *` -> 跳到下一个当前的标记
* `<leader> + /` -> 跳到下一个标记
* `*` -> 如果光标处于标记了的单词上，则跳到下一个标记
* `<leader> + M` -> toggle 光标高亮
* `<leader> + N` -> 取消光标高亮

插件管理
---

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


YCM 编译安装
---

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
